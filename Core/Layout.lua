local _, TFG = ...
local frame = TFG.frame
local UI    = TFG.UI

-- Get player attributes
local playerFaction = UnitFactionGroup("player")
local playerRace = UnitRace("player")
local playerClass = select(2, UnitClass("player"))
local playerLevel = UnitLevel("player")

local function normalizeSkillKey(name)
    if not name then return "" end
    return string.gsub(tostring(name):upper(), " ", "_")
end

-- Store both current and inferred max cap for skills/professions.
-- Classic Era PTR appears to return 0 for the "max" fields from GetSkillLineInfo,
-- so we infer a reasonable cap from the current rank and expected tier table.
local skillLevels = {}
local skillCaps = {}

-- Forward-declare riding helpers so functions defined below reference locals, not globals.
local getRidingLevel, getRidingMaxCap, getRidingName

-- Debug logging: send everything to chat.
-- Toggle at runtime with: /run TFG.debugChat=true (or false)
if TFG.debugChat == nil then TFG.debugChat = false end

local function TFG_DebugLog(...)
    if not TFG.debugChat then return end
    local msg = "|cffffaa00TFG|r: "
    for i = 1, select('#', ...) do
        local v = select(i, ...)
        if v == nil then
            msg = msg .. "nil"
        else
            msg = msg .. tostring(v)
        end
        if i < select('#', ...) then msg = msg .. " " end
    end
    if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
        _G.DEFAULT_CHAT_FRAME:AddMessage(msg)
    elseif type(print) == "function" then
        print(msg)
    end
end

-- Global helper to toggle debug chat output from the WoW chat window.
-- Use in-game as:
--   /run TFGDebug(true)  -- enable
--   /run TFGDebug(false) -- disable
-- If called with no arg, it toggles on.
if _G and type(_G.TFGDebug) ~= "function" then
    _G.TFGDebug = function(v)
        local on = true
        if v ~= nil then on = not not v end
        if TFG then
            TFG.debugChat = on
            if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
                _G.DEFAULT_CHAT_FRAME:AddMessage("|cffffaa00TFG|r: debugChat set to " .. tostring(on))
            else
                print("TFG: debugChat set to " .. tostring(on))
            end
        else
            if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
                _G.DEFAULT_CHAT_FRAME:AddMessage("|cffffaa00TFG|r: internal TFG table not available yet")
            else
                print("TFG: internal TFG table not available yet")
            end
        end
    end
end

local function inferProfessionCapFromRank(rank)
    rank = tonumber(rank) or 0
    if rank <= 0 then return 0 end
    -- Vanilla-era cap
    if TFG.selectedExpansion and TFG.selectedExpansion:upper() == "VANILLA" then
        if rank <= 75 then return 75 end
        if rank <= 150 then return 150 end
        if rank <= 225 then return 225 end
        return 300
    end
    -- TBC-era cap (also safe for later expansions until we add explicit data)
    if rank <= 75 then return 75 end
    if rank <= 150 then return 150 end
    if rank <= 225 then return 225 end
    if rank <= 300 then return 300 end
    return 375
end

for i=1,GetNumSkillLines(),1 do
    local skillName = select(1, GetSkillLineInfo(i))
    local isHeader  = select(2, GetSkillLineInfo(i))
    local skillRank = select(4, GetSkillLineInfo(i))
    -- Return ordering differs by client; on Classic Era PTR, the cap appears to be select(7)
    -- (based on /run prints like: name rank <r> a 0 b 0 c <cap> ...).
    local maybeCap = select(7, GetSkillLineInfo(i))

    if not isHeader and skillName then
        local key = normalizeSkillKey(skillName)
        local rank = tonumber(skillRank or 0) or 0
        skillLevels[key] = rank

        local maxRank = tonumber(maybeCap or 0) or 0
        if maxRank <= 0 then
            maxRank = inferProfessionCapFromRank(rank)
        end
        skillCaps[key] = maxRank
    end
end


-- ========================================================================== 
-- Messages to the user
-- ==========================================================================
-- ========================================================================== 
-- Scroll frame (no background)
-- ==========================================================================
local scrollBG = CreateFrame("Frame", nil, frame, "BackdropTemplate")
frame.scrollBG = scrollBG

scrollBG:SetPoint("TOPLEFT", 16, -UI.TITLEBAR_HEIGHT - 40)
scrollBG:SetPoint("BOTTOMRIGHT", -39, 16)

local scrollFrame = CreateFrame("ScrollFrame", nil, scrollBG, "UIPanelScrollFrameTemplate")
scrollFrame:SetAllPoints()

local content = CreateFrame("Frame", nil, scrollFrame)
content:SetSize(1,1)
scrollFrame:SetScrollChild(content)

local message1 = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
message1:SetFont(message1:GetFont(), 24, "OUTLINE")
message1:SetPoint("CENTER", scrollBG, "CENTER", 0, 20)
--message1:SetText("We don't have this view for this expansion")
message1:SetShown(false)
local message2 = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
message2:SetFont(message2:GetFont(), 24, "OUTLINE")
message2:SetPoint("CENTER", scrollBG, "CENTER", 0, -20)
--message2:SetText("Please select a different view")
message2:SetShown(false)

-- ========================================================================== 
-- Class selection dropdown
-- ==========================================================================
local classDropdown = CreateFrame("Frame", "TFG_ClassDropdown", scrollBG, "UIDropDownMenuTemplate")
UIDropDownMenu_SetWidth(classDropdown, 120)
classDropdown:SetPoint("TOPRIGHT", scrollBG, "TOPRIGHT", 35, 35)

-- ========================================================================== 
-- Profession category dropdown (only shown for professions)
-- ==========================================================================
local categoryDropdown = CreateFrame("Frame", "TFG_CategoryDropdown", scrollBG, "UIDropDownMenuTemplate")
UIDropDownMenu_SetWidth(categoryDropdown, 140)
-- Keep category dropdown immediately to the left of the class dropdown.
categoryDropdown:SetPoint("TOPRIGHT", classDropdown, "TOPLEFT", 0, 0)

TFG.selectedCategory = TFG.selectedCategory or "ALL"

-- Safe close helper (avoids calling a local function before it's defined).
local function safeCloseProfessionPopup()
    if TFG.professionPopup and TFG.professionPopup.IsShown and TFG.professionPopup:IsShown() then
        TFG.professionPopup:Hide()
    end
end

local function isProfessionView()
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return false end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return false end

    local selected = (TFG.selectedFile or ""):lower()
    local parentKey = string.match(selected, "^(.+)::%d+$")
    if parentKey then selected = parentKey end

    for _, child in ipairs(professions.children) do
        if child.file == TFG.activeDatabase then
            return true
        end
    end

    -- Fallback: if the selected key itself is "professions".
    if selected == "professions" then return true end

    -- Special-case: Riding is modelled as a non-profession 'skill' dataset
    -- but should behave like a profession view for filtering/labeling.
    if TFG and TFG.RIDING_TBC and TFG.activeDatabase == TFG.RIDING_TBC then
        return true
    end

    return false
end

local function extractCategoriesFromDatabase(database)
    local set = {}
    for _, spells in pairs(database or {}) do
        for _, spell in ipairs(spells) do
            if spell.category and spell.category ~= "" then
                set[spell.category] = true
            end
        end
    end

    -- Special option: if there's a [999] group, expose it as "Discoveries".
    local hasDiscoveries = (database and database[999] ~= nil)

    local list = { "ALL" }
    if hasDiscoveries then
        table.insert(list, "DISCOVERIES")
    end
    for c in pairs(set) do
        table.insert(list, c)
    end
    table.sort(list, function(a, b)
        if a == "ALL" then return true end
        if b == "ALL" then return false end
        -- Normal alphabetical sort for everything else (including DISCOVERIES).
        local aa = (a == "DISCOVERIES") and "Discoveries" or a
        local bb = (b == "DISCOVERIES") and "Discoveries" or b
        return aa < bb
    end)
    return list
end

local function populateCategoryDropdown()
    if not isProfessionView() then
        categoryDropdown:SetShown(false)
        return
    end

    categoryDropdown:SetShown(true)
    local categories = extractCategoriesFromDatabase(TFG.activeDatabase)

    local function OnClickCategory(self)
        TFG.selectedCategory = self.value
        UIDropDownMenu_SetSelectedValue(categoryDropdown, self.value)
        UIDropDownMenu_SetText(categoryDropdown, self.value == "ALL" and "All Categories" or self.value)
        safeCloseProfessionPopup()
        frame:Relayout()
    end

    UIDropDownMenu_Initialize(categoryDropdown, function()
        for _, c in ipairs(categories) do
            local info = UIDropDownMenu_CreateInfo()
            if c == "ALL" then
                info.text = "All Categories"
            elseif c == "DISCOVERIES" then
                info.text = "Discoveries"
            else
                info.text = c
            end
            info.value = c
            info.func = OnClickCategory
            UIDropDownMenu_AddButton(info)
        end
    end)

    if TFG.selectedCategory == nil then TFG.selectedCategory = "ALL" end
    local found = false
    for _, c in ipairs(categories) do
        if c == TFG.selectedCategory then found = true end
    end
    if not found then TFG.selectedCategory = "ALL" end

    UIDropDownMenu_SetSelectedValue(categoryDropdown, TFG.selectedCategory)
    if TFG.selectedCategory == "ALL" then
        UIDropDownMenu_SetText(categoryDropdown, "All Categories")
    elseif TFG.selectedCategory == "DISCOVERIES" then
        UIDropDownMenu_SetText(categoryDropdown, "Discoveries")
    else
        UIDropDownMenu_SetText(categoryDropdown, TFG.selectedCategory)
    end
end

local function updateClassDropdownTextFromSelection()
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return end

    local classesMap = expansionObject.files.classes or {}
    local skillsMap = expansionObject.files.skills or {}

    local selected = (TFG.selectedFile or ""):lower()
    local parentKey, childIndex = string.match(selected, "^(.+)::(%d+)$")
    if parentKey and childIndex then
        local parent = classesMap[parentKey] or skillsMap[parentKey]
        local idx = tonumber(childIndex)
        local child = parent and parent.children and parent.children[idx]
        if parent and child then
            -- Show something like "Alchemy" or "Professions » Alchemy".
            -- Keep it simple and display just the child name unless desired otherwise.
            UIDropDownMenu_SetText(classDropdown, child.name or "")
            return
        end
    end

    local parent = classesMap[selected] or skillsMap[selected]
    if parent and parent.name then
        if classesMap[selected] and parent.color then
            UIDropDownMenu_SetText(classDropdown, parent.color .. parent.name .. "|r")
        else
            UIDropDownMenu_SetText(classDropdown, parent.name)
        end
        return
    end

    -- Fallback
    UIDropDownMenu_SetText(classDropdown, TFG.selectedFile or "")
end

local function getProfessionLevelForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    -- (debug prints removed)
    if TFG and TFG.RIDING_TBC and TFG.activeDatabase == TFG.RIDING_TBC then
        if type(getRidingLevel) == "function" then
            return getRidingLevel()
        elseif _G and type(_G.getRidingLevel) == "function" then
            return _G.getRidingLevel()
        else
            if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
                _G.DEFAULT_CHAT_FRAME:AddMessage("|cffffaa00TFG|r: warning: getRidingLevel not available")
            else
                print("TFG: warning: getRidingLevel not available")
            end
            return 0
        end
    end
    -- Determine the profession name from the selected dropdown text.
    -- For professions we set selectedFile to "parent::childIndex"; use dropdown to map it back.
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return 0 end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return 0 end

    local selected = (TFG.selectedFile or ""):lower()
    local parentKey, childIndex = string.match(selected, "^(.+)::(%d+)$")
    if not parentKey or parentKey ~= "professions" then return 0 end

    local idx = tonumber(childIndex)
    local child = professions.children[idx]
    if not child or not child.name then return 0 end
    local profName = child.name

    -- Use existing skillLevels map (built from GetSkillLineInfo).
    local key = normalizeSkillKey(profName)
    return tonumber(skillLevels[key] or 0) or 0
end

-- Forward-declare riding helpers so earlier functions reference locals, not globals.
local getRidingLevel, getRidingMaxCap, getRidingName

-- Support treating Riding (a skills dataset) as a profession-like view.
local function getProfessionMaxCapForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    if TFG and TFG.RIDING_TBC and TFG.activeDatabase == TFG.RIDING_TBC then
        if type(getRidingMaxCap) == "function" then
            return getRidingMaxCap()
        elseif _G and type(_G.getRidingMaxCap) == "function" then
            return _G.getRidingMaxCap()
        else
            if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
                _G.DEFAULT_CHAT_FRAME:AddMessage("|cffffaa00TFG|r: warning: getRidingMaxCap not available")
            else
                print("TFG: warning: getRidingMaxCap not available")
            end
            return 0
        end
    end
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return 0 end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return 0 end

    local selected = (TFG.selectedFile or ""):lower()
    local parentKey, childIndex = string.match(selected, "^(.+)::(%d+)$")
    if not parentKey or parentKey ~= "professions" then return 0 end

    local idx = tonumber(childIndex)
    local child = professions.children[idx]
    if not child or not child.name then return 0 end
    local profName = child.name

    local key = normalizeSkillKey(profName)
    return tonumber(skillCaps[key] or 0) or 0
end

getRidingMaxCap = function()
    local key = normalizeSkillKey("Riding")
    return tonumber(skillCaps[key] or 0) or 0
end

getRidingLevel = function()
    local key = normalizeSkillKey("Riding")
    return tonumber(skillLevels[key] or 0) or 0
end

getRidingName = function()
    return "Riding"
end

-- Expose globals for any legacy callers (defensive - safe aliasing).
_G.getRidingLevel = getRidingLevel
_G.getRidingMaxCap = getRidingMaxCap
_G.getRidingName = getRidingName

local function getProfessionNameForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    if TFG and TFG.RIDING_TBC and TFG.activeDatabase == TFG.RIDING_TBC then
        if type(getRidingName) == "function" then
            return getRidingName()
        elseif _G and type(_G.getRidingName) == "function" then
            return _G.getRidingName()
        else
            if _G and type(_G.DEFAULT_CHAT_FRAME) == "table" and type(_G.DEFAULT_CHAT_FRAME.AddMessage) == "function" then
                _G.DEFAULT_CHAT_FRAME:AddMessage("|cffffaa00TFG|r: warning: getRidingName not available")
            else
                print("TFG: warning: getRidingName not available")
            end
            return "Riding"
        end
    end
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return nil end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return nil end

    local selected = (TFG.selectedFile or ""):lower()
    local parentKey, childIndex = string.match(selected, "^(.+)::(%d+)$")
    if not parentKey or parentKey ~= "professions" then return nil end

    local idx = tonumber(childIndex)
    local child = professions.children[idx]
    if not child or not child.name then return nil end
    return tostring(child.name)
end

local function getRidingName()
    return "Riding"
end

-- Check whether the player has a named skill/profession in their skill list.
local function playerHasSkill(skillName)
    if not skillName or tostring(skillName) == "" then return false end
    local target = tostring(skillName):lower()
    for i = 1, GetNumSkillLines() do
        local name = select(1, GetSkillLineInfo(i))
        if name and tostring(name):lower() == target then
            return true
        end
    end
    return false
end

-- ========================================================================== 
-- Profession skill popup (product / recipe / materials)
-- ==========================================================================

local function createQuantityOverlay(parent)
    local fs = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    fs:SetFont(fs:GetFont(), 12, "OUTLINE")
    fs:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", -2, 2)
    fs:SetJustifyH("RIGHT")
    fs:SetTextColor(1, 1, 1, 1)
    fs:SetText("")
    return fs
end

local function ensureProfessionPopup()
    if TFG.professionPopup and TFG.professionPopup.SetAnchor then
        return TFG.professionPopup
    end

    local popup = CreateFrame("Frame", "TFG_ProfessionPopup", frame.scrollBG or scrollBG, "BackdropTemplate")
    popup:SetFrameStrata("FULLSCREEN_DIALOG")
    -- Ensure the popup appears above the scroll content (icons/labels).
    popup:SetFrameLevel((frame:GetFrameLevel() or 1) + 200)
    popup:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = true,
        tileSize = 16,
        edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    popup:SetBackdropColor(0, 0, 0, 0.9)
    popup:SetClampedToScreen(true)
    popup:EnableMouse(true)
    popup:Hide()

    popup.icons = {}

    function popup:ClearIcons()
        for _, btn in ipairs(self.icons) do
            btn:Hide()
            btn:ClearAllPoints()
        end
        self.icons = {}
    end

    local function addIconButton(self, texture, itemId, quantity, spellData, showSourceLocation)
        local btn = CreateFrame("Button", nil, self)
        btn:SetSize(32, 32)

        local tex = btn:CreateTexture(nil, "ARTWORK")
        tex:SetAllPoints()
        tex:SetTexture(texture)
        btn.tex = tex

        btn.qtyText = createQuantityOverlay(btn)
        if quantity and tonumber(quantity) and tonumber(quantity) > 1 then
            btn.qtyText:SetText(tostring(quantity))
            btn.qtyText:Show()
        else
            btn.qtyText:SetText("")
            btn.qtyText:Hide()
        end

        if itemId and tonumber(itemId) and tonumber(itemId) > 0 then
            btn.itemId = tonumber(itemId)
            btn._spellData = spellData

            btn:SetScript("OnEnter", function()
                GameTooltip:SetOwner(btn, "ANCHOR_RIGHT")
                GameTooltip:SetItemByID(btn.itemId)

                if showSourceLocation then
                    local loc = btn._spellData
                        and btn._spellData.source
                        and btn._spellData.source.location

                    if loc and tostring(loc) ~= "" then
                        GameTooltip:AddLine(" ")
                        GameTooltip:AddLine("Location: " .. tostring(loc), 0.75, 0.75, 0.75, true)
                    end
                end

                GameTooltip:Show()
            end)
            btn:SetScript("OnLeave", GameTooltip_Hide)

            -- Allow shift-click to insert item links (chat edit box / AH search, etc.).
            btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
            btn:SetScript("OnClick", function(self, button)
                if not self.itemId then return end
                local link = select(2, GetItemInfo(self.itemId))
                if not link then return end

                if HandleModifiedItemClick then
                    -- This covers chat insertion and other UI targets that accept item links.
                    HandleModifiedItemClick(link)
                elseif ChatEdit_InsertLink then
                    ChatEdit_InsertLink(link)
                end
            end)
        end

        table.insert(self.icons, btn)
        return btn
    end

    function popup:SetAnchor(anchorFrame)
        self:ClearAllPoints()
            -- 10px closer than before.
            self:SetPoint("TOP", anchorFrame, "BOTTOM", 0, 4)
    end

    function popup:ShowForSpell(anchorFrame, spellData)
        self:ClearIcons()

        -- Toggle behavior: clicking the same icon twice closes it.
        if self:IsShown() and self._anchor == anchorFrame and self._spellData == spellData then
            self:Hide()
            self._anchor = nil
            self._spellData = nil
            return
        end

        local hasRecipeItem = (spellData
            and spellData.source
            and spellData.source.type == "Item"
            and spellData.source.itemId
            and tonumber(spellData.source.itemId)
            and tonumber(spellData.source.itemId) > 0)

        local hasProduct = (spellData
            and spellData.product
            and spellData.product.itemId
            and tonumber(spellData.product.itemId)
            and tonumber(spellData.product.itemId) > 0)

        local hasMaterials = (spellData
            and spellData.materials
            and type(spellData.materials) == "table"
            and #spellData.materials > 0)

        if not (hasRecipeItem or hasProduct or hasMaterials) then
            self:Hide()
            self._anchor = nil
            self._spellData = nil
            return
        end

        self._anchor = anchorFrame
        self._spellData = spellData
        self:SetAnchor(anchorFrame)

        local xPad = 8
        local yPad = -8
        local iconSize = 32
        local spacing = 6

        local x = xPad
        local y = yPad
        local row1Count = 0

        -- Row 1: product (if any), recipe scroll (if source is Item)
        if hasProduct then
            local itemId = tonumber(spellData.product.itemId)
            local qty = tonumber(spellData.product.quantity or 1) or 1
            local tex = select(10, GetItemInfo(itemId))
            if not tex then
                tex = "Interface/ICONS/INV_Misc_QuestionMark"
            end
            local btn = addIconButton(self, tex, itemId, qty, spellData, false)
            btn:SetPoint("TOPLEFT", self, "TOPLEFT", x, y)
            x = x + iconSize + spacing
            row1Count = row1Count + 1
        end

        if hasRecipeItem then
            local itemId = tonumber(spellData.source.itemId)
            local tex = select(10, GetItemInfo(itemId))
            if not tex then
                tex = "Interface/ICONS/INV_Scroll_03"
            end
            local btn = addIconButton(self, tex, itemId, nil, spellData, true)
            btn:SetPoint("TOPLEFT", self, "TOPLEFT", x, y)
            x = x + iconSize + spacing
            row1Count = row1Count + 1
        end

        local row1Width = (row1Count > 0) and (x - spacing + xPad) or (xPad * 2)
        local rowCount = (row1Count > 0) and 1 or 0

        -- Row 2: materials
        local row2Width = 0
        if hasMaterials then
            rowCount = rowCount + 1
            local x2 = xPad
            local y2 = yPad - iconSize - 8

            for _, mat in ipairs(spellData.materials) do
                local itemId = mat and tonumber(mat.itemId)
                local qty = mat and tonumber(mat.quantity or 1) or 1
                if itemId and itemId > 0 then
                    local tex = select(10, GetItemInfo(itemId))
                    if not tex then
                        tex = "Interface/ICONS/INV_Misc_QuestionMark"
                    end
                    local btn = addIconButton(self, tex, itemId, qty, spellData, false)
                    btn:SetPoint("TOPLEFT", self, "TOPLEFT", x2, y2)
                    x2 = x2 + iconSize + spacing
                end
            end
            row2Width = (x2 > xPad) and (x2 - spacing + xPad) or (xPad * 2)
        end

        local width = math.max(row1Width, row2Width)
        local height = (rowCount == 2) and (iconSize * 2 + 24) or (iconSize + 16)
        if width < 80 then width = 80 end

        self:SetSize(width, height)
        self:Show()
        self:Raise()
    end

    popup:SetScript("OnMouseDown", function(self, button)
        if button == "LeftButton" or button == "RightButton" then
            self:Hide()
            self._anchor = nil
            self._spellData = nil
        end
    end)

    TFG.professionPopup = popup
    return popup
end

local function closeProfessionPopup()
    if TFG.professionPopup and TFG.professionPopup:IsShown() then
        TFG.professionPopup:Hide()
        TFG.professionPopup._anchor = nil
        TFG.professionPopup._spellData = nil
    end
end

local function populateFileDropdown(initialRun)
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    local classesMap = expansionObject["files"]["classes"] or {}
    local skillsMap  = expansionObject["files"]["skills"] or {}

    -- Flatten parents (classes first, then skills) but preserve keys.
    local parents = {}
    for key, obj in pairs(classesMap) do
        table.insert(parents, {key = key, obj = obj, type = "classes"})
    end
    table.sort(parents, function(a, b)
        return (a.obj.name or a.key) < (b.obj.name or b.key)
    end)

    local skillsParents = {}
    for key, obj in pairs(skillsMap) do
        table.insert(skillsParents, {key = key, obj = obj, type = "skills"})
    end
    table.sort(skillsParents, function(a, b)
        return (a.obj.name or a.key) < (b.obj.name or b.key)
    end)
    for _, v in ipairs(skillsParents) do
        table.insert(parents, v)
    end

    local function selectionExists()
        local selected = (TFG.selectedFile or ""):lower()
        if selected == "" then return false end
        local parentKey, childIndex = string.match(selected, "^(.+)::(%d+)$")
        if parentKey and childIndex then
            local p = classesMap[parentKey] or skillsMap[parentKey]
            local i = tonumber(childIndex)
            return (p and p.children and p.children[i]) and true or false
        end
        return (classesMap[selected] ~= nil) or (skillsMap[selected] ~= nil)
    end

    local function resetFilters()
        TFG.showKnown = false
        TFG.showTalents = false
        TFG.showEnemySpells = false
        if knownCheck then knownCheck:SetChecked(false) end
        if talentCheck then talentCheck:SetChecked(false) end
        if enemySpellsCheck then enemySpellsCheck:SetChecked(false) end
    end

    local function OnClickLeaf(self)
        TFG.selectedFile = self.value
        -- Don't rely on self.text/self.displayText as Blizzard sometimes clears these across levels.
        updateClassDropdownTextFromSelection()
        CloseDropDownMenus()
        safeCloseProfessionPopup()
        resetFilters()
        TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)
    end

    UIDropDownMenu_Initialize(classDropdown, function(self, level, menuList)
        level = level or 1

        if level == 1 then
            for _, entry in ipairs(parents) do
                local info = UIDropDownMenu_CreateInfo()

                local name = entry.obj.name or entry.key
                if entry.type == "classes" then
                    info.text = (entry.obj.color or (TFG.CLASS_COLORS[string.gsub(name:upper(), " ", "_")] or "")) .. name .. "|r"
                else
                    info.text = name
                end

                local hasChildren = entry.obj.children and #entry.obj.children > 0

                -- Special rule: top-level skills groups (e.g. "professions" and "skills")
                -- should not be selectable from the dropdown.
                local isSkillsParent = (entry.type == "skills") and (entry.key == "professions" or entry.key == "skills")

                if hasChildren then
                    info.hasArrow = true
                    info.notCheckable = true
                    info.value = entry.key
                    info.menuList = { parentKey = entry.key, parentType = entry.type }

                    -- Classes like Hunter/Warlock should still be selectable even if they have children.
                    -- We'll allow click to choose the parent for any class, and for any skill other than professions.
                    if entry.type == "classes" and not isSkillsParent then
                        info.func = function()
                            TFG.selectedFile = entry.key
                            updateClassDropdownTextFromSelection()
                            CloseDropDownMenus()
                            safeCloseProfessionPopup()
                            resetFilters()
                            TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)
                        end
                    elseif entry.type == "skills" and not isSkillsParent then
                        info.func = function()
                            TFG.selectedFile = entry.key
                            updateClassDropdownTextFromSelection()
                            CloseDropDownMenus()
                            safeCloseProfessionPopup()
                            resetFilters()
                            TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)
                        end
                    end
                else
                    info.notCheckable = true
                    info.value = entry.key
                    info.func = function()
                        TFG.selectedFile = entry.key
                        updateClassDropdownTextFromSelection()
                        CloseDropDownMenus()
                        safeCloseProfessionPopup()
                        resetFilters()
                        TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)
                    end
                end

                UIDropDownMenu_AddButton(info, level)
            end
        elseif level == 2 and menuList and menuList.parentKey then
            local parent = classesMap[menuList.parentKey] or skillsMap[menuList.parentKey]
            if parent and parent.children then
                local parentIsClass = (classesMap[menuList.parentKey] ~= nil)
                local parentName = parent.name or menuList.parentKey
                local parentColor = ""
                if parentIsClass then
                    parentColor = parent.color or (TFG.CLASS_COLORS[string.gsub(parentName:upper(), " ", "_")] or "")
                end

                local children = {}
                for idx, child in ipairs(parent.children) do
                    table.insert(children, { idx = idx, child = child })
                end
                -- Do not sort the flattened children list here; preserve the
                -- original ordering so header markers remain in their intended
                -- positions. Each partitioned group will be sorted individually
                -- below.

                -- Build submenu entries with support for header/divider entries and
                -- alphabetical sorting within each section. Parent.children may
                -- contain objects with `isHeader = true` to separate sections.
                local function appendSortedGroup(group)
                    if not group or #group == 0 then return end
                    table.sort(group, function(a, b)
                        return (a.child.name or "") < (b.child.name or "")
                    end)
                    for _, wrapper in ipairs(group) do
                        local idx = wrapper.idx
                        local child = wrapper.child
                        local info = UIDropDownMenu_CreateInfo()
                        if parentColor ~= "" then
                            info.text = parentColor .. child.name .. "|r"
                        else
                            info.text = child.name
                        end
                        info.notCheckable = true
                        info.value = menuList.parentKey .. "::" .. tostring(idx)
                        info.func = OnClickLeaf
                        UIDropDownMenu_AddButton(info, level)
                    end
                end

                local currentGroup = {}
                for _, wrapper in ipairs(children) do
                    local idx = wrapper.idx
                    local child = wrapper.child
                    if child and child.isHeader then
                        -- Flush previous group
                        appendSortedGroup(currentGroup)
                        currentGroup = {}
                        -- Render a visual divider instead of text
                        local info = UIDropDownMenu_CreateInfo()
                        -- Inline the divider texture into the text to avoid using the
                        -- dropdown icon APIs (which can nil-check `info` unexpectedly).
                        -- Width 200, height 8 should render as a short horizontal line.
                        info.text = "|TInterface\\Tooltips\\UI-TooltipDivider:200:8:0:0|t"
                        info.disabled = true
                        info.notCheckable = true
                        UIDropDownMenu_AddButton(info, level)
                    else
                        table.insert(currentGroup, wrapper)
                    end
                end
                -- Flush remaining group
                appendSortedGroup(currentGroup)
            end
        end
    end)

    if (not selectionExists()) then
        message1:SetText("We don't have this view for this expansion")
        message1:SetShown(true)
        message2:SetText("Please select a different view")
        message2:SetShown(true)
    else
        message1:SetShown(false)
        message2:SetShown(false)
    end

    if (initialRun == true) then
        -- Default selection to player class (top-level).
        local classObj = classesMap[playerClass:lower()]
        if classObj and classObj.name then
            UIDropDownMenu_SetText(classDropdown, (classObj.color or "") .. classObj.name .. "|r")
        else
            UIDropDownMenu_SetText(classDropdown, playerClass)
        end
    end

    -- Keep the dropdown text in sync with selectedFile (professions are stored as parent::childIndex).
    updateClassDropdownTextFromSelection()
end

populateFileDropdown(true)

-- ========================================================================== 
-- Checkboxes
-- ==========================================================================
TFG.showEnemySpells = false
TFG.showTalents     = false
TFG.showKnown       = false

-- Known Spells
local knownCheck = CreateFrame("CheckButton", nil, scrollBG, "UICheckButtonTemplate")
-- Known checkbox sits to the left of the class/category dropdowns.
knownCheck:SetPoint("RIGHT", classDropdown, "LEFT", -100, 2)
knownCheck:SetChecked(TFG.showKnown)
-- Ensure the checkbox sits above the scroll child and receives clicks.
knownCheck:EnableMouse(true)
-- Parent to scrollBG but raise level/strata so it appears above the scroll child.
knownCheck:SetParent(scrollBG)
if scrollBG and scrollBG.GetFrameLevel then
    knownCheck:SetFrameLevel((scrollBG:GetFrameLevel() or 0) + 100)
else
    knownCheck:SetFrameLevel((frame and frame.GetFrameLevel and (frame:GetFrameLevel() or 0) + 20) or 20)
end
knownCheck:SetFrameStrata("FULLSCREEN_DIALOG")
 

local knownLabel = knownCheck:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
knownLabel:SetPoint("LEFT", knownCheck, "RIGHT", 4, 0)
knownLabel:SetText("Known")

knownCheck:SetScript("OnClick", function(self)
    TFG.showKnown = self:GetChecked()
    closeProfessionPopup()
    frame:Relayout()
end)

-- Debug info: log parent/point/visibility/frame level when created (visible when TFG.debugChat=true)
 

knownLabel:EnableMouse(true)
knownLabel:SetScript("OnMouseDown", function()
    knownCheck:SetChecked(not knownCheck:GetChecked())
    TFG.showKnown = knownCheck:GetChecked()
    frame:Relayout()
end)

-- Talents
local talentCheck = CreateFrame("CheckButton", nil, scrollBG, "UICheckButtonTemplate")
talentCheck:SetPoint("RIGHT", knownCheck, "LEFT", 0, 0)
talentCheck:SetChecked(TFG.showTalents)

local talentLabel = talentCheck:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
talentLabel:SetPoint("LEFT", talentCheck, "RIGHT", 4, 0)
talentLabel:SetText("All Talents")

talentCheck:SetScript("OnClick", function(self)
    TFG.showTalents = self:GetChecked()
    closeProfessionPopup()
    frame:Relayout()
end)

talentLabel:EnableMouse(true)
talentLabel:SetScript("OnMouseDown", function()
    talentCheck:SetChecked(not talentCheck:GetChecked())
    TFG.showTalents = talentCheck:GetChecked()
    frame:Relayout()
end)

-- Faction / Race
local enemySpellsCheck = CreateFrame("CheckButton", nil, scrollBG, "UICheckButtonTemplate")
local enemySpellsLabel = enemySpellsCheck:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")

enemySpellsLabel:SetText((TFG.selectedFile ~= "PRIEST" and (TFG.isAlliance() and "Horde" or "Alliance") or ("Non-" .. playerRace)) .. " Spells")
enemySpellsLabel:SetPoint("LEFT", talentCheck, "LEFT", -enemySpellsLabel:GetWidth() - 16, 0)
enemySpellsCheck:SetPoint("LEFT", enemySpellsLabel, "LEFT", -36, 0)
enemySpellsCheck:SetChecked(TFG.showEnemySpells)

enemySpellsCheck:SetScript("OnClick", function(self)
    TFG.showEnemySpells = self:GetChecked()
    closeProfessionPopup()
    frame:Relayout()
end)

enemySpellsLabel:EnableMouse(true)
enemySpellsLabel:SetScript("OnMouseDown", function()
    enemySpellsCheck:SetChecked(not enemySpellsCheck:GetChecked())
    TFG.showEnemySpells = enemySpellsCheck:GetChecked()
    frame:Relayout()
end)

-- ========================================================================== 
-- Resize handle
-- ==========================================================================
local resizeButton = CreateFrame("Button", nil, frame)
resizeButton:SetSize(16,16)
resizeButton:SetPoint("BOTTOMRIGHT", -4, 4)
resizeButton:SetNormalTexture("Interface/ChatFrame/UI-ChatIM-SizeGrabber-Up")
resizeButton:SetHighlightTexture("Interface/ChatFrame/UI-ChatIM-SizeGrabber-Highlight")
resizeButton:SetPushedTexture("Interface/ChatFrame/UI-ChatIM-SizeGrabber-Down")

resizeButton:SetScript("OnMouseDown", function(_, button)
    if button == "LeftButton" then frame:StartSizing("BOTTOMRIGHT") end
end)

resizeButton:SetScript("OnMouseUp", function(_, button)
    if button == "LeftButton" then
        frame:StopMovingOrSizing()
        local w,h = frame:GetSize()
        if w<700 then w=700 end
        if h<500 then h=500 end
        frame:SetSize(w,h)
        frame:Relayout()
    end
end)

-- ========================================================================== 
-- Layout / Filtering
-- ==========================================================================
function frame:Relayout()
    content:Hide()
    content:SetParent(nil)

    content = CreateFrame("Frame", nil, scrollFrame)
    content:SetSize(1,1)
    scrollFrame:SetScrollChild(content)

    enemySpellsLabel:SetText((TFG.selectedFile:upper() ~= "PRIEST" and (TFG.isAlliance() and "Horde" or "Alliance") or ("Non-" .. playerRace)) .. " Spells")
    enemySpellsLabel:SetPoint("LEFT", talentCheck, "LEFT", -enemySpellsLabel:GetWidth() - 16, 0)

    populateFileDropdown()
    populateCategoryDropdown()

    -- Known label and checkbox positioning will depend on whether the
    -- current view is a profession AND the player actually has that skill.

    local yOffset = -4
    local contentWidth = frame:GetWidth() - UI.FRAME_PADDING_X

    local knownSpellsCount = 0
    local enemySpellsCount = 0
    local talentCount = 0
    local totalSpellsShown = 0

    local isProfession = isProfessionView()
    local professionLevel = isProfession and getProfessionLevelForCurrentView() or 0
    local professionMaxCap = isProfession and getProfessionMaxCapForCurrentView() or 0
    local profName = isProfession and getProfessionNameForCurrentView() or nil
    local hasProfession = false
    if isProfession and profName then
        hasProfession = playerHasSkill(profName)
    end

    local selectedUpper = (TFG.selectedFile or ""):upper()
    local selectedParentKey = string.match((TFG.selectedFile or ""):lower(), "^(.+)::%d+$")
    local selectedParentUpper = selectedParentKey and (selectedParentKey:upper()) or nil
    local isClassView = (not isProfession) and (not TFG.isSkill)

    -- forward-declare DB helper so it can be referenced by other locals
    local getHighestKnownRankForSpellName

    local function isSpellKnownDBAware(sid, spellObj)
        if not sid or tonumber(sid) == nil then return false end
        sid = tonumber(sid)
        if sid <= 0 then return false end
        -- Quick check: exact spell id present in player's book
        if IsPlayerSpell(sid) then return true end

        -- If the DB entry itself has faction/race restrictions and the player
        -- does not match them, the spell can never be considered known.
        if spellObj then
            if spellObj.faction and tostring(spellObj.faction) ~= "" and spellObj.faction ~= playerFaction then
                return false
            end
            if spellObj.race and tostring(spellObj.race) ~= "" and not string.find(spellObj.race, playerRace) then
                return false
            end
        end

        -- For class views, consult DB ranks: if player knows a DB-listed id for the same
        -- base name with rank >= this entry's rank, consider it known. While scanning the
        -- DB, ignore candidate entries that are not applicable to the player's faction/race.
        if isClassView and spellObj and tonumber(spellObj.rank) then
            local dbRank = tonumber(spellObj.rank) or 0
            -- Prefer group-based matching when available
            if spellObj.group and tostring(spellObj.group) ~= "" then
                local known = getHighestKnownRankForGroup(spellObj.group, spellObj)
                if known and known >= dbRank then return true end
            end
            -- Fallback to name-based matching
            if spellObj.name and tostring(spellObj.name) ~= "" then
                local known = getHighestKnownRankForSpellName(spellObj.name, spellObj)
                if known and known >= dbRank then return true end
            end
        end
        return false
    end

    -- Helper: return highest known rank (numeric) for a given spell name by scanning the
    -- active database and checking `IsPlayerSpell` on DB ids. Returns nil if none known.
    getHighestKnownRankForSpellName = function(spellName, targetSpell)
        if not spellName or tostring(spellName) == "" then return nil end
        -- If the DB entry being evaluated has faction/race restrictions and the player
        -- does not match them, do not treat similarly-named spells as known.
        if targetSpell then
            if targetSpell.faction and tostring(targetSpell.faction) ~= "" and targetSpell.faction ~= playerFaction then
                return nil
            end
            if targetSpell.race and tostring(targetSpell.race) ~= "" and not string.find(targetSpell.race, playerRace) then
                return nil
            end
        end
        local db = TFG and TFG.activeDatabase
        if type(db) ~= "table" then return nil end
        local highest = nil
        for _, spells in pairs(db) do
            if type(spells) == "table" then
                for _, s in ipairs(spells or {}) do
                    if s and s.name and tostring(s.name) == tostring(spellName) and s.id then
                        local skip = false
                        -- If targetSpell has faction/race restrictions, require candidates to match
                        -- those restrictions as well (avoid mixing cross-faction entries).
                        if targetSpell then
                            if targetSpell.faction and tostring(targetSpell.faction) ~= "" then
                                if s.faction and tostring(s.faction) ~= "" and s.faction ~= targetSpell.faction then skip = true end
                                if (not s.faction or tostring(s.faction) == "") and targetSpell.faction ~= playerFaction then skip = true end
                            end
                            if targetSpell.race and tostring(targetSpell.race) ~= "" then
                                if s.race and tostring(s.race) ~= "" and not string.find(s.race, targetSpell.race) then skip = true end
                                if (not s.race or tostring(s.race) == "") and not string.find(targetSpell.race, playerRace) then skip = true end
                            end
                        end

                        -- Also skip candidates that are not applicable to this player.
                        if s.faction and tostring(s.faction) ~= "" and s.faction ~= playerFaction then
                            skip = true
                        end
                        if s.race and tostring(s.race) ~= "" and not string.find(s.race, playerRace) then
                            skip = true
                        end

                        if not skip then
                            local sid = tonumber(s.id) or nil
                            if sid and sid > 0 and IsPlayerSpell(sid) then
                                local sr = tonumber(s.rank) or 0
                                if not highest or sr > highest then highest = sr end
                            end
                        end
                    end
                end
            end
        end
        return highest
    end

    -- Helper: return highest known rank (numeric) for a given group key by scanning the
    -- active database and checking `IsPlayerSpell` on DB ids. Returns nil if none known.
    getHighestKnownRankForGroup = function(groupKey, targetSpell)
        if not groupKey or tostring(groupKey) == "" then return nil end
        local db = TFG and TFG.activeDatabase
        if type(db) ~= "table" then return nil end
        local highest = nil
        for _, spells in pairs(db) do
            if type(spells) == "table" then
                for _, s in ipairs(spells or {}) do
                    if s and s.group and tostring(s.group) == tostring(groupKey) and s.id then
                        local skip = false
                        -- Respect targetSpell restrictions when provided
                        if targetSpell then
                            if targetSpell.faction and tostring(targetSpell.faction) ~= "" then
                                if s.faction and tostring(s.faction) ~= "" and s.faction ~= targetSpell.faction then skip = true end
                                if (not s.faction or tostring(s.faction) == "") and targetSpell.faction ~= playerFaction then skip = true end
                            end
                            if targetSpell.race and tostring(targetSpell.race) ~= "" then
                                if s.race and tostring(s.race) ~= "" and not string.find(s.race, targetSpell.race) then skip = true end
                                if (not s.race or tostring(s.race) == "") and not string.find(targetSpell.race, playerRace) then skip = true end
                            end
                        end

                        -- Also skip candidates that are not applicable to this player.
                        if s.faction and tostring(s.faction) ~= "" and s.faction ~= playerFaction then
                            skip = true
                        end
                        if s.race and tostring(s.race) ~= "" and not string.find(s.race, playerRace) then
                            skip = true
                        end

                        if not skip then
                            local sid = tonumber(s.id) or nil
                            if sid and sid > 0 and IsPlayerSpell(sid) then
                                local sr = tonumber(s.rank) or 0
                                if not highest or sr > highest then highest = sr end
                            end
                        end
                    end
                end
            end
        end
        return highest
    end
    -- Show the Known checkbox for non-profession views, or for profession views
    -- only when the player actually has that profession. For class views,
    -- hide the Known checkbox unless the selected class matches the player's
    -- class. Riding is not a class and should remain visible.
    if isProfession then
        if hasProfession then
            knownCheck:Show()
            knownLabel:Show()
        else
            knownCheck:Hide()
            knownLabel:Hide()
            TFG.showKnown = false
            knownCheck:SetChecked(false)
        end
    elseif isClassView then
        if (selectedUpper ~= (playerClass or ""):upper()) and (selectedParentUpper ~= (playerClass or ""):upper()) and selectedUpper ~= "RIDING" then
            knownCheck:Hide()
            knownLabel:Hide()
            TFG.showKnown = false
            knownCheck:SetChecked(false)
        else
            knownCheck:Show()
            knownLabel:Show()
        end
    else
        knownCheck:Show()
        knownLabel:Show()
    end

    -- Update Known label text depending on view type and whether it's applicable.
    if isProfession and hasProfession then
        knownLabel:SetText("Known Skills")
    else
        knownLabel:SetText("Known Abilities")
    end

    -- Position knownCheck differently when showing a profession category dropdown
    -- only when the player has that profession (so category dropdown matters).
    if isProfession and hasProfession then
        knownCheck:SetPoint("RIGHT", classDropdown, "LEFT", -categoryDropdown:GetWidth() - 100, 2)
    else
        knownCheck:SetPoint("RIGHT", classDropdown, "LEFT", -100, 2)
    end

    

    if isProfession then
        local profName = getProfessionNameForCurrentView() or "?"
        TFG_DebugLog("Relayout profession view", "selectedFile=", tostring(TFG.selectedFile), "profName=", tostring(profName), "category=", tostring(TFG.selectedCategory), "showKnown=", tostring(TFG.showKnown), "level=", tostring(professionLevel), "cap=", tostring(professionMaxCap))
        TFG_DebugLog("Active database type=", type(TFG.activeDatabase))
    end

    local function getProfessionIconForCurrentView()
        -- Prefer the profession's own skill/training icon from the *active profession database*
        -- (e.g., Alchemy spell 2259 with texture trade_alchemy).
        if not isProfession then return "Interface/ICONS/INV_Misc_QuestionMark" end

        local db = TFG.activeDatabase
        if type(db) == "table" then
            -- Some profession datasets (notably Fishing) store training entries under bracket keys
            -- that don't match our synthetic trainAt thresholds (e.g. Artisan training at [225]).
            -- So: scan *any* training entry first, then try resolving via GetSpellInfo.
            local anyTrainingSpellId
            local anyTrainingTexture

            for _, spells in pairs(db) do
                for _, s in ipairs(spells or {}) do
                    if s and s.category == "Profession Training" then
                        if not anyTrainingSpellId and s.id then
                            anyTrainingSpellId = tonumber(s.id)
                        end
                        if not anyTrainingTexture and s.texture and tostring(s.texture) ~= "" then
                            anyTrainingTexture = s.texture
                        end

                        -- Prefer the first resolvable spell icon immediately.
                        if s.id then
                            local tex = select(3, GetSpellInfo(s.id))
                            if tex and tostring(tex) ~= "" then
                                return tex
                            end
                        end
                    end
                end
            end

            if anyTrainingSpellId then
                local tex = select(3, GetSpellInfo(anyTrainingSpellId))
                if tex and tostring(tex) ~= "" then
                    return tex
                end
            end

            if anyTrainingTexture then
                return anyTrainingTexture
            end
        end

        -- Fallback: resolve by profession name.
        -- This works well for Fishing, where the training spell brackets don't line up with trainAt
        -- and the best canonical icon is the skill line's spell icon.
        local profName = getProfessionNameForCurrentView()
        if profName then
            local tex = select(3, GetSpellInfo(profName))
            if tex and tostring(tex) ~= "" then
                return tex
            end
        end

        return "Interface/ICONS/INV_Misc_QuestionMark"
    end

    local function resolveSelectedSkillKey()
        local selected = (TFG.selectedFile or ""):lower()
        local parentKey, childIndex = string.match(selected, "^(.+)::(%d+)$")
        if parentKey and childIndex then
            local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
            if expansionObject and expansionObject.files then
                local parent = expansionObject.files.classes[parentKey] or expansionObject.files.skills[parentKey]
                if parent and parent.children then
                    local idx = tonumber(childIndex)
                    local child = parent.children[idx]
                    if child and child.name then
                        return normalizeSkillKey(child.name)
                    end
                end
            end
        end
        return normalizeSkillKey(TFG.selectedFile)
    end

    -- IMPORTANT: Never mutate TFG.rows in-place. Relayout can be called repeatedly without
    -- regenerating rows, and in-place mutation will accumulate injected entries/rows.
    local function shallowCopyRows(rows)
        local out = {}
        for i, r in ipairs(rows or {}) do
            out[i] = {
                label = r.label,
                spells = r.spells, -- reference for now; we will copy if we modify
            }
        end
        return out
    end

    -- Add rank unlock entries into the *existing* brackets so we don't create duplicate "Skill N" groups.
    -- Each unlock is represented as a synthetic pseudo-spell entry within that skill bracket.
    local function addProfessionRankUnlocksIntoRows(baseRows)
        if not isProfession then return baseRows end

        local profName = getProfessionNameForCurrentView()

        local dbgTrainingCount = 0

        -- Build unlock tiers directly from the DB's Profession Training entries.
        -- This makes "train-at" requirements fully data-driven (e.g., Fishing sometimes requires
        -- being exactly at 225 to unlock 300).
        local unlocks = {}
        do
            local db = TFG.activeDatabase
            if type(db) == "table" then
                local function deriveCapFromTrainingBucket(bucketLvl)
                    bucketLvl = tonumber(bucketLvl) or 0
                    if bucketLvl <= 0 then return nil end

                    -- Common profession training tiers across Vanilla/TBC.
                    -- This is intentionally conservative and does not rely on cached spell data.
                    if bucketLvl <= 1 then return 75 end
                    if bucketLvl <= 50 then return 150 end
                    if bucketLvl <= 125 then return 225 end
                    if bucketLvl <= 225 then return 300 end
                    if bucketLvl <= 300 then return 375 end
                    return nil
                end

                for k, spells in pairs(db) do
                    -- Bucket keys in the DB are often numeric (e.g., [1], [50]).
                    -- Classic Lua's tonumber() expects a string; passing a number can error.
                    local bucketLvl = tonumber(tostring(k))
                    if bucketLvl and type(spells) == "table" then
                        for _, s in ipairs(spells or {}) do
                            if s and s.category == "Profession Training" and s.id then
                                dbgTrainingCount = dbgTrainingCount + 1
                                local sid = tonumber(tostring(s.id))
                                if sid and sid > 0 then
                                    -- Prefer DB-provided cap if present.
                                    local newCap = tonumber(tostring(s.cap))
                                    if not newCap or newCap <= 0 then
                                        -- Next best: infer from bucket level.
                                        newCap = deriveCapFromTrainingBucket(bucketLvl)
                                    end
                                    if (not newCap or newCap <= 0) and bucketLvl >= 50 then
                                        -- Last resort: treat bucket as cap.
                                        newCap = bucketLvl
                                    end

                                    if newCap and newCap > 0 then
                                        table.insert(unlocks, {
                                            -- "trainAt" is our semantic train threshold (used in some UI text);
                                            -- for DB-driven professions, the effective requirement is bucketLvl.
                                            trainAt = bucketLvl,
                                            effectiveTrainAt = bucketLvl,
                                            displayBracket = bucketLvl,
                                            newCap = newCap,
                                            trainingSpellId = sid,
                                            texture = s.texture,
                                        })
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        table.sort(unlocks, function(a, b)
            return (tonumber(a.newCap) or 0) < (tonumber(b.newCap) or 0)
        end)

        -- Deduplicate by resulting cap (some datasets may have multiple entries that map to same cap).
        do
            local seen = {}
            local filtered = {}
            for _, u in ipairs(unlocks) do
                local cap = tonumber(u.newCap) or 0
                if cap > 0 and not seen[cap] then
                    seen[cap] = true
                    table.insert(filtered, u)
                end
            end
            unlocks = filtered
        end

        -- Track which brackets now have a synthetic unlock so we can safely suppress the
        -- corresponding raw Profession Training spell *only* when it would be a duplicate.
        local syntheticUnlockByBracket = {}

        local function inferRankNameFromCap(cap)
            cap = tonumber(cap) or 0
            if cap <= 0 then return "Rank" end
            if cap <= 75 then return "Apprentice" end
            if cap <= 150 then return "Journeyman" end
            if cap <= 225 then return "Expert" end
            if cap <= 300 then return "Artisan" end
            return "Master"
        end



        local byLevel = {}
        local discoveriesRow
        for _, r in ipairs(baseRows or {}) do
            local lvl = tonumber(tostring(r.label or ""):match("%d+"))
            if lvl then
                if not byLevel[lvl] then
                    byLevel[lvl] = {
                        label = r.label,
                        spells = r.spells,
                    }
                else
                    -- Merge duplicate brackets (this can happen if we previously injected rows).
                    local target = byLevel[lvl]
                    target.spells = target.spells or {}
                    if r.spells then
                        for _, s in ipairs(r.spells) do
                            table.insert(target.spells, s)
                        end
                    end
                end
            elseif r.label == "Discoveries" then
                discoveriesRow = r
            end
        end

        -- Rebuild baseRows from the merged map (plus Discoveries row if it exists).
        baseRows = {}
        -- Seed baseRows with any DB rows we already have.
        for _, r in pairs(byLevel) do
            baseRows[#baseRows + 1] = r
        end
        -- Also include any non-tier brackets from the DB (e.g., Skill 1, Skill 50, etc.).
        if discoveriesRow then
            baseRows[#baseRows + 1] = discoveriesRow
        end

        local profIcon = getProfessionIconForCurrentView()

    local dbgUnlockInserted = 0

        for _, u in ipairs(unlocks) do
            local newCap = tonumber(u.newCap) or 0
            local displayBracket = tonumber(u.displayBracket) or 0
            local effectiveTrainAt = tonumber(u.effectiveTrainAt) or displayBracket
            local trainAt = tonumber(u.trainAt) or effectiveTrainAt
            local rankName = tostring(u.rankName or inferRankNameFromCap(newCap))

            local row = nil
            for _, r in ipairs(baseRows) do
                local lvl = tonumber(tostring(r.label or ""):match("%d+"))
                if lvl and lvl == displayBracket then
                    row = r
                    break
                end
            end
            if not row then
                row = { label = "Skill " .. displayBracket, spells = {} }
                baseRows[#baseRows + 1] = row
            end
            -- Copy spells list before modifying so we don't mutate original row tables.
            if row.spells == nil then row.spells = {} end
            if row._tfgSpellsCopied ~= true then
                local copied = {}
                for _, s in ipairs(row.spells) do table.insert(copied, s) end
                row.spells = copied
                row._tfgSpellsCopied = true
            end

            -- Avoid inserting duplicates if Relayout gets called repeatedly.
            local already = false
            for _, s in ipairs(row.spells) do
                if s and s._tfgType == "PROFESSION_RANK_UNLOCK" and tonumber(s.required) == newCap and tonumber(s.trainAt) == trainAt then
                    already = true
                    break
                end
            end

            if not already then
                -- Put the unlock entry first so it reads like a normal skill in that bracket.
                table.insert(row.spells, 1, {
                    _tfgType = "PROFESSION_RANK_UNLOCK",
                    required = newCap,
                    trainAt = trainAt,
                    effectiveTrainAt = effectiveTrainAt,
                    displayBracket = displayBracket,
                    rankName = rankName,
                    texture = profIcon,
                    name = "Train " .. rankName,
                    trainingSpellId = u.trainingSpellId,
                })

                syntheticUnlockByBracket[displayBracket] = true
                dbgUnlockInserted = dbgUnlockInserted + 1
            end
        end

        if profName then
            TFG_DebugLog(
                "Unlock builder",
                "prof=", tostring(profName),
                "trainingEntries=", tostring(dbgTrainingCount),
                "unlockDefs=", tostring(#unlocks),
                "unlockRowsInserted=", tostring(dbgUnlockInserted)
            )
        end

        -- Expose to the outer render loop for filtering decisions.
        baseRows._tfgSyntheticUnlockByBracket = syntheticUnlockByBracket

        -- Re-sort rows by numeric level, keeping Discoveries at the end.
        table.sort(baseRows, function(a, b)
            local function lvl(r)
                if r.label == "Discoveries" then return 999 end
                return tonumber(tostring(r.label or ""):match("%d+")) or 0
            end
            return lvl(a) < lvl(b)
        end)

        return baseRows
    end

    local rowsToRender = addProfessionRankUnlocksIntoRows(shallowCopyRows(TFG.rows))
    local syntheticUnlockByBracket = rowsToRender and rowsToRender._tfgSyntheticUnlockByBracket

    for _, row in ipairs(rowsToRender) do
        local visibleSpells = 0
        local levelRequired = tonumber(row.label:match("%d+")) or 0

        for _, spell in ipairs(row.spells) do
            local hide = false

            local isRankUnlock = (spell and spell._tfgType == "PROFESSION_RANK_UNLOCK")
            local isProfessionTraining = (isProfession and spell and spell.category == "Profession Training")

            if (spell.faction or spell.race) then enemySpellsCount = enemySpellsCount + 1 end
            if spell.talent then talentCount = talentCount + 1 end

            -- Known filtering:
            --  * For classes: hide spells player already knows.
            --  * For skills (weapon skills etc): hide if player skill level >= required.
            --  * For professions: hide recipes the player already knows.
            --  * For professions: hide the raw training spells in normal browsing (to avoid duplicates),
            --    but allow them when the user explicitly filters to "Profession Training".
            if isProfessionTraining and (TFG.selectedCategory ~= "Profession Training") then
                -- Only hide raw training spells when we have a synthetic unlock in the same bracket.
                -- This prevents non-recipe professions like Fishing from appearing empty.
                if syntheticUnlockByBracket and syntheticUnlockByBracket[levelRequired] then
                    hide = true
                end
            end
            if (not TFG.showKnown and isProfession) then
                if isRankUnlock then
                    local reqAt = tonumber(spell.effectiveTrainAt) or tonumber(spell.trainAt) or 0
                    if professionLevel >= reqAt then
                        hide = true
                    end
                else
                    -- Some profession entries (notably Fishing) can have non-spell / nil ids in the dataset.
                    -- DeprecatedSpellBook's IsPlayerSpell errors on nil.
                    local sid = spell and tonumber(spell.id)
                    if sid and sid > 0 then
                        if isSpellKnownDBAware(sid, spell) then hide = true end
                    end
                    -- Special-case: Riding is modelled as a profession-like skill.
                    if TFG and TFG.RIDING_TBC and TFG.activeDatabase == TFG.RIDING_TBC then
                        if professionLevel >= levelRequired then
                            hide = true
                        end
                    end
                end
            end
            if (not TFG.showKnown and TFG.isSkill and not isProfession) then
                local skillKey = resolveSelectedSkillKey()
                local playerSkill = tonumber(skillLevels[skillKey] or 0) or 0
                -- Some skill datasets represent entries as spells (e.g. Riding). Hide if
                -- player's skill meets the bracket OR the player already knows the spell.
                local sid = nil
                for _, s in ipairs(row.spells or {}) do
                    if s and tonumber(s.id) then sid = tonumber(s.id); break end
                end
                if playerSkill >= levelRequired or (sid and sid > 0 and isSpellKnownDBAware(sid, row)) then
                    hide = true
                end
            end
            if (not TFG.showKnown and not TFG.isSkill) then
                local sid = spell and tonumber(spell.id)
                if sid and sid > 0 then
                    -- For class views, prefer DB-driven rank checks: if the DB lists multiple
                    -- ranks for this ability, determine the highest rank the player actually
                    -- knows by checking the DB ids and only hide when player's known rank
                    -- >= this DB entry's rank. Fallback to IsPlayerSpell when no DB rank exists.
                    if isClassView and spell and spell.name and tonumber(spell.rank) then
                        local dbRank = tonumber(spell.rank) or 0
                        local known = getHighestKnownRankForSpellName(spell.name, spell)
                        if known and known >= dbRank then
                            hide = true
                        else
                            -- fallback: if the exact id is present in spellbook
                            if isSpellKnownDBAware(sid, spell) then hide = true end
                        end
                    else
                        if isSpellKnownDBAware(sid, spell) then hide = true end
                    end
                end
            end

            -- Category filter (profession views only)
            if (not hide and isProfession and TFG.selectedCategory and TFG.selectedCategory ~= "ALL") then
                if TFG.selectedCategory == "DISCOVERIES" then
                    -- Only show the special [999] group
                    if levelRequired ~= 999 then
                        hide = true
                    end
                else
                    if levelRequired == 999 then
                        hide = true
                    elseif not spell.category or spell.category ~= TFG.selectedCategory then
                        hide = true
                    end
                end
            end

            if spell.talent and not TFG.showTalents then hide = true end

            if not TFG.showEnemySpells then
                if spell.faction and spell.faction ~= playerFaction then hide = true end
                if spell.race and not string.find(spell.race, playerRace) then hide = true end
            end

            if not hide then visibleSpells = visibleSpells + 1 end
        end

        if visibleSpells > 0 then
            local label = content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            label:SetFont(label:GetFont(), 18, "OUTLINE")

            if isProfession then
                -- Match class-style coloring:
                --  * Green if your profession skill meets/exceeds the bracket
                --  * White otherwise
                --  * Do not color Discoveries
                if levelRequired ~= 999 and professionLevel >= levelRequired then
                    label:SetTextColor(0.5, 1, 0)
                else
                    label:SetTextColor(1, 1, 1)
                end
            else
                local function _getSelectedSkillLevel()
                    local key = resolveSelectedSkillKey()
                    return tonumber(skillLevels[key] or 0) or 0
                end
                if (isProfession and professionLevel >= levelRequired) or ((TFG.isSkill and not isProfession and _getSelectedSkillLevel() >= levelRequired) or ((playerClass:upper() == TFG.selectedFile:upper())) and playerLevel >= levelRequired) then
                    label:SetTextColor(0.5, 1, 0)
                else
                    label:SetTextColor(1, 1, 1)
                end
            end

            label:SetPoint("TOPLEFT", 0, yOffset)
            if isProfession then
                if levelRequired == 999 then
                    label:SetText("Discoveries")
                else
                    label:SetText("Skill " .. levelRequired)
                end
            else
                label:SetText("Level " .. levelRequired)
            end
            yOffset = yOffset - label:GetHeight() - 8

            local xOffset = 0
            local rowMaxHeight = UI.ICON_SIZE

            for _, spell in ipairs(row.spells) do
                local hide = false

                if spell.talent and not TFG.showTalents then hide = true end

                local isRankUnlock = (spell and spell._tfgType == "PROFESSION_RANK_UNLOCK")
                local isProfessionTraining = (isProfession and spell and spell.category == "Profession Training")

                if isProfessionTraining and (TFG.selectedCategory ~= "Profession Training") then
                    if syntheticUnlockByBracket and syntheticUnlockByBracket[levelRequired] then
                        hide = true
                    end
                end
                if (not TFG.showKnown and isProfession) then
                    if isRankUnlock then
                        local reqAt = tonumber(spell.effectiveTrainAt) or tonumber(spell.trainAt) or 0
                        if professionLevel >= reqAt then
                            hide = true
                        end
                    else
                        local sid = spell and tonumber(spell.id)
                        if sid and sid > 0 then
                            if IsPlayerSpell(sid) then hide = true end
                        end
                        if TFG and TFG.RIDING_TBC and TFG.activeDatabase == TFG.RIDING_TBC then
                            if professionLevel >= levelRequired then
                                hide = true
                            end
                        end
                    end
                end
                if (not TFG.showKnown and TFG.isSkill and not isProfession) then
                    local skillKey = resolveSelectedSkillKey()
                    local playerSkill = tonumber(skillLevels[skillKey] or 0) or 0
                    local sid = spell and tonumber(spell.id) or 0
                    if playerSkill >= levelRequired or (sid > 0 and isSpellKnownDBAware(sid, row)) then hide = true end
                end
                if (not TFG.showKnown and not TFG.isSkill and not isProfession and isSpellKnownDBAware(spell.id, spell)) then hide = true end

                if (not hide and isProfession and TFG.selectedCategory and TFG.selectedCategory ~= "ALL") then
                    if TFG.selectedCategory == "DISCOVERIES" then
                        if levelRequired ~= 999 then
                            hide = true
                        end
                    else
                        if levelRequired == 999 then
                            hide = true
                        elseif not spell.category or spell.category ~= TFG.selectedCategory then
                            hide = true
                        end
                    end
                end

                if not TFG.showEnemySpells then
                    if spell.faction and spell.faction ~= playerFaction then hide = true end
                    if spell.race and not string.find(spell.race, playerRace) then hide = true end
                end

                if not hide then
                    if xOffset + UI.ICON_SIZE > contentWidth then
                        xOffset = 0
                        yOffset = yOffset - rowMaxHeight - UI.ICON_SPACING
                    end

                    local icon = content:CreateTexture(nil, "ARTWORK")
                    icon:SetSize(UI.ICON_SIZE, UI.ICON_SIZE)
                    icon:SetPoint("TOPLEFT", xOffset, yOffset)
                    -- Resolve texture: prefer explicit texture, then spell icon, then item icon if present.
                    local tex = nil
                    if spell and spell.texture and tostring(spell.texture) ~= "" then
                        tex = spell.texture
                    elseif spell and spell.id and tonumber(spell.id) and tonumber(spell.id) > 0 then
                        tex = select(3, GetSpellInfo(spell.id))
                    else
                        -- Some entries represent items (product/source) rather than spells.
                        local itemId = (spell and spell.product and spell.product.itemId) or (spell and spell.source and spell.source.itemId) or spell and spell.itemId
                        if itemId then
                            tex = select(10, GetItemInfo(itemId))
                        end
                    end
                    icon:SetTexture(tex or "Interface/ICONS/INV_Misc_QuestionMark")
                    icon.spellData = spell
                    icon:EnableMouse(true)

                    -- Known-state overlay (semi-transparent green). Textures do not receive mouse
                    -- events, so this will not interfere with icon tooltip/click handlers.
                    if not icon.tfgKnownOverlay then
                        -- Textures don't have CreateTexture; create the overlay from the parent
                        -- frame and anchor it to the icon so it doesn't interfere with mouse events.
                        local ov = content:CreateTexture(nil, "OVERLAY")
                        ov:SetPoint("TOPLEFT", icon, "TOPLEFT", 0, 0)
                        ov:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", 0, 0)
                        ov:SetColorTexture(0, 1, 0, 0.35)
                        ov:Hide()
                        icon.tfgKnownOverlay = ov
                    end

                    -- Red-state overlay (semi-transparent red) for user-marked unlearned abilities.
                    if not icon.tfgRedOverlay then
                        local rov = content:CreateTexture(nil, "OVERLAY")
                        rov:SetPoint("TOPLEFT", icon, "TOPLEFT", 0, 0)
                        rov:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", 0, 0)
                        rov:SetColorTexture(1, 0, 0, 0.6)
                        rov:Hide()
                        icon.tfgRedOverlay = rov
                    end

                    -- Determine if this entry is "known" for the player.
                    local function entryIsKnown(sp)
                        if not sp then return false end
                        -- Rank unlocks are considered known when professionLevel >= required threshold.
                        if sp._tfgType == "PROFESSION_RANK_UNLOCK" then
                            local reqAt = tonumber(sp.effectiveTrainAt) or tonumber(sp.trainAt) or 0
                            return (professionLevel >= reqAt)
                        end
                        -- Otherwise, treat as a known spell if IsPlayerSpell returns true for its id.
                        local sid = sp and tonumber(sp.id) or nil
                        if sid and sid > 0 then
                            -- Class views: consult DB ranks first (only hide lower ranks when
                            -- player actually knows an equal-or-higher rank). For other views,
                            -- fall back to IsPlayerSpell.
                            if isClassView and sp and sp.name and tonumber(sp.rank) then
                                local dbRank = tonumber(sp.rank) or 0
                                local known = getHighestKnownRankForSpellName(sp.name, sp)
                                if known and known >= dbRank then
                                    return true
                                end
                                return isSpellKnownDBAware(sid, sp)
                            end
                            -- Guard IsPlayerSpell against nil/invalid ids (we checked above).
                                return isSpellKnownDBAware(sid, sp)
                        end
                        return false
                    end

                    -- Persisted red marks table
                    TimbersFieldGuideDB = TimbersFieldGuideDB or {}
                    TimbersFieldGuideDB.redMarked = TimbersFieldGuideDB.redMarked or {}

                    if entryIsKnown(spell) then
                        icon.tfgKnownOverlay:Show()
                        -- If the spell became known, clear any previously set red mark
                        if spell and spell.id then
                            TimbersFieldGuideDB.redMarked[tostring(spell.id)] = nil
                            if icon.tfgRedOverlay then icon.tfgRedOverlay:Hide() end
                        end
                    else
                        icon.tfgKnownOverlay:Hide()
                        -- Show red overlay if user previously marked this unlearned ability
                        if spell and spell.id and TimbersFieldGuideDB.redMarked[tostring(spell.id)] then
                            icon.tfgRedOverlay:Show()
                        else
                            icon.tfgRedOverlay:Hide()
                        end
                    end

                    icon:SetScript("OnMouseDown", function(self, button)
                        if button == "LeftButton" then
                            if not isProfessionView() then return end

                            -- Rank unlock rows are informational; no popup.
                            if self.spellData and self.spellData._tfgType == "PROFESSION_RANK_UNLOCK" then
                                return
                            end

                            local data = self.spellData
                            local popup = ensureProfessionPopup()
                            popup:ShowForSpell(self, data)
                            return
                        end

                        -- Right-click: allow marking unlearned class abilities with a red overlay.
                        if button == "RightButton" then
                            -- Only apply to class views (not professions/skills) and only for spell entries
                            if not isClassView then return end
                            local sp = self.spellData
                            if not sp or not sp.id then return end
                            local sid = tonumber(sp.id) or nil
                            if not sid or sid <= 0 then return end

                            -- Only allow marking if the entry is currently not known
                            if entryIsKnown(sp) then
                                -- If it is known, ensure red mark removed
                                TimbersFieldGuideDB = TimbersFieldGuideDB or {}
                                TimbersFieldGuideDB.redMarked = TimbersFieldGuideDB.redMarked or {}
                                TimbersFieldGuideDB.redMarked[tostring(sid)] = nil
                                if self.tfgRedOverlay then self.tfgRedOverlay:Hide() end
                                return
                            end

                            TimbersFieldGuideDB = TimbersFieldGuideDB or {}
                            TimbersFieldGuideDB.redMarked = TimbersFieldGuideDB.redMarked or {}
                            local key = tostring(sid)
                            if TimbersFieldGuideDB.redMarked[key] then
                                -- Toggle off
                                TimbersFieldGuideDB.redMarked[key] = nil
                                if self.tfgRedOverlay then self.tfgRedOverlay:Hide() end
                            else
                                -- Toggle on
                                TimbersFieldGuideDB.redMarked[key] = true
                                if self.tfgRedOverlay then self.tfgRedOverlay:Show() end
                            end
                        end
                    end)

                    icon:SetScript("OnEnter", function(self)
                        local data = self.spellData

                        if data and data._tfgType == "PROFESSION_RANK_UNLOCK" then
                            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                            local req = tonumber(data.required) or 0
                            local trainAt = tonumber(data.effectiveTrainAt) or tonumber(data.trainAt) or levelRequired
                            local rankName = (data.rankName and tostring(data.rankName) ~= "") and tostring(data.rankName) or "Rank"

                            local profName = "Profession"
                            do
                                local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
                                local selected = (TFG.selectedFile or ""):lower()
                                local parentKey, childIndex = string.match(selected, "^(.+)::(%d+)$")
                                local idx = tonumber(childIndex)
                                local child
                                if parentKey and expansionObject and expansionObject.files then
                                    -- Try classes first, then skills (which contains professions/skills groups).
                                    local parent = (expansionObject.files.classes and expansionObject.files.classes[parentKey])
                                        or (expansionObject.files.skills and expansionObject.files.skills[parentKey])
                                    if parent and parent.children and idx then
                                        child = parent.children[idx]
                                    end
                                end
                                if child and child.name then
                                    profName = tostring(child.name)
                                end
                            end
                            local capText
                            local capR, capG, capB = 1, 1, 1
                            if professionMaxCap > 0 and req > 0 and professionMaxCap >= req then
                                capText = "Already learned"
                                capR, capG, capB = 0.5, 1, 0
                            elseif professionLevel >= trainAt then
                                capText = "Trainable now"
                            else
                                capText = "Trainable at " .. tostring(trainAt)
                            end

                            -- Show Blizzard's spell tooltip body for the matching Profession Training spell,
                            -- then override the title line with our synthetic title.
                            local trainingSpellId
                            local db = TFG.activeDatabase
                            if type(db) == "table" then
                                local bucket = db[trainAt]
                                if type(bucket) == "table" then
                                    for _, s in ipairs(bucket) do
                                        if s and s.category == "Profession Training" and s.id then
                                            trainingSpellId = tonumber(s.id)
                                            break
                                        end
                                    end
                                end

                                -- Some professions store training unlock entries at their *cap* bracket
                                -- instead of the synthetic "trainAt" threshold (e.g., First Aid Master at [300]
                                -- while trainAt is 275). If we didn't find an exact match, choose the closest
                                -- training entry by bracket key.
                                if not trainingSpellId then
                                    local bestId
                                    local bestDiff
                                    for k, spells in pairs(db) do
                                        local lvl = tonumber(k)
                                        if lvl and type(spells) == "table" then
                                            for _, s in ipairs(spells or {}) do
                                                if s and s.category == "Profession Training" and s.id then
                                                    local diff = math.abs(lvl - (tonumber(trainAt) or 0))
                                                    if not bestDiff or diff < bestDiff then
                                                        bestDiff = diff
                                                        bestId = tonumber(s.id)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    trainingSpellId = bestId
                                end

                                if not trainingSpellId then
                                    for _, spells in pairs(db) do
                                        for _, s in ipairs(spells or {}) do
                                            if s and s.category == "Profession Training" and s.id and (tonumber(s.id) == tonumber(data.trainingSpellId)) then
                                                trainingSpellId = tonumber(s.id)
                                                break
                                            end
                                        end
                                        if trainingSpellId then break end
                                    end
                                end
                            end

                            local titleText = profName .. " Skill Unlock: " .. rankName .. " (1-" .. tostring(req) .. ")"
                            if trainingSpellId then
                                -- Build a simple tooltip ourselves to guarantee the custom title
                                -- is shown. We include the spell name (if resolvable) as a line.
                                local sname = select(1, GetSpellInfo(trainingSpellId))
                                GameTooltip:ClearLines()
                                GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                                GameTooltip:AddLine(titleText, 1, 1, 1)
                                if sname and tostring(sname) ~= "" then
                                    GameTooltip:AddLine(sname, 0.9, 0.9, 0.9)
                                end
                                GameTooltip:Show()
                            else
                                -- Fallback: no training spell found; show our synthetic tooltip only.
                                GameTooltip:AddLine(titleText, 1, 1, 1)
                            end

                            GameTooltip:AddLine(" ")
                            GameTooltip:AddLine(capText, capR, capG, capB)
                            GameTooltip:Show()
                            return
                        end
                        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                        -- Prefer showing a spell tooltip when we have a valid spell id.
                        local sid = data and tonumber(data.id)
                        if sid and sid > 0 then
                            GameTooltip:SetSpellByID(sid)
                        else
                            -- Fallback: try to show item tooltip for product/source items.
                            local itemId = (data and data.product and data.product.itemId) or (data and data.source and data.source.itemId) or data and data.itemId
                            local shown = false
                            if itemId and tonumber(itemId) then
                                local _, itemLink = GetItemInfo(tonumber(itemId))
                                if itemLink then
                                    GameTooltip:SetHyperlink(itemLink)
                                    shown = true
                                else
                                    -- If item info isn't cached, SetItemByID is safer on modern clients; try it if available.
                                    if GameTooltip.SetItemByID then
                                        pcall(GameTooltip.SetItemByID, GameTooltip, tonumber(itemId))
                                        shown = true
                                    end
                                end
                            end

                            if not shown then
                                -- Last resort: show a simple tooltip with the entry name.
                                GameTooltip:SetText(tostring(data and data.name or ""))
                            end
                        end

                        -- Crafting difficulty levels display (orange/yellow/green/gray)
                        if data.levels and type(data.levels) == "table" then
                            local colors = { "|cFFFF7F00", "|cFFFFFF00", "|cFF00FF00", "|cFF9D9D9D" }
                            local parts = {}
                            for i = 1, 4 do
                                local v = tonumber(data.levels[i] or 0) or 0
                                if v > 0 then
                                    table.insert(parts, colors[i] .. tostring(v) .. "|r")
                                end
                            end
                            if #parts > 0 then
                                GameTooltip:AddLine(" ")
                                GameTooltip:AddLine("Skill-ups: " .. table.concat(parts, "  "))
                            end
                        end

                        -- NOTE: Source/location/cost info is intentionally not shown on the main list tooltip.
                        -- It is shown only on the popup's recipe-source icon tooltip.

                        if data.rank and data.rank > 0 then
                            GameTooltip:AddLine(" ")
                            GameTooltip:AddLine("Rank: |cFFFFFFFF" .. data.rank)
                        end

                        if data.cost and data.cost > 0 then
                            local costText = TFG.FormatCost(data.cost)
                            if costText then
                                local color = (GetMoney() < data.cost) and "|cFFFF0000" or "|cFFFFFFFF"
                                GameTooltip:AddLine(" ")
                                GameTooltip:AddLine("Cost: " .. color .. costText)
                            end
                        end

                        if data.talent then GameTooltip:AddLine(" ") GameTooltip:AddLine("Talent") end
                        if data.race then GameTooltip:AddLine(" ") GameTooltip:AddLine("Races: |cFFFFFFFF" .. data.race) end
                        if data.faction then GameTooltip:AddLine(" ") GameTooltip:AddLine("Faction: |cFFFFFFFF" .. data.faction) end

                        GameTooltip:Show()
                    end)

                    icon:SetScript("OnLeave", GameTooltip_Hide)
                    xOffset = xOffset + UI.ICON_SIZE + UI.ICON_SPACING
                end
            end

            yOffset = yOffset - rowMaxHeight - UI.ROW_PADDING_BOTTOM
            
            totalSpellsShown = totalSpellsShown + visibleSpells
        end
    end

    local isKnownShown = knownCheck and knownCheck:IsShown()

    local isEnemySpellsShown = false
    if enemySpellsCount == 0 then
        enemySpellsCheck:SetShown(false)
        enemySpellsLabel:SetShown(false)
    else
        enemySpellsCheck:SetShown(true)
        enemySpellsLabel:SetShown(true)
        isEnemySpellsShown = true
    end

    local isTalentShown = false
    if talentCount == 0 then
        talentCheck:SetShown(false)
        talentLabel:SetShown(false)
    else
        talentCheck:SetShown(true)
        talentLabel:SetShown(true)
        isTalentShown = true
    end

    -- Sync checkbox checked state with model values
    if knownCheck then knownCheck:SetChecked(TFG.showKnown) end
    if talentCheck then talentCheck:SetChecked(TFG.showTalents) end
    if enemySpellsCheck then enemySpellsCheck:SetChecked(TFG.showEnemySpells) end

    if totalSpellsShown == 0 then
        if isProfession then
            local profName = getProfessionNameForCurrentView() or "?"
            local rowCount = (rowsToRender and #rowsToRender) or 0
            local dbType = type(TFG.activeDatabase)
            TFG_DebugLog(
                "EMPTY profession view",
                "prof=", tostring(profName),
                "rowsToRender=", tostring(rowCount),
                "category=", tostring(TFG.selectedCategory),
                "showKnown=", tostring(TFG.showKnown),
                "dbType=", tostring(dbType)
            )
        end
        message1:SetText("You've learned everything!")
        message1:SetShown(true)
        message2:SetText("Use the checkboxes above to see your spells")
        message2:SetShown(true)
    else
        message1:SetShown(false)
        message2:SetShown(false)
    end

    if (isKnownShown) then
        if (isTalentShown) then
            -- move talentCheck next to the knownCheck
            talentCheck:SetPoint("RIGHT", knownCheck, "LEFT", -(knownLabel:GetWidth()), 0)

            if (isEnemySpellsShown) then
                -- move enemySpellsLabel next to knownCheck
                enemySpellsLabel:SetPoint("LEFT", talentCheck, "RIGHT", -enemySpellsLabel:GetWidth() - 50, 0)
            end
        else
            -- move enemySpellsLabel next to knownCheck
            enemySpellsLabel:SetPoint("LEFT", knownCheck, "RIGHT", -enemySpellsLabel:GetWidth() - (knownLabel:GetWidth() + 20), 0)
        end
    else
        if (isTalentShown) then
            -- move talentCheck next to classDropdown (categoryDropdown may be hidden)
            talentCheck:SetPoint("RIGHT", classDropdown, "LEFT", -64, 2)

            if (isEnemySpellsShown) then
                -- move enemySpellsLabel next to talentCheck
                enemySpellsLabel:SetPoint("LEFT", talentCheck, "RIGHT", -enemySpellsLabel:GetWidth() - 46, 0)
            end
        else
            if (isEnemySpellsShown) then
                -- move enemySpellsLabel next to classDropdown
                enemySpellsLabel:SetPoint("LEFT", classDropdown, "RIGHT", -enemySpellsLabel:GetWidth() - 36, 2)
            end
        end
    end

    content:SetHeight(-yOffset)
end

frame:Relayout()

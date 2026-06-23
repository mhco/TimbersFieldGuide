local _, TFG = ...
local frame = TFG.frame
local UI    = TFG.UI

-- Player state is refreshed from game events later in this file.
local playerFaction
local playerRaceName
local playerRaceKey
local playerClass
local playerLevel

local function normalizeSkillKey(name)
    if not name then return "" end
    return string.gsub(tostring(name):upper(), " ", "_")
end

local RACE_ALIASES = {
    human = "HUMAN",
    dwarf = "DWARF",
    nightelf = "NIGHTELF",
    gnome = "GNOME",
    draenei = "DRAENEI",
    orc = "ORC",
    troll = "TROLL",
    tauren = "TAUREN",
    undead = "SCOURGE",
    scourge = "SCOURGE",
    bloodelf = "BLOODELF",
}

local function normalizeRaceKey(race)
    local compact = tostring(race or ""):lower():gsub("[^%a]", "")
    return RACE_ALIASES[compact] or compact:upper()
end

local function getRestrictedRaces(spell)
    if not spell then return nil end
    if type(spell.races) == "table" and #spell.races > 0 then
        return spell.races
    end
    if spell.race and tostring(spell.race) ~= "" then
        local races = {}
        for value in tostring(spell.race):gmatch("[^,;/]+") do
            races[#races + 1] = value:match("^%s*(.-)%s*$")
        end
        return races
    end
    return nil
end

local function matchesPlayerRace(spell)
    local races = getRestrictedRaces(spell)
    if not races then return true end
    for _, race in ipairs(races) do
        if normalizeRaceKey(race) == playerRaceKey then
            return true
        end
    end
    return false
end

local function formatRestrictedRaces(spell)
    local races = getRestrictedRaces(spell)
    return races and table.concat(races, ", ") or nil
end

local function getRaceRestrictionSignature(spell)
    local races = getRestrictedRaces(spell)
    if not races then return nil end
    local normalized = {}
    for _, race in ipairs(races) do
        normalized[#normalized + 1] = normalizeRaceKey(race)
    end
    table.sort(normalized)
    return table.concat(normalized, ",")
end

-- Data-model accessors live in Core/Model.lua; alias them as locals so the
-- existing call sites below read unchanged.
local getEffectivePhase = TFG.GetEffectivePhase
local isEntryAvailableInPhase = TFG.IsEntryAvailableInPhase
local getSpellId = TFG.GetSpellId
local getSpellTexture = TFG.GetSpellTexture
local getSpellRank = TFG.GetSpellRank
local isTalentSpell = TFG.IsTalentSpell
local isAnyTalentRankKnown = TFG.IsAnyTalentRankKnown
local hasSpellCategory = TFG.HasSpellCategory
local getTrainingCost = TFG.GetTrainingCost
local getProductItemId = TFG.GetProductItemId
local getProductQty = TFG.GetProductQty
local getMaterialItemId = TFG.GetMaterialItemId
local getMaterialQty = TFG.GetMaterialQty
local getRecipeSourceId = TFG.GetRecipeSourceId
local sourceTypeLabel = TFG.SourceTypeLabel
local buildSourceLine = TFG.BuildSourceLine
local resolveQuestTitle = TFG.ResolveQuestTitle
local getMaxExplicitPhase = TFG.GetMaxExplicitPhase
local MIDDOT = TFG.MIDDOT

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
    -- Classic Era cap
    if TFG.selectedExpansion and TFG.selectedExpansion:upper() == "CLASSIC_ERA" then
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

local function clearTable(tbl)
    for key in pairs(tbl) do
        tbl[key] = nil
    end
end

function TFG.RefreshPlayerState()
    playerFaction = UnitFactionGroup("player")
    local localizedRace, englishRace = UnitRace("player")
    playerRaceName = localizedRace or englishRace or "Unknown"
    playerRaceKey = normalizeRaceKey(englishRace or localizedRace)
    playerClass = select(2, UnitClass("player")) or ""
    playerLevel = tonumber(UnitLevel("player")) or 0

    clearTable(skillLevels)
    clearTable(skillCaps)

    for i = 1, GetNumSkillLines() do
        local skillName = select(1, GetSkillLineInfo(i))
        local isHeader = select(2, GetSkillLineInfo(i))
        local skillRank = select(4, GetSkillLineInfo(i))
        -- Return ordering differs by client; on Classic Era PTR, the cap appears to be select(7).
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
end

TFG.RefreshPlayerState()


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

-- Render width is the wrapping width for ability/recipe icons. It must track
-- whichever container the scroll view currently lives in: the legacy frame, or
-- the new navigation shell's content pane once TFG.MountEngineInto() re-hosts it.
local function getRenderWidth()
    if TFG._engineMounted and scrollFrame then
        local w = scrollFrame:GetWidth()
        if w and w > 1 then
            return w - UI.ICON_SPACING
        end
    end
    return frame:GetWidth() - UI.FRAME_PADDING_X
end

local renderPool = {
    labels = {},
    icons = {},
    labelCount = 0,
    iconCount = 0,
}

local function resetRenderPool()
    renderPool.labelCount = 0
    renderPool.iconCount = 0

    for _, label in ipairs(renderPool.labels) do
        label:Hide()
        label:ClearAllPoints()
    end

    for _, icon in ipairs(renderPool.icons) do
        icon:Hide()
        icon:EnableMouse(false)
        icon:ClearAllPoints()
        icon:SetScript("OnMouseDown", nil)
        icon:SetScript("OnEnter", nil)
        icon:SetScript("OnLeave", nil)
        icon.spellData = nil
        if icon.tfgKnownOverlay then icon.tfgKnownOverlay:Hide() end
        if icon.tfgRedOverlay then icon.tfgRedOverlay:Hide() end
        if icon.tfgBlueBorder then icon.tfgBlueBorder:Hide() end
        if icon.tfgClickableIndicator then icon.tfgClickableIndicator:Hide() end
        if icon.tfgTalentIndicator then icon.tfgTalentIndicator:Hide() end
        if icon.tfgPhaseIndicator then icon.tfgPhaseIndicator:Hide() end
    end
end

local function acquireRowLabel()
    renderPool.labelCount = renderPool.labelCount + 1
    local label = renderPool.labels[renderPool.labelCount]
    if not label then
        label = content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        renderPool.labels[renderPool.labelCount] = label
    end
    label:Show()
    label:ClearAllPoints()
    return label
end

local function acquireEntryIcon()
    renderPool.iconCount = renderPool.iconCount + 1
    local icon = renderPool.icons[renderPool.iconCount]
    if not icon then
        icon = content:CreateTexture(nil, "ARTWORK")
        renderPool.icons[renderPool.iconCount] = icon
    end
    icon:Show()
    icon:EnableMouse(false)
    icon:ClearAllPoints()
    return icon
end

local function isIconInsideScrollViewport(icon)
    if not icon or not icon:IsShown() then return false end

    local iconTop = icon:GetTop()
    local iconBottom = icon:GetBottom()
    local viewportTop = scrollFrame:GetTop()
    local viewportBottom = scrollFrame:GetBottom()
    if not iconTop or not iconBottom or not viewportTop or not viewportBottom then
        return false
    end

    return iconBottom < viewportTop and iconTop > viewportBottom
end

local function updateIconMouseState()
    for index = 1, renderPool.iconCount do
        local icon = renderPool.icons[index]
        if icon then
            local isInteractive = isIconInsideScrollViewport(icon)
            if not isInteractive then
                if GetMouseFocus and GetMouseFocus() == icon then
                    GameTooltip:Hide()
                end
                if TFG.professionPopup and TFG.professionPopup._anchor == icon then
                    TFG.professionPopup:Hide()
                end
            end
            icon:EnableMouse(isInteractive)
        end
    end
end

local lastVerticalScroll
local lastViewportTop
local lastViewportBottom
scrollFrame:HookScript("OnUpdate", function(self)
    local verticalScroll = self:GetVerticalScroll()
    local viewportTop = self:GetTop()
    local viewportBottom = self:GetBottom()
    if verticalScroll ~= lastVerticalScroll
        or viewportTop ~= lastViewportTop
        or viewportBottom ~= lastViewportBottom then
        lastVerticalScroll = verticalScroll
        lastViewportTop = viewportTop
        lastViewportBottom = viewportBottom
        updateIconMouseState()
    end
end)

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
    local selectionInfo = TFG.GetSelectionInfo(expansionObject, TFG.selectedFile)
    if selectionInfo and selectionInfo.parentKey == "professions" then return true end

    -- Special-case: Riding is modelled as a non-profession 'skill' dataset
    -- but should behave like a profession view for filtering/labeling.
    if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then
        return true
    end

    return false
end

local function extractCategoriesFromDatabase(database)
    local set = {}
    local hasDiscoveries = false
    for _, spells in pairs(database or {}) do
        if type(spells) == "table" then
            for _, spell in ipairs(spells) do
                if spell.categories and type(spell.categories) == "table" then
                    for _, cat in ipairs(spell.categories) do
                        if cat and cat ~= "" then
                            set[cat] = true
                        end
                    end
                elseif spell.category and spell.category ~= "" then
                    set[spell.category] = true
                end
            end
        end
    end

    hasDiscoveries = type(database and database[TFG.DISCOVERY_BUCKET]) == "table"
        and #database[TFG.DISCOVERY_BUCKET] > 0

    local list = { "ALL" }
    if hasDiscoveries then
        table.insert(list, "DISCOVERIES")
    end
    for c in pairs(set) do
        table.insert(list, c)
    end
    table.sort(list, function(a, b)
        if a == b then return false end
        if a == "ALL" then return true end
        if b == "ALL" then return false end
        -- Normal alphabetical sort for everything else (including DISCOVERIES).
        local aa = (a == "DISCOVERIES") and "Discoveries" or a
        local bb = (b == "DISCOVERIES") and "Discoveries" or b
        return aa < bb
    end)
    return list
end



-- Exposed so an external navigation shell can build its own Category/Phase
-- controls instead of the legacy in-frame dropdowns.
TFG.IsProfessionView = isProfessionView
function TFG.GetCategoryOptions()
    return extractCategoriesFromDatabase(TFG.activeDatabase)
end
function TFG.GetMaxPhase()
    return getMaxExplicitPhase(TFG.activeDatabase)
end


local function getProfessionLevelForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    -- (debug prints removed)
    if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then
        return getRidingLevel and getRidingLevel() or 0
    end
    -- Determine the profession name from the selected dropdown text.
    -- For professions we set selectedFile to "parent::childIndex"; use dropdown to map it back.
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return 0 end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return 0 end

    local selectionInfo = TFG.GetSelectionInfo(expansionObject, TFG.selectedFile)
    if not selectionInfo or selectionInfo.parentKey ~= "professions" then return 0 end

    local child = selectionInfo.child
    if not child or not child.name then return 0 end
    local profName = child.name

    -- Use existing skillLevels map (built from GetSkillLineInfo).
    local key = normalizeSkillKey(profName)
    return tonumber(skillLevels[key] or 0) or 0
end

-- Support treating Riding (a skills dataset) as a profession-like view.
local function getProfessionMaxCapForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then
        return getRidingMaxCap and getRidingMaxCap() or 0
    end
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return 0 end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return 0 end

    local selectionInfo = TFG.GetSelectionInfo(expansionObject, TFG.selectedFile)
    if not selectionInfo or selectionInfo.parentKey ~= "professions" then return 0 end

    local child = selectionInfo.child
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

local function getProfessionNameForCurrentView()
    -- Special-case Riding dataset: treat it as a profession-like view.
    if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then
        return getRidingName and getRidingName() or "Riding"
    end
    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
    if not expansionObject or not expansionObject.files then return nil end
    local professions = expansionObject.files and expansionObject.files.skills and expansionObject.files.skills.professions
    if not professions or not professions.children then return nil end

    local selectionInfo = TFG.GetSelectionInfo(expansionObject, TFG.selectedFile)
    if not selectionInfo or selectionInfo.parentKey ~= "professions" then return nil end

    local child = selectionInfo.child
    if not child or not child.name then return nil end
    return tostring(child.name)
end

-- Exposed for the recipe popup (which lives in UI/RecipePopup.lua).
TFG.GetProfessionName = getProfessionNameForCurrentView

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
-- Filter state (the navigation shell owns the controls; these are the defaults)
-- ==========================================================================
TFG.showEnemySpells = false
TFG.showTalents     = false
TFG.showKnown       = false
TFG.searchText      = "" -- name-only filter; stored lowercased by the UI


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
        if frame.ClampToScreen then
            frame:ClampToScreen()
        end
        if frame.SavePosition then
            frame:SavePosition()
        end
        frame:Relayout()
    end
end)

-- ========================================================================== 
-- Layout / Filtering
-- ==========================================================================
function frame:Relayout()
    TFG._stateDirty = false
    safeCloseProfessionPopup()
    resetRenderPool()
    content:SetSize(1,1)
    content:Show()

    local yOffset = -4
    local contentWidth = getRenderWidth()

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
    local selectedInfo = TFG.GetSelectionInfo(TFG.selectedExpansion, TFG.selectedFile)
    local selectedParentKey = selectedInfo and selectedInfo.parentKey
    local selectedParentUpper = selectedParentKey and (selectedParentKey:upper()) or nil
    local isClassView = (not isProfession) and (not TFG.isSkill)

    

    local function restrictionKey(spell)
        local faction = spell and spell.faction and tostring(spell.faction) or "*"
        local races = getRaceRestrictionSignature(spell) or "*"
        return faction .. "\031" .. races
    end

    local knownRanksByNameIcon = {}
    local knownRanksByGroup = {}
    TFG._knownTalentKeys = {}

    for _, spells in pairs(TFG.activeDatabase or {}) do
        if type(spells) == "table" then
            for _, spell in ipairs(spells) do
                local sid = getSpellId(spell)
                local applicable = (not spell.faction or spell.faction == playerFaction)
                    and matchesPlayerRace(spell)
                if applicable and sid and tonumber(sid) and tonumber(sid) > 0 and IsPlayerSpell(tonumber(sid)) then
                    local rank = getSpellRank(spell) or 0
                    local name = tostring(spell.name or "")
                    local icon = tostring(spell.icon or spell.texture or "")
                    local restrictions = restrictionKey(spell)

                    if name ~= "" then
                        local key = name .. "\031" .. icon .. "\031" .. restrictions
                        knownRanksByNameIcon[key] = math.max(knownRanksByNameIcon[key] or 0, rank)
                    end
                    if spell.group and tostring(spell.group) ~= "" then
                        local key = tostring(spell.group) .. "\031" .. restrictions
                        knownRanksByGroup[key] = math.max(knownRanksByGroup[key] or 0, rank)
                    end
                    if isTalentSpell(spell) and name ~= "" then
                        TFG._knownTalentKeys[name .. "\031" .. tostring(spell.icon or "")] = true
                    end
                end
            end
        end
    end

    local function getHighestKnownRankForSpellName(spellName, targetSpell)
        if not spellName or tostring(spellName) == "" then return nil end
        if targetSpell then
            if targetSpell.faction and targetSpell.faction ~= playerFaction then return nil end
            if not matchesPlayerRace(targetSpell) then return nil end
        end
        local icon = tostring(targetSpell and (targetSpell.icon or targetSpell.texture) or "")
        return knownRanksByNameIcon[
            tostring(spellName) .. "\031" .. icon .. "\031" .. restrictionKey(targetSpell)
        ]
    end

    local function getHighestKnownRankForGroup(groupKey, targetSpell)
        if not groupKey or tostring(groupKey) == "" then return nil end
        if targetSpell then
            if targetSpell.faction and targetSpell.faction ~= playerFaction then return nil end
            if not matchesPlayerRace(targetSpell) then return nil end
        end
        return knownRanksByGroup[tostring(groupKey) .. "\031" .. restrictionKey(targetSpell)]
    end

    local function isSpellKnownDBAware(sid, spellObj)
        if not sid or tonumber(sid) == nil then return false end
        sid = tonumber(sid)
        if sid <= 0 then return false end
        -- Quick check: exact spell id present in player's book
        if IsPlayerSpell(sid) then
            return true
        end

        -- If the DB entry itself has faction/race restrictions and the player
        -- does not match them, the spell can never be considered known.
        if spellObj then
            if spellObj.faction and tostring(spellObj.faction) ~= "" and spellObj.faction ~= playerFaction then
                return false
            end
            if not matchesPlayerRace(spellObj) then
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
    -- Whether the Known filter applies to the current view, published to the nav
    -- shell via TFG._filterAvailability: non-profession views always; profession
    -- views only when the player has that profession; class views only for the
    -- player's own class (Riding is treated as eligible).
    local knownApplicable
    if isProfession then
        knownApplicable = hasProfession
    elseif isClassView then
        knownApplicable = (selectedUpper == (playerClass or ""):upper())
            or (selectedParentUpper == (playerClass or ""):upper())
            or selectedUpper == "RIDING"
    else
        knownApplicable = true
    end
    if not knownApplicable then
        TFG.showKnown = false
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
                    if s and hasSpellCategory(s, "Profession Training") then
                        local sSpellId = getSpellId(s)
                        if not anyTrainingSpellId and sSpellId then
                            anyTrainingSpellId = sSpellId
                        end
                        local sTexture = getSpellTexture(s)
                        if not anyTrainingTexture and sTexture and tostring(sTexture) ~= "" then
                            anyTrainingTexture = sTexture
                        end

                        -- Prefer the first resolvable spell icon immediately.
                        if sSpellId then
                            local tex = select(3, GetSpellInfo(sSpellId))
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
        local selectionInfo = TFG.GetSelectionInfo(TFG.selectedExpansion, TFG.selectedFile)
        if selectionInfo and selectionInfo.child and selectionInfo.child.name then
            return normalizeSkillKey(selectionInfo.child.name)
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
                level = r.level,
                isDiscovery = r.isDiscovery,
                _tfgDisplayLabel = r._tfgDisplayLabel,
                _tfgIsClassGroup = r._tfgIsClassGroup,
                _tfgClassKey = r._tfgClassKey,
                spells = r.spells, -- reference for now; we will copy if we modify
            }
        end
        return out
    end

    -- Add rank unlock entries into the *existing* brackets so we don't create duplicate "Skill N" groups.
    -- Each unlock is represented as a synthetic pseudo-spell entry within that skill bracket.
    local function addProfessionRankUnlocksIntoRows(baseRows)
        -- Skip for non-profession views. Also skip injecting synthetic unlocks for
        -- the Riding dataset (it's a skills DB modelled as a profession but
        -- should not get synthetic unlock entries which would hide the raw spells).
        if not isProfession then return baseRows end
        if TFG and TFG.RIDING_BURNING_CRUSADE and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE then return baseRows end

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
                            local sSpellId = getSpellId(s)
                            if s and hasSpellCategory(s, "Profession Training") and sSpellId then
                                dbgTrainingCount = dbgTrainingCount + 1
                                if sSpellId > 0 then
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
                                            trainingSpellId = sSpellId,
                                            texture = getSpellTexture(s),
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
                        level = r.level or lvl,
                        isDiscovery = r.isDiscovery,
                        _tfgDisplayLabel = r._tfgDisplayLabel,
                        _tfgIsClassGroup = r._tfgIsClassGroup,
                        _tfgClassKey = r._tfgClassKey,
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
            elseif r.isDiscovery then
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

                -- Record the cap this bracket's training unlocks (not just a flag)
                -- so the raw "Profession Training" spell at this bracket can be
                -- marked known by cap in entryIsKnown.
                syntheticUnlockByBracket[displayBracket] = newCap
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
                if r.isDiscovery then return TFG.DISCOVERY_BUCKET end
                return tonumber(tostring(r.label or ""):match("%d+")) or 0
            end
            return lvl(a) < lvl(b)
        end)

        return baseRows
    end

    -- Build rows differently for skill datasets when a per-file __CONFIG.mode is present.
    local db = TFG.activeDatabase
    local function buildSkillRowsFromConfig()
        if type(db) ~= "table" then return nil end
        local meta = db.__CONFIG or {}
        local mode = meta.mode
        if not mode then return nil end

        -- Mode: class -> treat top-level DB keys as class buckets (player class first)
        if mode == "class" then
            local out = {}
            local keys = {}
            local playerKey = (playerClass or ""):lower()
            if db[playerKey] then table.insert(keys, playerKey) end
            for k, v in pairs(db) do
                if k ~= "__CONFIG" and k ~= playerKey and type(v) == "table" then
                    table.insert(keys, k)
                end
            end
            table.sort(keys, function(a,b) return a < b end)
            local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion]
            for _, k in ipairs(keys) do
                local spells = db[k] or {}
                local display = k
                if expansionObject and expansionObject.files and expansionObject.files.classes and expansionObject.files.classes[k] and expansionObject.files.classes[k].name then
                    display = expansionObject.files.classes[k].name
                else
                    display = (tostring(k):sub(1,1):upper() .. tostring(k):sub(2))
                end
                -- Use a high numeric label so existing numeric-based logic does not
                -- treat this bucket as a level threshold. Store the human-facing
                -- label separately for rendering.
                table.insert(out, { label = "Level 9999", spells = spells, _tfgDisplayLabel = display, _tfgIsClassGroup = true, _tfgClassKey = k })
            end
            return out
        end

        -- Mode: skill -> group by a numeric required/level field on each entry
        if mode == "skill" then
            local byReq = {}
            for _, bucket in pairs(db) do
                if type(bucket) == "table" then
                    for _, s in ipairs(bucket) do
                        if type(s) == "table" then
                            local req = tonumber(s.required) or tonumber(s.level) or 0
                            byReq[req] = byReq[req] or {}
                            table.insert(byReq[req], s)
                        end
                    end
                end
            end
            local out = {}
            for req, list in pairs(byReq) do
                table.insert(out, { label = "Level " .. tostring(req), spells = list })
            end
            table.sort(out, function(a,b)
                return (tonumber(a.label:match("%d+")) or 0) < (tonumber(b.label:match("%d+")) or 0)
            end)
            return out
        end

        return nil
    end

    local rowsToRender = nil
    if TFG.isSkill then
        local custom = buildSkillRowsFromConfig()
        if custom then
            rowsToRender = addProfessionRankUnlocksIntoRows(custom)
        else
            rowsToRender = addProfessionRankUnlocksIntoRows(shallowCopyRows(TFG.rows))
        end
    else
        rowsToRender = addProfessionRankUnlocksIntoRows(shallowCopyRows(TFG.rows))
    end

    local syntheticUnlockByBracket = rowsToRender and rowsToRender._tfgSyntheticUnlockByBracket
    local knownFilteredCount = 0

    local function entryIsKnown(spell, row, levelRequired)
        if not spell then return false end

        if spell._tfgType == "PROFESSION_RANK_UNLOCK" then
            local unlockCap = tonumber(spell.required) or 0
            local trainingSpellId = tonumber(spell.trainingSpellId)
            return (professionMaxCap > 0 and unlockCap > 0 and professionMaxCap >= unlockCap)
                or (trainingSpellId and trainingSpellId > 0 and IsPlayerSpell(trainingSpellId))
                or false
        end

        local spellId = getSpellId(spell)
        if isProfession then
            if not spellId or spellId <= 0 then return false end
            if TFG.RIDING_BURNING_CRUSADE
                and TFG.activeDatabase == TFG.RIDING_BURNING_CRUSADE
                and spell.name
                and getSpellRank(spell) then
                local knownRank = getHighestKnownRankForSpellName(spell.name, spell)
                if knownRank and knownRank >= (getSpellRank(spell) or 0) then
                    return true
                end
            end

            -- Raw "Profession Training" rank spells (Apprentice/Journeyman/...)
            -- are known once the player's skill cap reaches the tier they unlock.
            -- IsPlayerSpell is unreliable for these, so use the per-bracket cap
            -- recorded by the rank-unlock builder (same signal the synthetic
            -- unlock entries use).
            if hasSpellCategory(spell, "Profession Training") then
                local unlockCap = syntheticUnlockByBracket and syntheticUnlockByBracket[levelRequired]
                if type(unlockCap) == "number" and professionMaxCap > 0 and professionMaxCap >= unlockCap then
                    return true
                end
            end

            return isSpellKnownDBAware(spellId, spell)
        end

        if TFG.isSkill then
            if row and row._tfgIsClassGroup then
                return spellId and spellId > 0 and IsPlayerSpell(spellId) or false
            end

            local required = tonumber(levelRequired) or 0
            local playerSkill = tonumber(skillLevels[resolveSelectedSkillKey()] or 0) or 0
            return playerSkill >= required
                or (spellId and spellId > 0 and IsPlayerSpell(spellId))
                or false
        end

        return isSpellKnownDBAware(spellId, spell)
    end

    local function shouldHideEntry(spell, row, levelRequired)
        -- Name-only search filter (applies to every view). TFG.searchText is
        -- stored lowercased; plain (non-pattern) substring match.
        if TFG.searchText and TFG.searchText ~= "" then
            local haystack = (spell and spell.name) and tostring(spell.name):lower() or ""
            -- Profession rank-unlock rows have an internal name like "Train Master"
            -- but display a synthetic tooltip title ("<Profession> Skill Unlock:
            -- <Rank>"). Make that wording searchable too, so e.g. "fishing skill"
            -- finds them -- matching what the tooltip shows.
            if spell and spell._tfgType == "PROFESSION_RANK_UNLOCK" then
                haystack = haystack .. " "
                    .. (profName and tostring(profName):lower() or "")
                    .. " skill unlock "
                    .. tostring(spell.rankName or ""):lower()
            end
            if not haystack:find(TFG.searchText, 1, true) then
                return true, "search"
            end
        end

        if isProfession and not isEntryAvailableInPhase(spell) then
            return true, "phase"
        end

        local isProfessionTraining = isProfession and spell and hasSpellCategory(spell, "Profession Training")

        if isProfessionTraining
            and TFG.selectedCategory ~= "Profession Training"
            and syntheticUnlockByBracket
            and syntheticUnlockByBracket[levelRequired] then
            return true, "syntheticUnlock"
        end

        if isProfession and TFG.selectedCategory and TFG.selectedCategory ~= "ALL" then
            local isDiscovery = row.isDiscovery or levelRequired == TFG.DISCOVERY_BUCKET
            if TFG.selectedCategory == "DISCOVERIES" then
                if not isDiscovery then return true, "category" end
            elseif not hasSpellCategory(spell, TFG.selectedCategory) then
                return true, "category"
            end
        end

        if isTalentSpell(spell) and not TFG.showTalents and not isAnyTalentRankKnown(spell) then
            return true, "talent"
        end

        if not TFG.showEnemySpells then
            if spell.faction and spell.faction ~= playerFaction then
                return true, "faction"
            end
            if not matchesPlayerRace(spell) then
                return true, "race"
            end
        end

        -- Apply the known filter last so the fully-learned empty state only
        -- counts entries that otherwise match every active filter.
        if not TFG.showKnown and entryIsKnown(spell, row, levelRequired) then
            return true, "known"
        end

        return false, nil
    end

    for _, row in ipairs(rowsToRender) do
        local visibleSpells = 0
        local levelRequired = tonumber(row.level) or tonumber(row.label:match("%d+")) or 0

        for _, spell in ipairs(row.spells) do
            if (not isProfession) or isEntryAvailableInPhase(spell) then
                if spell.faction or getRestrictedRaces(spell) then enemySpellsCount = enemySpellsCount + 1 end
                if isTalentSpell(spell) then talentCount = talentCount + 1 end
            end

            local hide, hideReason = shouldHideEntry(spell, row, levelRequired)
            if not hide then
                visibleSpells = visibleSpells + 1
            elseif hideReason == "known" then
                knownFilteredCount = knownFilteredCount + 1
            end
        end

        if visibleSpells > 0 then
            local label = acquireRowLabel()
            label:SetFont(label:GetFont(), 18, "OUTLINE")

            -- Determine active DB mode (e.g. class/skill/level) to influence header coloring.
            local activeMode = nil
            if TFG and TFG.activeDatabase and type(TFG.activeDatabase) == "table" then
                activeMode = TFG.activeDatabase.__CONFIG and TFG.activeDatabase.__CONFIG.mode
            end

            if isProfession then
                -- Match class-style coloring:
                --  * Green if your profession skill meets/exceeds the bracket
                --  * White otherwise
                --  * Do not color Discoveries
                if not row.isDiscovery and ((tostring(activeMode) == "level" and playerLevel >= levelRequired) or (tostring(activeMode) ~= "level" and professionLevel >= levelRequired)) then
                    label:SetTextColor(0.5, 1, 0)
                else
                    label:SetTextColor(1, 1, 1)
                end
            else
                -- If this row was created from a class-mode skill grouping, prefer
                -- the neutral (white) header color and skip numeric-level checks.
                if row and row._tfgIsClassGroup then
                    -- Color the player's class bucket green to match class-ability coloring.
                    if row._tfgClassKey and tostring(row._tfgClassKey):lower() == ((playerClass or ""):lower()) then
                        label:SetTextColor(0.5, 1, 0)
                    else
                        label:SetTextColor(1,1,1)
                    end
                else
                local function _getSelectedSkillLevel()
                    local key = resolveSelectedSkillKey()
                    return tonumber(skillLevels[key] or 0) or 0
                end
                if (isProfession and professionLevel >= levelRequired) or ((TFG.isSkill and not isProfession and _getSelectedSkillLevel() >= levelRequired) or (not TFG.isSkill and ((playerClass:upper() == TFG.selectedFile:upper()) and playerLevel >= levelRequired)) or (tostring(activeMode) == "level" and playerLevel >= levelRequired)) then
                    label:SetTextColor(0.5, 1, 0)
                else
                    label:SetTextColor(1, 1, 1)
                end
                end
            end

            label:SetPoint("TOPLEFT", 0, yOffset)
                if row and row._tfgDisplayLabel then
                    label:SetText(row._tfgDisplayLabel)
                else
                    if isProfession then
                        if row.isDiscovery then
                            label:SetText("Discoveries")
                        else
                            -- If this profession-like view originates from a skill DB configured
                            -- with mode = "level", prefer the "Level" label instead of "Skill".
                            local mode = nil
                            if TFG and TFG.activeDatabase and type(TFG.activeDatabase) == "table" then
                                mode = TFG.activeDatabase.__CONFIG and TFG.activeDatabase.__CONFIG.mode
                            end
                            if mode and tostring(mode) == "level" then
                                label:SetText("Level " .. levelRequired)
                            else
                                label:SetText("Skill " .. levelRequired)
                            end
                        end
                    else
                        label:SetText("Level " .. levelRequired)
                    end
                end
            yOffset = yOffset - label:GetHeight() - 8

            local xOffset = 0
            local rowMaxHeight = UI.ICON_SIZE

            for _, spell in ipairs(row.spells) do
                local hide = shouldHideEntry(spell, row, levelRequired)

                if not hide then
                    if xOffset + UI.ICON_SIZE > contentWidth then
                        xOffset = 0
                        yOffset = yOffset - rowMaxHeight - UI.ICON_SPACING
                    end

                    local icon = acquireEntryIcon()
                    icon:SetSize(UI.ICON_SIZE, UI.ICON_SIZE)
                    icon:SetPoint("TOPLEFT", xOffset, yOffset)
                    -- Resolve texture: prefer explicit texture, then spell icon, then item icon if present.
                    local tex = getSpellTexture(spell)
                    if not tex then
                        local sid = getSpellId(spell)
                        if sid and sid > 0 then
                            tex = select(3, GetSpellInfo(sid))
                        else
                            -- Some entries represent items (product/source) rather than spells.
                            local itemId = getProductItemId(spell) or getRecipeSourceId(spell) or (spell and spell.itemId)
                            if itemId then
                                tex = select(10, GetItemInfo(itemId))
                            end
                        end
                    end
                    icon:SetTexture(tex or "Interface/ICONS/INV_Misc_QuestionMark")
                    icon.spellData = spell
                    icon:EnableMouse(false)

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

                    -- Blue border highlight for icons with active popup.
                    if not icon.tfgBlueBorder then
                        local bov = content:CreateTexture(nil, "OVERLAY")
                        bov:SetTexture("Interface\\Buttons\\UI-ActionButton-Border")
                        bov:SetBlendMode("ADD")
                        bov:SetVertexColor(0.3, 0.5, 1, 1)
                        bov:SetPoint("CENTER", icon, "CENTER", 0, 0)
                        bov:SetSize(UI.ICON_SIZE * 1.4, UI.ICON_SIZE * 1.4)
                        bov:Hide()
                        icon.tfgBlueBorder = bov
                    end

                    -- Clickable indicator "+" in bottom-right corner for icons with popup content
                    if not icon.tfgClickableIndicator then
                        local indicator = content:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                        indicator:SetPoint("BOTTOMRIGHT", icon, "BOTTOMRIGHT", -2, 2)
                        indicator:SetText("+")
                        indicator:SetTextColor(1, 1, 1)
                        indicator:SetShadowOffset(1, -1)
                        indicator:SetShadowColor(0, 0, 0, 1)
                        indicator:Hide()
                        icon.tfgClickableIndicator = indicator
                    end

                    -- Determine if this icon would show a popup
                    local recipeSourceId = getRecipeSourceId(spell)
                    -- Show recipe item if recipe_item_ids exists, regardless of source type
                    local hasRecipeItem = (recipeSourceId and recipeSourceId > 0)
                    local productItemId = getProductItemId(spell)
                    local hasProduct = (productItemId and productItemId > 0)
                    local hasMaterials = (spell and spell.materials
                        and type(spell.materials) == "table" and #spell.materials > 0)
                    local hasSourceInfo = (#TFG.GetSources(spell) > 0)
                    local wouldShowPopup = hasRecipeItem or hasProduct or hasMaterials or hasSourceInfo

                    -- Show the clickable indicator only if popup would appear
                    if wouldShowPopup and icon.tfgClickableIndicator then
                        icon.tfgClickableIndicator:Show()
                    elseif icon.tfgClickableIndicator then
                        icon.tfgClickableIndicator:Hide()
                    end

                    -- Phase indicator in the top-right corner for phased
                    -- profession entries. Phase 1 and unrestricted entries
                    -- intentionally have no badge.
                    if not icon.tfgPhaseIndicator then
                        local phaseInd = content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
                        phaseInd:SetPoint("TOPRIGHT", icon, "TOPRIGHT", -2, -2)
                        phaseInd:SetTextColor(1, 1, 1)
                        phaseInd:SetShadowOffset(1, -1)
                        phaseInd:SetShadowColor(0, 0, 0, 1)
                        phaseInd:Hide()
                        icon.tfgPhaseIndicator = phaseInd
                    end

                    local iconPhase = getEffectivePhase(spell)
                    if isProfession and iconPhase and iconPhase > 1 then
                        icon.tfgPhaseIndicator:SetText("P" .. tostring(iconPhase))
                        icon.tfgPhaseIndicator:Show()
                    else
                        icon.tfgPhaseIndicator:Hide()
                    end

                    -- Talent indicator "T" in top-right corner for talent spells in class views
                    if not icon.tfgTalentIndicator then
                        local talentInd = content:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
                        talentInd:SetPoint("TOPRIGHT", icon, "TOPRIGHT", -2, -2)
                        talentInd:SetText("T")
                        talentInd:SetTextColor(1, 1, 1)
                        talentInd:SetShadowOffset(1, -1)
                        talentInd:SetShadowColor(0, 0, 0, 1)
                        talentInd:Hide()
                        icon.tfgTalentIndicator = talentInd
                    end

                    -- Show talent indicator for talents in class views
                    if isClassView and isTalentSpell(spell) and icon.tfgTalentIndicator then
                        icon.tfgTalentIndicator:Show()
                    elseif icon.tfgTalentIndicator then
                        icon.tfgTalentIndicator:Hide()
                    end

                    -- Persisted red marks table
                    TimbersFieldGuideDB = TimbersFieldGuideDB or {}
                    TimbersFieldGuideDB.redMarked = TimbersFieldGuideDB.redMarked or {}

                    if entryIsKnown(spell, row, levelRequired) then
                        icon.tfgKnownOverlay:Show()
                        -- If the spell became known, clear any previously set red mark
                        local spellIdForMark = getSpellId(spell)
                        if spellIdForMark then
                            TimbersFieldGuideDB.redMarked[tostring(spellIdForMark)] = nil
                            if icon.tfgRedOverlay then icon.tfgRedOverlay:Hide() end
                        end
                    else
                        icon.tfgKnownOverlay:Hide()
                        -- Show red overlay if user previously marked this unlearned ability
                        local spellIdForMark = getSpellId(spell)
                        if spellIdForMark and TimbersFieldGuideDB.redMarked[tostring(spellIdForMark)] then
                            icon.tfgRedOverlay:Show()
                        else
                            icon.tfgRedOverlay:Hide()
                        end
                    end

                    icon:SetScript("OnMouseDown", function(self, button)
                        if not isIconInsideScrollViewport(self) then return end
                        if button == "LeftButton" then
                            -- Rank unlock rows are informational; no popup.
                            if self.spellData and self.spellData._tfgType == "PROFESSION_RANK_UNLOCK" then
                                return
                            end

                            local data = self.spellData
                            local popup = TFG.EnsureProfessionPopup()
                            popup:ShowForSpell(self, data)
                            return
                        end

                        -- Right-click: allow marking unlearned class abilities with a red overlay.
                        if button == "RightButton" then
                            -- Allow marking in any view (class/skill/profession). Only require a valid spell id.
                            local sp = self.spellData
                            local sid = getSpellId(sp)
                            if not sid or sid <= 0 then return end

                            -- Only allow marking if the entry is currently not known
                            if entryIsKnown(sp, row, levelRequired) then
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
                        if not isIconInsideScrollViewport(self) then
                            GameTooltip:Hide()
                            return
                        end
                        local data = self.spellData

                        if data and data._tfgType == "PROFESSION_RANK_UNLOCK" then
                            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                            local req = tonumber(data.required) or 0
                            local trainAt = tonumber(data.effectiveTrainAt) or tonumber(data.trainAt) or levelRequired
                            local rankName = (data.rankName and tostring(data.rankName) ~= "") and tostring(data.rankName) or "Rank"

                            local profName = "Profession"
                            do
                                local selectionInfo = TFG.GetSelectionInfo(TFG.selectedExpansion, TFG.selectedFile)
                                local child = selectionInfo and selectionInfo.child
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
                                        if s and hasSpellCategory(s, "Profession Training") and getSpellId(s) then
                                            trainingSpellId = getSpellId(s)
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
                                                if s and hasSpellCategory(s, "Profession Training") and getSpellId(s) then
                                                    local diff = math.abs(lvl - (tonumber(trainAt) or 0))
                                                    if not bestDiff or diff < bestDiff then
                                                        bestDiff = diff
                                                        bestId = getSpellId(s)
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
                                            if s and hasSpellCategory(s, "Profession Training") and getSpellId(s) and (getSpellId(s) == tonumber(data.trainingSpellId)) then
                                                trainingSpellId = getSpellId(s)
                                                break
                                            end
                                        end
                                        if trainingSpellId then break end
                                    end
                                end
                            end

                            -- Show the skill range this rank covers: from the
                            -- previous tier's cap (tiers are 75 apart) up to this
                            -- rank's cap, e.g. Master = "300-375".
                            local rangeLow = (req > 75) and (req - 75) or 1
                            local titleText = profName .. " Skill Unlock: " .. rankName .. " (" .. tostring(rangeLow) .. "-" .. tostring(req) .. ")"
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
                        local sid = getSpellId(data)
                        if sid and sid > 0 then
                            GameTooltip:SetSpellByID(sid)
                        else
                            -- Fallback: try to show item tooltip for product/source items.
                            local itemId = getProductItemId(data) or getRecipeSourceId(data) or (data and data.itemId)
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
                                -- Check if popup would be shown
                                local tooltipRecipeId = getRecipeSourceId(data)
                                -- Show recipe item if recipe_item_ids exists, regardless of source type
                                local hasRecipeItem = (tooltipRecipeId and tooltipRecipeId > 0)
                                local tooltipProductId = getProductItemId(data)
                                local hasProduct = (tooltipProductId and tooltipProductId > 0)
                                local hasMaterials = (data and data.materials
                                    and type(data.materials) == "table" and #data.materials > 0)
                                local wouldShowPopup = hasRecipeItem or hasProduct or hasMaterials

                                GameTooltip:AddLine(" ")
                                GameTooltip:AddLine(table.concat(parts, "  "))

                                -- Show one line per source (type, location, cost,
                                -- phase, faction).
                                for _, s in ipairs(TFG.GetSources(data)) do
                                    GameTooltip:AddLine("Source: " .. buildSourceLine(s), 0.8, 0.8, 0.8)
                                end

                                if wouldShowPopup then
                                    GameTooltip:AddLine(" ")
                                    GameTooltip:AddLine("Left click for details", 1, 1, 0)
                                end
                            end
                        end

                        -- NOTE: Source/location/cost info is intentionally not shown on the main list tooltip.
                        -- It is shown only on the popup's recipe-source icon tooltip.

                        local currentPhase = tonumber(
                            TFG.DATABASE_FILES[TFG.selectedExpansion]
                                and TFG.DATABASE_FILES[TFG.selectedExpansion].currentPhase
                        )
                        local entryPhase = getEffectivePhase(data)
                        if isProfession and currentPhase and entryPhase and entryPhase > currentPhase then
                            GameTooltip:AddLine(" ")
                            GameTooltip:AddLine("Introduced in Phase " .. tostring(entryPhase), 0.45, 0.75, 1)
                        end

                        local tooltipRank = getSpellRank(data)
                        if tooltipRank and tooltipRank > 0 then
                            GameTooltip:AddLine(" ")
                            GameTooltip:AddLine("Rank: |cFFFFFFFF" .. tooltipRank)
                        end

                        local tooltipCost = getTrainingCost(data)
                        if tooltipCost and tooltipCost > 0 then
                            local costText = TFG.FormatCost(tooltipCost)
                            if costText then
                                local color = (GetMoney() < tooltipCost) and "|cFFFF0000" or "|cFFFFFFFF"
                                GameTooltip:AddLine(" ")
                                GameTooltip:AddLine("Cost: " .. color .. costText)
                            end
                        end

                        if isTalentSpell(data) then GameTooltip:AddLine(" ") GameTooltip:AddLine("Talent") end
                        local restrictedRaces = formatRestrictedRaces(data)
                        if restrictedRaces then
                            GameTooltip:AddLine(" ")
                            GameTooltip:AddLine("Races: |cFFFFFFFF" .. restrictedRaces)
                        end
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

    local isKnownShown = knownApplicable
    local isEnemySpellsShown = enemySpellsCount > 0
    local isTalentShown = talentCount > 0

    -- Publish which filters are applicable to the current view so an external
    -- navigation shell can show/hide its own filter controls, then notify it
    -- that a relayout finished. (isKnownShown reflects the engine's own
    -- show/hide rules even though the legacy checkbox is parented to a hidden
    -- frame, because IsShown() tracks the object's flag, not effective view.)
    TFG._filterAvailability = {
        known = isKnownShown and true or false,
        talent = isTalentShown,
        enemy = isEnemySpellsShown,
    }
    if type(TFG.OnAfterRelayout) == "function" then
        pcall(TFG.OnAfterRelayout)
    end

    if not TFG.viewAvailable then
        message1:SetText("This view is not available for this expansion")
        message1:SetShown(true)
        message2:SetText("Please select a different view")
        message2:SetShown(true)
    elseif totalSpellsShown == 0 and knownFilteredCount > 0 and not TFG.showKnown then
        message1:SetText("You've learned everything!")
        message1:SetShown(true)
        message2:SetText("Use the checkboxes above to see your spells")
        message2:SetShown(true)
    elseif totalSpellsShown == 0 then
        message1:SetText("No entries match the current filters")
        message1:SetShown(true)
        message2:SetText("Try another category, phase, or checkbox")
        message2:SetShown(true)
    else
        message1:SetShown(false)
        message2:SetShown(false)
    end

    content:SetHeight(-yOffset)
    lastVerticalScroll = nil
    updateIconMouseState()
end

local relayoutQueued = false

-- "Is the guide currently on screen?" Once the engine is mounted into the new
-- shell, visibility follows the host pane rather than the hidden legacy frame.
local function isGuideVisible()
    if TFG._engineMounted then
        return TFG._hostPane and TFG._hostPane:IsVisible() or false
    end
    return frame:IsShown()
end
TFG.IsGuideVisible = isGuideVisible

function TFG.RequestRelayout()
    TFG._stateDirty = true
    if not frame or not isGuideVisible() or relayoutQueued then return end

    relayoutQueued = true
    local function run()
        relayoutQueued = false
        if not isGuideVisible() then return end
        TFG._stateDirty = false
        frame:Relayout()
    end

    if C_Timer and C_Timer.After then
        C_Timer.After(0, run)
    else
        run()
    end
end

local stateEvents = CreateFrame("Frame")
for _, eventName in ipairs({
    "PLAYER_ENTERING_WORLD",
    "PLAYER_LEVEL_UP",
    "SKILL_LINES_CHANGED",
    "SPELLS_CHANGED",
    "LEARNED_SPELL_IN_TAB",
}) do
    pcall(stateEvents.RegisterEvent, stateEvents, eventName)
end
stateEvents:SetScript("OnEvent", function()
    TFG.RefreshPlayerState()
    TFG.RequestRelayout()
end)

frame:HookScript("OnShow", function()
    if TFG._stateDirty then
        TFG.RefreshPlayerState()
        TFG.RequestRelayout()
    end
end)

-- ==========================================================================
-- External host mount (new navigation shell)
-- ==========================================================================
-- Re-host the live render output -- the scroll view, the empty-state messages,
-- and the profession popup -- inside a content pane owned by the new UI shell.
-- The legacy frame stays hidden, so its dropdowns and checkboxes (children of
-- that hidden frame) never render; the shell supplies its own navigation and
-- filter controls and drives the same TFG.* state. Width tracking switches to
-- the mounted pane automatically via getRenderWidth().
function TFG.MountEngineInto(pane)
    if not pane then return end
    TFG._engineMounted = true
    TFG._hostPane = pane

    scrollFrame:SetParent(pane)
    scrollFrame:ClearAllPoints()
    -- Leave room on the right for the scrollbar that ships with the template.
    scrollFrame:SetPoint("TOPLEFT", pane, "TOPLEFT", 0, 0)
    scrollFrame:SetPoint("BOTTOMRIGHT", pane, "BOTTOMRIGHT", -22, 0)

    message1:SetParent(pane)
    message1:ClearAllPoints()
    message1:SetPoint("CENTER", pane, "CENTER", 0, 20)
    message2:SetParent(pane)
    message2:ClearAllPoints()
    message2:SetPoint("CENTER", pane, "CENTER", 0, -20)

    if TFG.professionPopup then
        TFG.professionPopup:SetParent(pane)
    end

    if frame:IsShown() then
        frame:Hide()
    end
    TFG.RequestRelayout()
end

frame:Relayout()

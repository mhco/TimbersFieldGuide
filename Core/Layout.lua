local _, TFG = ...
local frame = TFG.frame
local UI    = TFG.UI

-- Get player attributes
local playerFaction = UnitFactionGroup("player")
local playerRace = UnitRace("player")
local playerClass = select(2, UnitClass("player"))
local playerLevel = UnitLevel("player")

local skillLevels = {}
for i=1,GetNumSkillLines(),1 do
    skillName = select(1, GetSkillLineInfo(i))
    isHeader = select(2, GetSkillLineInfo(i))
    skillLevel = select(4, GetSkillLineInfo(i))

    if not isHeader then
        --table.insert(skillLevels, {name = skillName, level = skillLevel})
        skillLevels[string.gsub(skillName:upper(), " ", "_")] = skillLevel
    end
end

-- ========================================================================== 
-- Scroll frame (no background)
-- ==========================================================================
local scrollBG = CreateFrame("Frame", nil, frame, "BackdropTemplate")
frame.scrollBG = scrollBG

scrollBG:SetPoint("TOPLEFT", 16, -UI.TITLEBAR_HEIGHT - 4)
scrollBG:SetPoint("BOTTOMRIGHT", -32, 16)

local scrollFrame = CreateFrame("ScrollFrame", nil, scrollBG, "UIPanelScrollFrameTemplate")
scrollFrame:SetAllPoints()

local content = CreateFrame("Frame", nil, scrollFrame)
content:SetSize(1,1)
scrollFrame:SetScrollChild(content)

-- ========================================================================== 
-- Messages to the user
-- ==========================================================================
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
classDropdown:SetPoint("TOPRIGHT", scrollBG, "TOPRIGHT", 0, -4)

local function populateFileDropdown(initialRun)
    -- Create a list of class names for the dropdown list
    local classList = {}
    for _, classObject in pairs(TFG.DATABASE_FILES[TFG.selectedExpansion]["files"]["classes"]) do
        table.insert(classList, classObject["name"])
    end
    table.sort(classList)

    -- Create a list of skill files for the dropdown list
    local skillsList = {}
    for _, skillsObject in pairs(TFG.DATABASE_FILES[TFG.selectedExpansion]["files"]["skills"]) do
        table.insert(skillsList, skillsObject["name"])
    end
    table.sort(skillsList)

    -- Merge the two lists (classes and other files)
    local fileDropdownList = classList
    for _, v in ipairs(skillsList) do
        table.insert(fileDropdownList, v)
    end

    local doesSelectedFileExist = false
    for _, row in ipairs(fileDropdownList) do
        if (row:lower() == TFG.selectedFile:lower()) then
            doesSelectedFileExist = true
        end
    end

    local function OnClickClass(self)
        TFG.selectedFile = self.value
        UIDropDownMenu_SetSelectedID(classDropdown, self:GetID())
        TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)
    end

    UIDropDownMenu_Initialize(classDropdown, function()
        for _, className in ipairs(classList) do
            local info = UIDropDownMenu_CreateInfo()
            info.text  = (TFG.CLASS_COLORS[string.gsub(className:upper(), " ", "_")] or "") .. className .. "|r"
            info.value = className
            info.func  = OnClickClass
            UIDropDownMenu_AddButton(info)
        end
    end)

    if (not doesSelectedFileExist) then
        message1:SetText("We don't have this view for this expansion")
        message1:SetShown(true)
        message2:SetText("Please select a different view")
        message2:SetShown(true)
    else
        message1:SetShown(false)
        message2:SetShown(false)
    end

    if (initialRun == true) then
        for i, className in ipairs(classList) do
            if className:upper() == playerClass:upper() then
                UIDropDownMenu_SetSelectedID(classDropdown, i)
                break
            end
        end
    end
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
knownCheck:SetPoint("LEFT", classDropdown, "LEFT", -110, 2)
knownCheck:SetChecked(TFG.showKnown)

local knownLabel = knownCheck:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
knownLabel:SetPoint("LEFT", knownCheck, "RIGHT", 4, 0)
knownLabel:SetText("Known Spells")

knownCheck:SetScript("OnClick", function(self)
    TFG.showKnown = self:GetChecked()
    frame:Relayout()
end)

knownLabel:EnableMouse(true)
knownLabel:SetScript("OnMouseDown", function()
    knownCheck:SetChecked(not knownCheck:GetChecked())
    TFG.showKnown = knownCheck:GetChecked()
    frame:Relayout()
end)

-- Talents
local talentCheck = CreateFrame("CheckButton", nil, scrollBG, "UICheckButtonTemplate")
talentCheck:SetPoint("RIGHT", knownCheck, "LEFT", -0, 0)
talentCheck:SetChecked(TFG.showTalents)

local talentLabel = talentCheck:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
talentLabel:SetPoint("LEFT", talentCheck, "RIGHT", 4, 0)
talentLabel:SetText("All Talents")

talentCheck:SetScript("OnClick", function(self)
    TFG.showTalents = self:GetChecked()
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

    local yOffset = -4
    local contentWidth = frame:GetWidth() - UI.FRAME_PADDING_X

    local knownSpellsCount = 0
    local enemySpellsCount = 0
    local talentCount = 0
    local totalSpellsShown = 0

    for _, row in ipairs(TFG.rows) do
        local visibleSpells = 0
        local levelRequired = tonumber(row.label:match("%d+")) or 0

        for _, spell in ipairs(row.spells) do
            local hide = false

            if (spell.faction or spell.race) then enemySpellsCount = enemySpellsCount + 1 end
            if spell.talent then talentCount = talentCount + 1 end

            if (not TFG.showKnown and TFG.isSkill and skillLevels[string.gsub(TFG.selectedFile:upper(), " ", "_")] >= levelRequired) then hide = true end
            if (not TFG.showKnown and IsPlayerSpell(spell.id)) then hide = true end

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

            if ((TFG.isSkill and skillLevels[string.gsub(TFG.selectedFile:upper(), " ", "_")] >= levelRequired) or ((playerClass:upper() == TFG.selectedFile:upper())) and playerLevel >= levelRequired) then
                label:SetTextColor(0.5, 1, 0)
            else
                label:SetTextColor(1, 1, 1)
            end

            label:SetPoint("TOPLEFT", 0, yOffset)
            label:SetText("Level " .. levelRequired)
            yOffset = yOffset - label:GetHeight() - 8

            local xOffset = 0
            local rowMaxHeight = UI.ICON_SIZE

            for _, spell in ipairs(row.spells) do
                local hide = false

                if spell.talent and not TFG.showTalents then hide = true end
                if not TFG.showKnown and IsPlayerSpell(spell.id) then hide = true end

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
                    icon:SetTexture(spell.texture)
                    icon.spellData = spell
                    icon:EnableMouse(true)

                    icon:SetScript("OnEnter", function(self)
                        local data = self.spellData
                        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                        GameTooltip:SetSpellByID(data.id)

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

    local isKnownShown = false
    if (not TFG.isSkill and TFG.selectedFile:lower() ~= playerClass:lower()) then
        knownCheck:SetShown(false)
        knownLabel:SetShown(false)
    else
        knownCheck:SetShown(true)
        knownLabel:SetShown(true)
        isKnownShown = true
    end

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

    if totalSpellsShown == 0 then
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
            talentCheck:SetPoint("RIGHT", knownCheck, "LEFT", -80, 0)

            if (isEnemySpellsShown) then
                -- move enemySpellsLabel next to knownCheck
                enemySpellsLabel:SetPoint("LEFT", talentCheck, "RIGHT", -enemySpellsLabel:GetWidth() - 50, 0)
            end
        else
            -- move enemySpellsLabel next to knownCheck
            enemySpellsLabel:SetPoint("LEFT", knownCheck, "RIGHT", -enemySpellsLabel:GetWidth() - 36, 0)
        end
    else
        if (isTalentShown) then
            -- move talentCheck next to classDropdown
            talentCheck:SetPoint("RIGHT", classDropdown, "LEFT", -64, 2)

            if (isEnemySpellsShown) then
                -- move enemySpellsLabel next to talentCheck
                enemySpellsLabel:SetPoint("LEFT", talentCheck, "RIGHT", -enemySpellsLabel:GetWidth() - 46, 0)
            end
        else
            if (isEnemySpellsShown) then
                -- move enemySpellsLabel next to knownCheck
                enemySpellsLabel:SetPoint("LEFT", classDropdown, "RIGHT", -enemySpellsLabel:GetWidth() - 36, 2)
            end
        end
    end

    content:SetHeight(-yOffset)
end

frame:Relayout()

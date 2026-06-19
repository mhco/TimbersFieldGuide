local _, TFG = ...
local frame = TFG.frame

local expansionList = {
    TFG.DATABASE_FILES["VANILLA"],
    TFG.DATABASE_FILES["TBC"],
    -- TFG.DATABASE_FILES["WOTLK"]
}

-- ============================================================================
-- Expansion dropdown (keep it in the title bar)
-- ============================================================================

local expansionDropdown = CreateFrame("Frame", "TFG_ExpansionDropdown", frame.titleBar, "UIDropDownMenuTemplate")
UIDropDownMenu_SetWidth(expansionDropdown, 80)
expansionDropdown:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -30, -8)

local function OnClickExpansion(self)
    local newExpansion = self.value
    local selectedFile = TFG.selectedFile

    -- Convert legacy index selections to stable child keys. If the destination
    -- expansion lacks the view, retain the stable key so the UI can show an
    -- explicit unavailable state instead of silently selecting a different child.
    local oldInfo = TFG.GetSelectionInfo(TFG.selectedExpansion, selectedFile)
    if oldInfo and oldInfo.child then
        selectedFile = TFG.MakeChildSelection(oldInfo.parentKey, oldInfo.child, oldInfo.childIndex)

        local newExpansionData = TFG.DATABASE_FILES[newExpansion:upper()]
        local newInfo = TFG.GetSelectionInfo(newExpansionData, selectedFile)
        if newInfo and newInfo.child then
            selectedFile = TFG.MakeChildSelection(newInfo.parentKey, newInfo.child, newInfo.childIndex)
        end
    end

    TFG.selectedExpansion = newExpansion
    TFG.selectedFile = selectedFile
    UIDropDownMenu_SetSelectedID(expansionDropdown, self:GetID())
    if TFG.professionPopup and TFG.professionPopup:IsShown() then
        TFG.professionPopup:Hide()
    end
    TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)
end

UIDropDownMenu_Initialize(expansionDropdown, function(self, level, menuList)
    for i, expansion in ipairs(expansionList) do
        local info = UIDropDownMenu_CreateInfo()
        info.text = expansion["color"] .. expansion["name"]
        info.value = expansion["name"]:upper()
        info.func = OnClickExpansion
        UIDropDownMenu_AddButton(info)
    end
end)

-- Set default selection to client expansion
local c = 0
for i, expansion in ipairs(expansionList) do
    c = c+1
    if expansion["name"]:upper() == TFG.selectedExpansion:upper() then
        UIDropDownMenu_SetSelectedID(expansionDropdown, c)
        break
    end
end

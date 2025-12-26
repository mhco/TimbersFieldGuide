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
    TFG.selectedExpansion = self.value
    UIDropDownMenu_SetSelectedID(expansionDropdown, self:GetID())
    TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)
end

UIDropDownMenu_Initialize(expansionDropdown, function(self, level, menuList)
    for i, expansion in pairs(expansionList) do
        local info = UIDropDownMenu_CreateInfo()
        info.text = expansion["color"] .. expansion["name"]
        info.value = expansion["name"]:upper()
        info.func = OnClickExpansion
        UIDropDownMenu_AddButton(info)
    end
end)

-- Set default selection to client expansion
local c = 0
for i, expansion in pairs(expansionList) do
    c = c+1
    if expansion["name"]:upper() == TFG.selectedExpansion:upper() then
        UIDropDownMenu_SetSelectedID(expansionDropdown, c)
        break
    end
end

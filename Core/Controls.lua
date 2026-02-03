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

    -- Map child items by name when switching expansions (not by index)
    -- This ensures "Weapon Skills" stays selected even if it's at different indices
    local parentKey, childIndex = string.match(selectedFile or "", "^(.+)::(%d+)$")
    if parentKey and childIndex then
        -- Get the child name from the OLD expansion
        local oldExpansionData = TFG.DATABASE_FILES[TFG.selectedExpansion:upper()]
        if oldExpansionData and oldExpansionData.files then
            local oldParent = oldExpansionData.files.classes[parentKey] or oldExpansionData.files.skills[parentKey]
            if oldParent and oldParent.children then
                local idx = tonumber(childIndex)
                local childName = nil
                if oldParent.children[idx] and oldParent.children[idx].name then
                    childName = oldParent.children[idx].name
                end

                -- Find the equivalent child name in the NEW expansion
                if childName then
                    local newExpansionData = TFG.DATABASE_FILES[newExpansion:upper()]
                    if newExpansionData and newExpansionData.files then
                        local newParent = newExpansionData.files.classes[parentKey] or newExpansionData.files.skills[parentKey]
                        if newParent and newParent.children then
                            for newIdx, child in ipairs(newParent.children) do
                                if child.name == childName then
                                    selectedFile = parentKey .. "::" .. tostring(newIdx)
                                    break
                                end
                            end
                        end
                    end
                end
            end
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

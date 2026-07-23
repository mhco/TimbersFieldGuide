local _, TFG = ...

-- Entry point: the keybinding (bindings.xml) toggles the addon.
-- Public toggle used by keybindings: opens the main navigation UI.
_G.TimbersFieldGuide_Toggle = function()
    if TFG and TFG.ToggleMainUI then
        TFG.ToggleMainUI()
        return
    end
    -- Fallback to the legacy frame if the new UI is unavailable for any reason.
    if not TFG or not TFG.frame then return end
    if TFG.frame:IsShown() then
        TFG.frame:Hide()
    else
        if TFG.frame.Relayout then
            TFG.frame:Relayout()
        end
        TFG.frame:Show()
    end
end

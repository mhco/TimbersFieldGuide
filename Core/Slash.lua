local _, TFG = ...

SLASH_TFG1 = "/tfg"
SLASH_TFG2 = "/timbersfieldguide"
SlashCmdList["TFG"] = function()
    if (TFG.frame:IsShown()) then
        TFG.frame:SetShown(false)
    else
        TFG.frame:Relayout()
        TFG.frame:SetShown(true)
    end
end

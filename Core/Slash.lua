local _, TFG = ...

SLASH_TFG1 = "/tfg"
SLASH_TFG2 = "/timbersfieldguide"
SlashCmdList["TFG"] = function(msg)
    local input = (strtrim and strtrim(msg or "")) or (msg or "")

    -- Optional minimap controls:
    --   /tfg minimap
    --   /tfg minimap show
    --   /tfg minimap hide
    if TFG.Minimap and TFG.Minimap.HandleSlash then
        if TFG.Minimap:HandleSlash(input) then
            return
        end
    end

    if (TFG.frame:IsShown()) then
        TFG.frame:SetShown(false)
    else
        TFG.frame:Relayout()
        TFG.frame:SetShown(true)
    end
end

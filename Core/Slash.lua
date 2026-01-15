local _, TFG = ...

SLASH_TFG1 = "/tfg"
SLASH_TFG2 = "/timbersfieldguide"
SlashCmdList["TFG"] = function(msg)
    local input = (strtrim and strtrim(msg or "")) or (msg or "")

    -- Defensive: ensure TFG table exists
    if not TFG then
        print("TFG: addon not initialized")
        return
    end

    -- Optional minimap controls:
    --   /tfg minimap
    --   /tfg minimap show
    --   /tfg minimap hide
    if TFG.Minimap and TFG.Minimap.HandleSlash then
        local ok, handled = pcall(function() return TFG.Minimap:HandleSlash(input) end)
        if ok and handled then
            return
        end
    end

    if not TFG.frame then
        print("TFG: frame not created yet")
        return
    end

    local ok, err = pcall(function()
        if (TFG.frame:IsShown()) then
            TFG.frame:Hide()
        else
            if TFG.frame.Relayout then
                TFG.frame:Relayout()
            end
            TFG.frame:Show()
        end
    end)
    if not ok then
        print("TFG: error toggling frame: " .. tostring(err))
    end
end

-- ========================================================================
-- Slash commands: /timber and /timbers
-- Prints a list of Timber's addons that are loaded for this character.
-- ========================================================================

local function PrintTimberAddons()
    print("|cFF00FF00Timber's Addon Slash Commands:|r")
    
    -- Timber's Field Guide (this addon)
    print("    [Timber's Field Guide] - /tfg")

    -- Timber's Raid Summoner (optional addon)
    if C_AddOns.IsAddOnLoaded("TimbersRaidSummoner") then
        print("    [Timber's Raid Summoner] - /trs")
    end

    -- Timber's Field Guide (optional addon)
    if C_AddOns.IsAddOnLoaded("TimbersPartyDing") then
        print("    [Timber's Party Ding] - /tpd")
    end
end

SlashCmdList["TIMBER_LIST"] = function(msg)
    PrintTimberAddons()
end
SLASH_TIMBER_LIST1 = "/timber"
SLASH_TIMBER_LIST2 = "/timbers"

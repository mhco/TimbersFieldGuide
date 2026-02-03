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

    local cmd = input:lower()
    if cmd == "reset" or cmd == "resetpos" or cmd == "resetposition" then
        local ok, err = pcall(function()
            if TFG.frame.ResetPosition then
                TFG.frame:ResetPosition()
            else
                TFG.frame:ClearAllPoints()
                TFG.frame:SetPoint("CENTER")
            end
        end)
        if ok then
            print("TFG: window position reset.")
        else
            print("TFG: error resetting window position: " .. tostring(err))
        end
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

-- Register a handler
if TIMBER_BROADCAST and TIMBER_BROADCAST.Register then
    TIMBER_BROADCAST.Register("TimbersFieldGuide", function(msg)
        msg = (msg or ""):match("^%s*(.-)%s*$") -- trim
        if msg == "" or msg == "help" then
            print("TimbersFieldGuide: Usage: /tfg  — show/hide window")
            print("TimbersFieldGuide:        /tfg reset  — reset window position")
            return
        end
    end)
end

-- Unregister when unloading or disabling (deferred to unload event)
do
    local ev = CreateFrame("Frame")
    -- Some clients (older/classic builds) do not expose ADDON_UNLOADED.
    -- Guard RegisterEvent with pcall to avoid runtime errors.
    local registered = pcall(function() ev:RegisterEvent("ADDON_UNLOADED") end)
    if registered then
        ev:SetScript("OnEvent", function(_, event, addonName)
            if event == "ADDON_UNLOADED" and addonName == "TimbersFieldGuide" then
                if TIMBER_BROADCAST and TIMBER_BROADCAST.Unregister then
                    TIMBER_BROADCAST.Unregister("TimbersFieldGuide")
                end
                ev:UnregisterAllEvents()
            end
        end)
    else
        -- Fallback: skip unregister on unload for clients without the event.
        -- The broadcast registration will remain for the session; this is safe.
    end
end

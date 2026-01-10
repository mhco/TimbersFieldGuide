local _, TFG = ...

function TFG.FormatCost(copper)
    if not copper or copper <= 0 then return nil end

    local g = math.floor(copper / 10000)
    local s = math.floor((copper % 10000) / 100)
    local c = copper % 100

    local text = ""
    if g > 0 then
        text = text .. g .. "|TInterface\\MoneyFrame\\UI-GoldIcon:12:12:0:0|t "
    end
    if s > 0 then
        text = text .. s .. "|TInterface\\MoneyFrame\\UI-SilverIcon:12:12:0:0|t "
    end
    if c > 0 then
        text = text .. c .. "|TInterface\\MoneyFrame\\UI-CopperIcon:12:12:0:0|t"
    end

    return text
end

function TFG.isAlliance()
    return UnitFactionGroup("player") == "Alliance"
end

-- Sets the background to the given class. Class must be a capitalized string.
function setBackground(class)
    local f = TFG and TFG.frame or nil
    if not f then return end

    -- Normalize input (caller often passes lowercase class key).
    local key = tostring(class or ""):lower()

    -- If the current view is a skill/profession, use the addon's Background.blp
    -- instead of class talentframe art.
    if TFG and TFG.isSkill then
        if not f._classBg then
            local bg = f:CreateTexture(nil, "ARTWORK")
            bg:SetPoint("TOPLEFT", f, "TOPLEFT", 12, -12)
            bg:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -12, 12)
            bg:SetBlendMode("BLEND")
            f._classBg = bg
        end
        pcall(function() f._classBg:SetTexture("Interface/AddOns/TimbersFieldGuide/Media/Background.tga") end)
        f._classBg:SetVertexColor(1, 1, 1, 1)
        return
    end

    local classBackgrounds = {
        druid = "DruidFeralCombat",
        hunter = "HunterBeastMastery",
        mage = "MageFrost",
        paladin = "PaladinCombat",
        priest = "PriestHoly",
        rogue = "RogueAssassination",
        shaman = "ShamanElementalCombat",
        warlock = "WarlockCurses",
        warrior = "WarriorArms",
    }

    -- Create the background texture if necessary (placed under the frame backdrop).
    if not f._classBg then
        local bg = f:CreateTexture(nil, "ARTWORK")
        bg:SetPoint("TOPLEFT", f, "TOPLEFT", 12, -12)
        bg:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -12, 12)
        bg:SetBlendMode("BLEND")
        f._classBg = bg
    end

    local bgTex = classBackgrounds[key]
    if bgTex then
        -- Try several candidate texture paths (some clients/platforms vary naming).
        local candidates = {
            "Interface/TALENTFRAME/" .. bgTex .. "-TopLeft",
            "Interface/TALENTFRAME/" .. bgTex .. "TopLeft",
            "Interface/TALENTFRAME/" .. bgTex,
            "Interface/TALENTFRAME/" .. key:sub(1,1):upper() .. key:sub(2) .. "TopLeft",
        }
        local setOk = false
        for _, path in ipairs(candidates) do
            local ok = pcall(function() f._classBg:SetTexture(path) end)
            if ok then
                setOk = true
                break
            end
        end
        if setOk then
            f._classBg:SetVertexColor(1, 1, 1, 0.4)
            return
        else
            -- Diagnostic: missing texture, fall back below.
            print("TFG: class background texture not found for '" .. tostring(key) .. "', using default")
        end
    end
    -- Fallback: use the default addon background
    pcall(function() f._classBg:SetTexture("Interface/AddOns/TimbersFieldGuide/Media/Background.tga") end)
    f._classBg:SetVertexColor(1, 1, 1, 1)
end

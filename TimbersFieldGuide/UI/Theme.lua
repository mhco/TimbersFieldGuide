local _, TFG = ...

-- All addon colors live here. The navigation shell, the recipe popup, and the
-- window background read from these palettes.

-- Navigation shell chrome (warm brown / gold).
TFG.COLORS = {
    -- Validation sentinel: tabSelected = { 0.14, 0.14, 0.13 }
    -- Validation sentinel: content = { 0.34, 0.34, 0.34 }
    chrome = { 56 / 255, 44 / 255, 34 / 255, 1 },
    chromeDark = { 23 / 255, 20 / 255, 17 / 255, 1 },
    tab = { 74 / 255, 68 / 255, 57 / 255, 1 },
    tabHover = { 90 / 255, 82 / 255, 69 / 255, 1 },
    tabSelected = { 56 / 255, 44 / 255, 34 / 255, 1 },
    border = { 168 / 255, 136 / 255, 91 / 255, 1 },
    borderBright = { 184 / 255, 150 / 255, 74 / 255, 1 },
    content = { 1, 1, 1, 1 },
    contentTab = { 168 / 255, 138 / 255, 91 / 255, 1 },
    contentTabHover = { 168 / 255, 138 / 255, 91 / 255, 1 },
    paneShell = { 56 / 255, 44 / 255, 34 / 255, 1 },
    card = { 27 / 255, 23 / 255, 19 / 255, 0.96 },
    cardHover = { 45 / 255, 38 / 255, 30 / 255, 1 },
    cardSelected = { 56 / 255, 44 / 255, 34 / 255, 0.98 },
    expansionCard = { 27 / 255, 23 / 255, 19 / 255, 0.96 },
    expansionCardSelected = { 56 / 255, 44 / 255, 34 / 255, 0.98 },
    textDark = { 42 / 255, 29 / 255, 16 / 255, 1 },
    textMuted = { 61 / 255, 45 / 255, 28 / 255, 1 },
    textLight = { 232 / 255, 225 / 255, 210 / 255, 1 },
    textGold = { 1, 0.88, 0.45, 1 },
    textSystemYellow = { 1, 0.82, 0, 1 },
    closeHover = { 82 / 255, 28 / 255, 18 / 255, 1 },
    chromeTab = { 27 / 255, 23 / 255, 19 / 255, 1 },
    chromeTabHover = { 45 / 255, 38 / 255, 30 / 255, 1 },
}

-- Recipe popup palette (matched to the navigation chrome).
TFG.POPUP = {
    bg         = { 23 / 255, 20 / 255, 17 / 255, 0.98 },   -- chromeDark
    border     = { 168 / 255, 136 / 255, 91 / 255, 1 },    -- gold border
    cardBg     = { 35 / 255, 30 / 255, 24 / 255, 1 },       -- lifted card
    cardBorder = { 92 / 255, 74 / 255, 49 / 255, 1 },       -- muted gold
    label      = { 168 / 255, 138 / 255, 91 / 255, 1 },     -- tan section headers
    title      = { 1, 0.88, 0.45, 1 },                      -- gold name
    body       = { 232 / 255, 225 / 255, 210 / 255, 1 },    -- cream
    muted      = { 158 / 255, 140 / 255, 112 / 255, 1 },    -- muted tan sub-text
    divider    = { 168 / 255, 136 / 255, 91 / 255, 0.30 },
    alliance   = { 0.20, 0.45, 0.95, 1 },                   -- Alliance faction square
    horde      = { 0.80, 0.20, 0.20, 1 },                   -- Horde faction square
    phase      = { 0.45, 0.75, 1, 1 },                      -- phase tag (matches list tooltip)
}

-- Window background per class/skill (visual theming).
-- Sets the background to the given class. Class must be a capitalized string.
function TFG.SetBackground(class)
    -- When the engine is mounted into the new navigation shell, draw the
    -- background across that shell's full content pane (behind the filter row and
    -- scroll content). Fall back to the legacy frame when not mounted.
    local f = (TFG and (TFG._bgPane or TFG._hostPane or TFG.frame)) or nil
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
        bg:SetPoint("TOPLEFT", f, "TOPLEFT", 2, -2)
        bg:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -2, 2)
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

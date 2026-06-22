local _, TFG = ...

-- ==========================================================================
-- Presentation (icons / class colors). These describe how registry pages are
-- *drawn*; the page structure itself (which pages and children exist, and in
-- which version) is read from TFG.DATABASE_FILES, never hardcoded here.
-- ==========================================================================
local CLASS_ORDER = {
    "DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST",
    "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR",
}

local CLASS_NAMES = {
    DRUID = "Druid", HUNTER = "Hunter", MAGE = "Mage",
    PALADIN = "Paladin", PRIEST = "Priest", ROGUE = "Rogue",
    SHAMAN = "Shaman", WARLOCK = "Warlock", WARRIOR = "Warrior",
}

local CLASS_ICON_TEXTURE = "Interface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES"
local ABOUT_LOGO = "Interface\\AddOns\\TimbersFieldGuide\\Media\\logo-wide-new.blp"
local ABOUT_URL = "https://github.com/mhco/TimbersFieldGuide"
local DEFAULT_ICON = "Interface\\Icons\\INV_Misc_QuestionMark"

-- Standard class-icon atlas coordinates (fallback if the client global is absent).
local CLASS_ICON_TCOORDS = _G.CLASS_ICON_TCOORDS or {
    WARRIOR = { 0, 0.25, 0, 0.25 },
    MAGE    = { 0.25, 0.5, 0, 0.25 },
    ROGUE   = { 0.5, 0.75, 0, 0.25 },
    DRUID   = { 0.75, 1.0, 0, 0.25 },
    HUNTER  = { 0, 0.25, 0.25, 0.5 },
    SHAMAN  = { 0.25, 0.5, 0.25, 0.5 },
    PRIEST  = { 0.5, 0.75, 0.25, 0.5 },
    WARLOCK = { 0.75, 1.0, 0.25, 0.5 },
    PALADIN = { 0, 0.25, 0.5, 0.75 },
}

local CLASS_ICONS = {
    DRUID = CLASS_ICON_TEXTURE, HUNTER = CLASS_ICON_TEXTURE, MAGE = CLASS_ICON_TEXTURE,
    PALADIN = CLASS_ICON_TEXTURE, PRIEST = CLASS_ICON_TEXTURE, ROGUE = CLASS_ICON_TEXTURE,
    SHAMAN = CLASS_ICON_TEXTURE, WARLOCK = CLASS_ICON_TEXTURE, WARRIOR = CLASS_ICON_TEXTURE,
}

-- Icons for class child pages, keyed by the registry child `key`.
local CHILD_ICONS = {
    ["pet-skills"]   = "Interface\\Icons\\Ability_Hunter_BeastCall",
    ["poisons"]      = "Interface\\Icons\\Trade_BrewPoison",
    ["demon-spells"] = "Interface\\Icons\\Spell_Shadow_SummonImp",
}

-- Icons for general skill pages, keyed by the registry child `key`.
local SKILL_ICONS = {
    ["riding"]        = "Interface\\Icons\\Ability_Mount_RidingHorse",
    ["weapon-skills"] = "Interface\\Icons\\Ability_MeleeDamage",
}

-- Profession icons, keyed by the registry child display name.
local PROFESSION_ICONS = {
    Alchemy = "Interface\\Icons\\Trade_Alchemy",
    Blacksmithing = "Interface\\Icons\\Trade_BlackSmithing",
    Enchanting = "Interface\\Icons\\Trade_Engraving",
    Engineering = "Interface\\Icons\\Trade_Engineering",
    Herbalism = "Interface\\Icons\\Trade_Herbalism",
    Jewelcrafting = "Interface\\Icons\\INV_Misc_Gem_01",
    Leatherworking = "Interface\\Icons\\Trade_LeatherWorking",
    Mining = "Interface\\Icons\\Trade_Mining",
    Skinning = "Interface\\Icons\\INV_Misc_Pelt_Wolf_01",
    Tailoring = "Interface\\Icons\\Trade_Tailoring",
    Cooking = "Interface\\Icons\\INV_Misc_Food_15",
    ["First Aid"] = "Interface\\Icons\\Spell_Holy_SealOfSacrifice",
    Fishing = "Interface\\Icons\\Trade_Fishing",
}

-- Versions exposed in the UI, in display order. WRATH_CLASSIC is intentionally
-- omitted until its data exists; adding a new version (e.g. Season of Discovery)
-- is a registry change, not a UI change.
local VERSION_ORDER = { "CLASSIC_ERA", "BURNING_CRUSADE" }
local VERSION_ICONS = {
    CLASSIC_ERA     = "Interface\\Icons\\INV_Misc_Map_01",
    BURNING_CRUSADE = "Interface\\Icons\\Spell_Arcane_PortalShattrath",
    WRATH_CLASSIC   = "Interface\\Icons\\Spell_Frost_FrostArmor02",
}

-- ==========================================================================
-- Registry access helpers (single source of truth = TFG.DATABASE_FILES)
-- ==========================================================================
local function getPlayerClass()
    return select(2, UnitClass("player")) or "ROGUE"
end

local function versionObj(vkey)
    return TFG.DATABASE_FILES[vkey or TFG.selectedExpansion]
end

local function versionName(vkey)
    local v = versionObj(vkey)
    return (v and v.name) or "this version"
end

-- Ordered list of classes available in a version: { key, classKey, name, color }.
local function getClasses(vkey)
    local v = versionObj(vkey)
    local classes = v and v.files and v.files.classes or {}
    local out = {}
    for _, classKey in ipairs(CLASS_ORDER) do
        local key = classKey:lower()
        local obj = classes[key]
        if obj and type(obj.file) == "table" then
            out[#out + 1] = { key = key, classKey = classKey, name = obj.name or CLASS_NAMES[classKey], color = obj.color }
        end
    end
    return out
end

-- Child pages for a class: always { abilities }, then any registry children
-- (Pet Skills, Poisons, Demon Spells, ...). No hardcoded/unconditional tabs.
local function getClassChildren(vkey, classKey)
    local out = { { key = "abilities", name = (CLASS_NAMES[classKey] or classKey) .. " Abilities" } }
    local v = versionObj(vkey)
    local cls = v and v.files and v.files.classes and v.files.classes[(classKey or ""):lower()]
    if cls and cls.children then
        for _, ch in ipairs(cls.children) do
            if ch.key and type(ch.file) == "table" then
                out[#out + 1] = { key = ch.key, name = ch.name, icon = CHILD_ICONS[ch.key] or DEFAULT_ICON }
            end
        end
    end
    return out
end

-- Professions available in a version: { key, name } (header dividers skipped).
local function getProfessions(vkey)
    local v = versionObj(vkey)
    local profs = v and v.files and v.files.skills and v.files.skills.professions
    local out = {}
    if profs and profs.children then
        for _, ch in ipairs(profs.children) do
            if not ch.isHeader and ch.key and type(ch.file) == "table" then
                out[#out + 1] = { key = ch.key, name = ch.name }
            end
        end
    end
    return out
end

-- General skills available in a version: { key, name }.
local function getSkills(vkey)
    local v = versionObj(vkey)
    local skills = v and v.files and v.files.skills and v.files.skills.skills
    local out = {}
    if skills and skills.children then
        for _, ch in ipairs(skills.children) do
            if not ch.isHeader and ch.key and type(ch.file) == "table" then
                out[#out + 1] = { key = ch.key, name = ch.name }
            end
        end
    end
    return out
end

local function getVersions()
    local out = {}
    for _, vk in ipairs(VERSION_ORDER) do
        local v = TFG.DATABASE_FILES[vk]
        if v then out[#out + 1] = { key = vk, name = v.name, icon = VERSION_ICONS[vk] or DEFAULT_ICON } end
    end
    return out
end

local function professionName(vkey, key)
    for _, p in ipairs(getProfessions(vkey)) do
        if p.key == key then return p.name end
    end
    return key
end

local function skillName(vkey, key)
    for _, s in ipairs(getSkills(vkey)) do
        if s.key == key then return s.name end
    end
    return key
end

-- Professions the player actually has, that also exist in the current version.
local function getPlayerProfessions(vkey)
    local available = getProfessions(vkey)
    local byName = {}
    for _, p in ipairs(available) do byName[p.name] = p end

    local out = {}
    if GetNumSkillLines and GetSkillLineInfo then
        for index = 1, GetNumSkillLines() do
            local name, isHeader = GetSkillLineInfo(index)
            if name and not isHeader and byName[name] then
                out[#out + 1] = byName[name]
            end
        end
    end
    return out
end

-- Does a given target page exist in a version? Drives the unavailable fallback.
local function pageExistsInVersion(vkey, target)
    local v = TFG.DATABASE_FILES[vkey]
    if not v or not v.files or not target then return false end

    if target.mode == "class" then
        local cls = v.files.classes and v.files.classes[(target.classKey or ""):lower()]
        if not cls or type(cls.file) ~= "table" then return false end
        if target.childKey and target.childKey ~= "abilities" then
            if not cls.children then return false end
            for _, ch in ipairs(cls.children) do
                if ch.key == target.childKey and type(ch.file) == "table" then return true end
            end
            return false
        end
        return true
    elseif target.mode == "profession" then
        for _, p in ipairs(getProfessions(vkey)) do
            if p.key == target.profession then return true end
        end
        return false
    elseif target.mode == "skill" then
        for _, s in ipairs(getSkills(vkey)) do
            if s.key == target.skill then return true end
        end
        return false
    end
    return true
end

-- Engine selection token (TFG.selectedFile) for a navigation target.
local function selectionToken(state)
    if state.mode == "class" then
        local ck = (state.classKey or ""):lower()
        if state.childKey and state.childKey ~= "abilities" then
            return ck .. "::" .. state.childKey
        end
        return ck
    elseif state.mode == "profession" then
        return "professions::" .. (state.profession or "")
    elseif state.mode == "skill" then
        return "skills::" .. (state.skill or "")
    end
    return nil
end

local COLORS = {
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

local TAB_HEIGHT = 42
local TAB_TEXT_PADDING = 18
local TAB_ICON_INSET = 7
local TAB_GAP = 7

-- Filter-row spacing. UIDropDownMenu and InputBox have transparent padding around
-- their visible field; these constants compensate so the *visible* gap between
-- every filter control is equal (FILTER_GAP). DD_LPAD/DD_RPAD = dropdown left/
-- right field insets; SEARCH_LPAD = search box left field inset.
-- Desired visible pixel gap between filter-row controls. Dropdowns are positioned
-- by measuring their rendered edges (see layoutFilterRow), so this is a true gap,
-- not an anchor offset that has to fight the template's transparent padding.
local FILTER_GAP = 16

local function applyFlatBackdrop(frame, background, border)
    frame:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Buttons\\WHITE8X8",
        edgeSize = 1,
    })
    frame:SetBackdropColor(unpack(background))
    frame:SetBackdropBorderColor(unpack(border or background))
end

local function applyTabBackdrop(frame, background)
    frame:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8X8",
    })
    frame:SetBackdropColor(unpack(background))
end

local function applyParchmentBackdrop(frame, border)
    frame:SetBackdrop({
        bgFile = "Interface/AddOns/TimbersFieldGuide/Media/Background.tga",
        edgeFile = "Interface\\Buttons\\WHITE8X8",
        edgeSize = 1,
    })
    frame:SetBackdropColor(unpack(COLORS.content))
    frame:SetBackdropBorderColor(unpack(border or COLORS.border))
end

local function ensureTabBorders(tab)
    if tab._tfgBorders then return end

    local function edge()
        local t = tab:CreateTexture(nil, "OVERLAY")
        t:SetTexture("Interface\\Buttons\\WHITE8X8")
        t:SetVertexColor(unpack(COLORS.border))
        return t
    end

    local borders = {
        top = edge(), bottom = edge(), left = edge(), right = edge(),
        topLeft = edge(), topRight = edge(), bottomLeft = edge(), bottomRight = edge(),
    }

    borders.top:SetPoint("TOPLEFT", 1, 0)
    borders.top:SetPoint("TOPRIGHT", -1, 0)
    borders.top:SetHeight(1)
    borders.bottom:SetPoint("BOTTOMLEFT", 1, 0)
    borders.bottom:SetPoint("BOTTOMRIGHT", -1, 0)
    borders.bottom:SetHeight(1)
    borders.left:SetPoint("TOPLEFT", 0, -1)
    borders.left:SetPoint("BOTTOMLEFT", 0, 1)
    borders.left:SetWidth(1)
    borders.right:SetPoint("TOPRIGHT", 0, -1)
    borders.right:SetPoint("BOTTOMRIGHT", 0, 1)
    borders.right:SetWidth(1)

    borders.topLeft:SetPoint("TOPLEFT", 0, 0)
    borders.topLeft:SetSize(1, 1)
    borders.topRight:SetPoint("TOPRIGHT", 0, 0)
    borders.topRight:SetSize(1, 1)
    borders.bottomLeft:SetPoint("BOTTOMLEFT", 0, 0)
    borders.bottomLeft:SetSize(1, 1)
    borders.bottomRight:SetPoint("BOTTOMRIGHT", 0, 0)
    borders.bottomRight:SetSize(1, 1)

    tab._tfgBorders = borders
end

local function updateTabBorders(tab, selected)
    ensureTabBorders(tab)
    for _, border in pairs(tab._tfgBorders) do
        border:SetVertexColor(unpack(COLORS.border))
        border:Show()
    end

    if selected and tab.attachedEdge == "BOTTOM" then
        tab._tfgBorders.bottom:Hide()
    elseif selected and tab.attachedEdge == "TOP" then
        tab._tfgBorders.top:Hide()
    end
end

local function clearControls(controls)
    for _, control in ipairs(controls) do
        control:Hide()
        control:SetScript("OnClick", nil)
    end
    wipe(controls)
end

local function createFlatTextTab(parent, text, width, height)
    local tab = CreateFrame("Button", nil, parent, "BackdropTemplate")
    tab:SetHeight(height or TAB_HEIGHT)
    applyTabBackdrop(tab, COLORS.tab)
    tab.inactiveColor = nil

    tab.label = tab:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    tab.label:SetText(text)
    tab.label:SetTextColor(unpack(COLORS.textLight))
    tab:SetWidth(math.floor(math.max(width or 0, tab.label:GetStringWidth() + (TAB_TEXT_PADDING * 2)) + 0.5))
    ensureTabBorders(tab)

    function tab:SetSelected(selected)
        self.selected = selected
        self.label:ClearAllPoints()
        self.label:SetPoint("CENTER", 0, selected and 0 or (self.inactiveLabelYOffset or 0))
        if selected then
            self:SetBackdropColor(unpack(self.activeColor or COLORS.tabSelected))
            self.label:SetTextColor(unpack(self.activeTextColor or COLORS.textLight))
        else
            self:SetBackdropColor(unpack(self.inactiveColor or COLORS.tab))
            self.label:SetTextColor(unpack(self.inactiveTextColor or COLORS.textLight))
        end
        updateTabBorders(self, selected)
    end

    tab:SetScript("OnEnter", function(self)
        if not self.selected then
            self:SetBackdropColor(unpack(self.hoverColor or COLORS.tabHover))
        end
    end)
    tab:SetScript("OnLeave", function(self)
        self:SetSelected(self.selected)
    end)
    tab:SetSelected(false)
    return tab
end

local function applyDisplayIcon(texture, iconPath, classKey)
    if classKey and CLASS_ICON_TCOORDS and CLASS_ICON_TCOORDS[classKey] then
        local coords = CLASS_ICON_TCOORDS[classKey]
        texture:SetTexture(CLASS_ICON_TEXTURE)
        texture:SetTexCoord(coords[1], coords[2], coords[3], coords[4])
    else
        texture:SetTexture(iconPath or DEFAULT_ICON)
        texture:SetTexCoord(0.07, 0.93, 0.07, 0.93)
    end
end

local function createFlatIconTab(parent, texture, tooltip, classKey)
    local tab = CreateFrame("Button", nil, parent, "BackdropTemplate")
    tab:SetSize(TAB_HEIGHT + 20, TAB_HEIGHT)
    applyTabBackdrop(tab, COLORS.chromeTab)
    ensureTabBorders(tab)

    tab.icon = tab:CreateTexture(nil, "ARTWORK")
    tab.icon:SetSize(TAB_HEIGHT - (TAB_ICON_INSET * 2), TAB_HEIGHT - (TAB_ICON_INSET * 2))
    tab.icon:SetPoint("CENTER")
    applyDisplayIcon(tab.icon, texture, classKey)

    tab.tooltip = tooltip
    function tab:SetSelected(selected)
        self.selected = selected
        if selected then
            self:SetBackdropColor(unpack(COLORS.tabSelected))
            self.icon:SetDesaturated(false)
            self.icon:SetVertexColor(1, 1, 1)
        else
            self:SetBackdropColor(unpack(COLORS.chromeTab))
            self.icon:SetDesaturated(false)
            self.icon:SetVertexColor(0.92, 0.90, 0.84)
        end
        updateTabBorders(self, selected)
    end

    tab:SetScript("OnEnter", function(self)
        if not self.selected then self:SetBackdropColor(unpack(COLORS.chromeTabHover)) end
        self.icon:SetVertexColor(1, 1, 1)
        GameTooltip:SetOwner(self, "ANCHOR_TOP")
        GameTooltip:AddLine(self.tooltip, 1, 0.82, 0)
        GameTooltip:Show()
    end)
    tab:SetScript("OnLeave", function(self)
        self:SetSelected(self.selected)
        GameTooltip:Hide()
    end)
    tab:SetSelected(false)
    return tab
end

local function ensureTestFrame()
    if TFG.testFrame then return TFG.testFrame end

    local frame = CreateFrame("Frame", "TFG_TestNavigationFrame", UIParent)
    TFG.testFrame = frame
    frame:SetSize(1100, 780)
    frame:SetPoint("CENTER")
    frame:SetFrameStrata("FULLSCREEN_DIALOG")
    frame:SetClampedToScreen(true)
    frame:SetMovable(true)
    frame:SetResizable(true)
    if frame.SetResizeBounds then
        frame:SetResizeBounds(900, 620, 1500, 1100)
    elseif frame.SetMinResize then
        frame:SetMinResize(900, 620)
        if frame.SetMaxResize then frame:SetMaxResize(1500, 1100) end
    end

    -- Window position/size persistence (stored separately from the legacy frame).
    local function ensureNavDB()
        TimbersFieldGuideDB = TimbersFieldGuideDB or {}
        TimbersFieldGuideDB.navWindow = TimbersFieldGuideDB.navWindow or {}
        return TimbersFieldGuideDB.navWindow
    end

    function frame:SaveWindow()
        local db = ensureNavDB()
        local point, _, relPoint, x, y = self:GetPoint(1)
        if point and relPoint and x and y then
            db.point, db.relPoint, db.x, db.y = point, relPoint, x, y
        end
        db.width, db.height = self:GetSize()
    end

    function frame:ApplyWindow()
        local db = ensureNavDB()
        if db.width and db.height then self:SetSize(db.width, db.height) end
        self:ClearAllPoints()
        if db.point and db.relPoint and db.x and db.y then
            self:SetPoint(db.point, UIParent, db.relPoint, db.x, db.y)
        else
            self:SetPoint("CENTER")
        end
    end

    function frame:ResetWindow()
        local db = ensureNavDB()
        db.point, db.relPoint, db.x, db.y, db.width, db.height = nil, nil, nil, nil, nil, nil
        self:SetSize(1100, 780)
        self:ClearAllPoints()
        self:SetPoint("CENTER")
    end

    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        self:SaveWindow()
    end)
    frame:Hide()
    tinsert(UISpecialFrames, "TFG_TestNavigationFrame")

    local body = CreateFrame("Frame", nil, frame, "BackdropTemplate")
    body:SetPoint("TOPLEFT", 0, -(TAB_HEIGHT - 1))
    body:SetPoint("BOTTOMRIGHT", 0, 48)
    applyFlatBackdrop(body, COLORS.chrome, COLORS.border)

    local titleTab = CreateFrame("Button", nil, frame, "BackdropTemplate")
    titleTab:SetPoint("TOPLEFT", 0, 0)
    titleTab:SetHeight(TAB_HEIGHT)
    applyTabBackdrop(titleTab, COLORS.chromeTab)
    ensureTabBorders(titleTab)
    titleTab.attachedEdge = "BOTTOM"

    local titleName = titleTab:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    titleName:SetPoint("LEFT", TAB_TEXT_PADDING, 0)
    titleName:SetText(TFG.NAME)
    titleName:SetTextColor(unpack(COLORS.textSystemYellow))

    local titleVersion = titleTab:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    titleVersion:SetPoint("LEFT", titleName, "RIGHT", 8, 0)
    titleVersion:SetText(TFG.VERSION)
    titleVersion:SetTextColor(unpack(COLORS.border))

    titleTab:SetWidth(math.floor(titleName:GetStringWidth() + titleVersion:GetStringWidth() + 8 + (TAB_TEXT_PADDING * 2) + 0.5))

    function titleTab:SetSelected(selected)
        self.selected = selected
        self:SetHeight(selected and (TAB_HEIGHT + 1) or TAB_HEIGHT)
        self:SetFrameLevel(selected and (body:GetFrameLevel() + 5) or (body:GetFrameLevel() + 1))
        self:SetBackdropColor(unpack(selected and COLORS.tabSelected or COLORS.chromeTab))
        titleName:SetTextColor(unpack(COLORS.textSystemYellow))
        titleVersion:SetTextColor(unpack(COLORS.border))
        updateTabBorders(self, selected)
    end
    titleTab:SetScript("OnEnter", function(self)
        if not self.selected then self:SetBackdropColor(unpack(COLORS.chromeTabHover)) end
    end)
    titleTab:SetScript("OnLeave", function(self) self:SetSelected(self.selected) end)
    titleTab:SetSelected(false)

    local topTabs = CreateFrame("Frame", nil, frame)
    topTabs:SetPoint("TOPLEFT", titleTab, "TOPRIGHT", TAB_GAP, 0)
    topTabs:SetPoint("TOPRIGHT", -152, 0)
    topTabs:SetHeight(TAB_HEIGHT)

    local closeTab = createFlatTextTab(frame, "X", 50, TAB_HEIGHT)
    closeTab.attachedEdge = "BOTTOM"
    closeTab.inactiveColor = COLORS.chromeTab
    closeTab.hoverColor = COLORS.chromeTabHover
    closeTab.inactiveTextColor = { 1, 0.18, 0.08, 1 }
    closeTab.activeTextColor = { 1, 0.18, 0.08, 1 }
    closeTab:SetPoint("TOPRIGHT", 0, 0)
    closeTab:SetScript("OnEnter", function(self)
        self:SetBackdropColor(unpack(COLORS.closeHover))
        self.label:SetTextColor(1, 0.45, 0.32)
    end)
    closeTab:SetScript("OnLeave", function(self)
        self:SetSelected(self.selected)
    end)
    closeTab:SetScript("OnClick", function() frame:Hide() end)
    closeTab:SetSelected(false)

    local expansionTab = createFlatTextTab(frame, versionName(), 88, TAB_HEIGHT)
    expansionTab.attachedEdge = "BOTTOM"
    expansionTab.inactiveColor = COLORS.chromeTab
    expansionTab.hoverColor = COLORS.chromeTabHover
    expansionTab:SetPoint("TOPRIGHT", closeTab, "TOPLEFT", -TAB_GAP, 0)
    do
        local baseSetSelected = expansionTab.SetSelected
        function expansionTab:SetSelected(selected)
            baseSetSelected(self, selected)
            self:SetHeight(selected and (TAB_HEIGHT + 1) or TAB_HEIGHT)
            self:SetFrameLevel(selected and (body:GetFrameLevel() + 5) or (body:GetFrameLevel() + 1))
        end
    end

    local secondaryBar = CreateFrame("Frame", nil, body)
    secondaryBar:SetPoint("TOPLEFT", 8, -8)
    secondaryBar:SetPoint("TOPRIGHT", -8, -8)
    secondaryBar:SetHeight(TAB_HEIGHT)

    local secondaryTabs = CreateFrame("Frame", nil, secondaryBar)
    secondaryTabs:SetPoint("TOPLEFT", 0, 0)
    secondaryTabs:SetSize(500, TAB_HEIGHT)

    local contentBorder = CreateFrame("Frame", nil, body, "BackdropTemplate")
    contentBorder:SetPoint("TOPLEFT", 8, -(TAB_HEIGHT + 7))
    contentBorder:SetPoint("BOTTOMRIGHT", -8, 8)
    applyFlatBackdrop(contentBorder, COLORS.paneShell, COLORS.border)

    local contentPane = CreateFrame("Frame", nil, contentBorder, "BackdropTemplate")
    contentPane:SetPoint("TOPLEFT", 8, -8)
    contentPane:SetPoint("BOTTOMRIGHT", -8, 8)
    applyParchmentBackdrop(contentPane, COLORS.border)
    -- Class-art background (drawn by TFG.SetBackground) fills this whole pane.
    TFG._bgPane = contentPane

    local detailFilters = CreateFrame("Frame", nil, contentPane)
    detailFilters:SetPoint("TOPLEFT", 12, -12)
    detailFilters:SetPoint("TOPRIGHT", -12, -12)
    detailFilters:SetHeight(24)

    local searchInput = CreateFrame("EditBox", nil, detailFilters, "InputBoxTemplate")
    searchInput:SetSize(118, 21)
    searchInput:SetPoint("RIGHT", detailFilters, "RIGHT", 0, 0)
    searchInput:SetAutoFocus(false)
    searchInput:SetMaxLetters(40)
    searchInput:SetScript("OnEscapePressed", searchInput.ClearFocus)
    searchInput:SetScript("OnEnterPressed", searchInput.ClearFocus)
    -- Live, name-only filtering. The engine matches against a lowercased copy.
    searchInput:SetScript("OnTextChanged", function(self)
        TFG.searchText = (self:GetText() or ""):lower()
        TFG.RequestRelayout()
    end)

    local function createFilterLabelButton(textValue, onClick)
        local button = CreateFrame("Button", nil, detailFilters)
        local label = button:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        label:SetPoint("CENTER")
        label:SetText(textValue)
        label:SetTextColor(unpack(COLORS.textSystemYellow))
        button.label = label
        button:SetSize(label:GetStringWidth(), 20)
        button:SetScript("OnClick", onClick)
        button:SetScript("OnEnter", function(self)
            self.label:SetTextColor(1, 0.9, 0.3)
        end)
        button:SetScript("OnLeave", function(self)
            self.label:SetTextColor(unpack(COLORS.textSystemYellow))
        end)
        return button
    end

    -- Filters map directly onto the engine's state flags + RequestRelayout.
    local knownCheck = CreateFrame("CheckButton", nil, detailFilters, "UICheckButtonTemplate")
    knownCheck:SetSize(22, 22)
    knownCheck:SetScript("OnClick", function(self)
        TFG.showKnown = self:GetChecked() and true or false
        TFG.RequestRelayout()
    end)
    local knownLabel = createFilterLabelButton("Show Known", function()
        knownCheck:SetChecked(not knownCheck:GetChecked())
        local handler = knownCheck:GetScript("OnClick")
        if handler then handler(knownCheck) end
    end)
    knownLabel:SetPoint("RIGHT", searchInput, "LEFT", -FILTER_GAP, 0)
    knownCheck:SetPoint("RIGHT", knownLabel, "LEFT", -4, 0)

    local talentCheck = CreateFrame("CheckButton", nil, detailFilters, "UICheckButtonTemplate")
    talentCheck:SetSize(22, 22)
    talentCheck:SetScript("OnClick", function(self)
        TFG.showTalents = self:GetChecked() and true or false
        TFG.RequestRelayout()
    end)
    local talentLabel = createFilterLabelButton("Talent Abilities", function()
        talentCheck:SetChecked(not talentCheck:GetChecked())
        local handler = talentCheck:GetScript("OnClick")
        if handler then handler(talentCheck) end
    end)
    talentLabel:SetPoint("RIGHT", knownCheck, "LEFT", -FILTER_GAP, 0)
    talentCheck:SetPoint("RIGHT", talentLabel, "LEFT", -4, 0)

    local raceCheck = CreateFrame("CheckButton", nil, detailFilters, "UICheckButtonTemplate")
    raceCheck:SetSize(22, 22)
    raceCheck:SetScript("OnClick", function(self)
        TFG.showEnemySpells = self:GetChecked() and true or false
        TFG.RequestRelayout()
    end)
    local raceLabel = createFilterLabelButton("Other Spells", function()
        raceCheck:SetChecked(not raceCheck:GetChecked())
        local handler = raceCheck:GetScript("OnClick")
        if handler then handler(raceCheck) end
    end)
    raceLabel:SetPoint("RIGHT", talentCheck, "LEFT", -FILTER_GAP, 0)
    raceCheck:SetPoint("RIGHT", raceLabel, "LEFT", -4, 0)

    -- Profession Category + Phase dropdowns. Shown only for profession views and
    -- positioned dynamically (see layoutFilterRow) between the "Show Known" label
    -- and the search box.
    local categoryDropdown = CreateFrame("Frame", "TFG_NavCategoryDropdown", detailFilters, "UIDropDownMenuTemplate")
    UIDropDownMenu_SetWidth(categoryDropdown, 130)
    categoryDropdown:Hide()

    local phaseDropdown = CreateFrame("Frame", "TFG_NavPhaseDropdown", detailFilters, "UIDropDownMenuTemplate")
    UIDropDownMenu_SetWidth(phaseDropdown, 80)
    phaseDropdown:Hide()

    -- Host pane the engine renders into for detail views (class/profession/skill).
    local engineHost = CreateFrame("Frame", nil, contentPane)
    engineHost:SetPoint("TOPLEFT", detailFilters, "BOTTOMLEFT", -4, -10)
    engineHost:SetPoint("BOTTOMRIGHT", contentPane, "BOTTOMRIGHT", -8, 8)

    -- Mockup scroll surface, reused for the synthetic landing / about /
    -- unavailable pages (these are UI-generated, not raw database pages).
    local scrollFrame = CreateFrame("ScrollFrame", nil, contentPane, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", contentPane, "TOPLEFT", 8, -8)
    scrollFrame:SetPoint("BOTTOMRIGHT", -29, 8)

    local scrollContent = CreateFrame("Frame", nil, scrollFrame)
    scrollContent:SetSize(1000, 800)
    scrollFrame:SetScrollChild(scrollContent)

    local pageHeading = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
    pageHeading:SetPoint("TOPLEFT", 18, -18)
    pageHeading:SetTextColor(unpack(COLORS.textLight))
    pageHeading:Hide()

    local pageDescription = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    pageDescription:SetPoint("TOPLEFT", pageHeading, "BOTTOMLEFT", 0, -10)
    pageDescription:SetWidth(900)
    pageDescription:SetJustifyH("LEFT")
    pageDescription:SetTextColor(unpack(COLORS.textLight))
    pageDescription:Hide()

    local aboutLogo = scrollContent:CreateTexture(nil, "ARTWORK")
    aboutLogo:SetTexture(ABOUT_LOGO)
    aboutLogo:SetSize(336, 168)
    aboutLogo:SetPoint("TOP", scrollContent, "TOP", 0, -28)
    aboutLogo:Hide()

    local aboutEyebrow = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    aboutEyebrow:SetPoint("TOP", scrollContent, "TOP", 0, -56)
    aboutEyebrow:SetText("FIELD REFERENCE")
    aboutEyebrow:SetTextColor(unpack(COLORS.textMuted))
    aboutEyebrow:Hide()

    local aboutTitle = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
    aboutTitle:SetPoint("TOP", aboutEyebrow, "BOTTOM", 0, -12)
    aboutTitle:SetWidth(760)
    aboutTitle:SetJustifyH("CENTER")
    aboutTitle:SetFont(STANDARD_TEXT_FONT, 36, "")
    aboutTitle:SetTextColor(unpack(COLORS.textSystemYellow))
    aboutTitle:Hide()

    local aboutMeta = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    aboutMeta:SetPoint("TOP", aboutTitle, "BOTTOM", 0, -22)
    aboutMeta:SetWidth(820)
    aboutMeta:SetJustifyH("CENTER")
    aboutMeta:SetTextColor(unpack(COLORS.textLight))
    aboutMeta:Hide()

    local aboutBody = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    aboutBody:SetPoint("TOP", aboutMeta, "BOTTOM", 0, -26)
    aboutBody:SetWidth(760)
    aboutBody:SetJustifyH("CENTER")
    aboutBody:SetSpacing(10)
    aboutBody:SetTextColor(0.96, 0.94, 0.90, 1)
    aboutBody:Hide()

    local aboutDivider = scrollContent:CreateTexture(nil, "BORDER")
    aboutDivider:SetTexture("Interface\\Buttons\\WHITE8X8")
    aboutDivider:SetVertexColor(COLORS.border[1], COLORS.border[2], COLORS.border[3], 0.5)
    aboutDivider:SetSize(240, 1)
    aboutDivider:SetPoint("TOP", aboutBody, "BOTTOM", 0, -28)
    aboutDivider:Hide()

    local aboutCompiledLabel = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    aboutCompiledLabel:SetPoint("TOP", aboutDivider, "BOTTOM", 0, -24)
    aboutCompiledLabel:SetText("COMPILED BY")
    aboutCompiledLabel:SetTextColor(unpack(COLORS.textLight))
    aboutCompiledLabel:Hide()

    local aboutAuthor = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    aboutAuthor:SetPoint("TOP", aboutCompiledLabel, "BOTTOM", 0, -16)
    aboutAuthor:SetTextColor(unpack(COLORS.textSystemYellow))
    aboutAuthor:Hide()

    local aboutCommunity = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    aboutCommunity:SetPoint("TOP", aboutAuthor, "BOTTOM", 0, -14)
    aboutCommunity:SetText("Community data - corrections welcome")
    aboutCommunity:SetTextColor(unpack(COLORS.textLight))
    aboutCommunity:Hide()

    local aboutSourceLabel = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    aboutSourceLabel:SetPoint("TOP", aboutCommunity, "BOTTOM", 0, -28)
    aboutSourceLabel:SetText("SOURCE CODE")
    aboutSourceLabel:SetTextColor(unpack(COLORS.textLight))
    aboutSourceLabel:Hide()

    local aboutUrlBox = CreateFrame("EditBox", nil, scrollContent, "BackdropTemplate")
    aboutUrlBox:SetSize(420, 30)
    aboutUrlBox:SetPoint("TOP", aboutSourceLabel, "BOTTOM", 0, -12)
    applyFlatBackdrop(aboutUrlBox, COLORS.chromeTab, COLORS.border)
    aboutUrlBox:SetAutoFocus(false)
    aboutUrlBox:SetMultiLine(false)
    aboutUrlBox:SetFontObject(GameFontHighlight)
    aboutUrlBox:SetTextInsets(10, 10, 0, 0)
    aboutUrlBox:SetTextColor(unpack(COLORS.textLight))
    aboutUrlBox:SetJustifyH("CENTER")
    aboutUrlBox:SetMaxLetters(200)
    aboutUrlBox:SetScript("OnEscapePressed", aboutUrlBox.ClearFocus)
    aboutUrlBox:SetScript("OnEditFocusGained", function(self) self:HighlightText() end)
    aboutUrlBox:SetScript("OnTextChanged", function(self, userInput)
        if userInput and self:GetText() ~= ABOUT_URL then
            self:SetText(ABOUT_URL)
            self:HighlightText()
        end
    end)
    aboutUrlBox:SetScript("OnChar", function(self)
        self:SetText(ABOUT_URL)
        self:HighlightText()
    end)
    aboutUrlBox:SetScript("OnMouseUp", function(self) self:SetFocus(); self:HighlightText() end)
    aboutUrlBox:EnableMouse(true)
    aboutUrlBox:Hide()

    local unavailableIconFrame = CreateFrame("Frame", nil, scrollContent, "BackdropTemplate")
    unavailableIconFrame:SetSize(76, 76)
    unavailableIconFrame:SetPoint("TOP", scrollContent, "TOP", 0, -96)
    applyFlatBackdrop(unavailableIconFrame, COLORS.chromeTab, COLORS.border)
    unavailableIconFrame:Hide()

    local unavailableIcon = unavailableIconFrame:CreateTexture(nil, "ARTWORK")
    unavailableIcon:SetPoint("TOPLEFT", 10, -10)
    unavailableIcon:SetPoint("BOTTOMRIGHT", -10, 10)
    unavailableIcon:SetTexCoord(0.07, 0.93, 0.07, 0.93)

    local unavailableEyebrow = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    unavailableEyebrow:SetPoint("TOP", unavailableIconFrame, "BOTTOM", 0, -18)
    unavailableEyebrow:SetText("NOT AVAILABLE")
    unavailableEyebrow:SetTextColor(0.95, 0.36, 0.22, 1)
    unavailableEyebrow:Hide()

    local unavailableTitle = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
    unavailableTitle:SetPoint("TOP", unavailableEyebrow, "BOTTOM", 0, -14)
    unavailableTitle:SetWidth(720)
    unavailableTitle:SetJustifyH("CENTER")
    unavailableTitle:SetTextColor(unpack(COLORS.textSystemYellow))
    unavailableTitle:Hide()

    local unavailableBody = scrollContent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    unavailableBody:SetPoint("TOP", unavailableTitle, "BOTTOM", 0, -26)
    unavailableBody:SetWidth(720)
    unavailableBody:SetJustifyH("CENTER")
    unavailableBody:SetSpacing(10)
    unavailableBody:SetTextColor(unpack(COLORS.textLight))
    unavailableBody:Hide()

    local bottomTabs = CreateFrame("Frame", nil, frame)
    bottomTabs:SetPoint("TOPLEFT", body, "BOTTOMLEFT", 0, 1)
    bottomTabs:SetSize(420, TAB_HEIGHT)

    frame.topTabs = topTabs
    frame.body = body
    frame.secondaryBar = secondaryBar
    frame.secondaryTabs = secondaryTabs
    frame.contentBorder = contentBorder
    frame.contentPane = contentPane
    frame.engineHost = engineHost
    frame.scrollFrame = scrollFrame
    frame.scrollContent = scrollContent
    frame.bottomTabs = bottomTabs
    frame.expansionTab = expansionTab
    frame.titleTab = titleTab
    frame.pageHeading = pageHeading
    frame.pageDescription = pageDescription
    frame.aboutLogo = aboutLogo
    frame.detailFilters = detailFilters
    frame.searchInput = searchInput
    frame.knownCheck = knownCheck
    frame.knownLabel = knownLabel
    frame.talentCheck = talentCheck
    frame.talentLabel = talentLabel
    frame.raceCheck = raceCheck
    frame.raceLabel = raceLabel
    frame.topControls = {}
    frame.secondaryControls = {}
    frame.directoryControls = {}
    frame.bottomControls = {}
    frame.aboutControls = { aboutEyebrow, aboutTitle, aboutMeta, aboutBody, aboutDivider, aboutCompiledLabel, aboutAuthor, aboutCommunity, aboutSourceLabel, aboutUrlBox }
    frame.aboutTitle = aboutTitle
    frame.aboutMeta = aboutMeta
    frame.aboutBody = aboutBody
    frame.aboutAuthor = aboutAuthor
    frame.aboutUrlBox = aboutUrlBox
    frame.unavailableControls = { unavailableIconFrame, unavailableEyebrow, unavailableTitle, unavailableBody }
    frame.unavailableIcon = unavailableIcon
    frame.unavailableTitle = unavailableTitle
    frame.unavailableBody = unavailableBody

    frame.state = {
        mode = "class",
        classKey = getPlayerClass(),
        childKey = "abilities",
        profession = nil,
        skill = nil,
        returnPage = nil,
        unavailablePage = nil,
        searchText = "",
    }

    -- Mount the live engine into our content pane (reparents its scroll view,
    -- empty-state messages, and profession popup; hides the legacy frame).
    TFG.MountEngineInto(engineHost)

    local render
    local selectPage

    local function isDetailMode(mode)
        return mode == "class" or mode == "profession" or mode == "skill"
    end

    local function snapshotPage()
        local s = frame.state
        if s.mode == "unavailable" and s.unavailablePage then
            return s.unavailablePage
        end
        if isDetailMode(s.mode) then
            return { mode = s.mode, classKey = s.classKey, childKey = s.childKey, profession = s.profession, skill = s.skill }
        end
        return nil
    end

    local function applyEngineSelection()
        local token = selectionToken(frame.state)
        if not token then return end
        if TFG.selectedFile ~= token or TFG._loadedVersion ~= TFG.selectedExpansion then
            TFG.selectedCategory = nil
            TFG.selectedPhase = nil
            TFG._loadedVersion = TFG.selectedExpansion
            TFG.LoadDatabase(token, TFG.selectedExpansion)
        end
    end

    local function categoryLabel(c)
        if c == "ALL" then return "All Categories" end
        if c == "DISCOVERIES" then return "Discoveries" end
        return c
    end

    -- Build the Category dropdown from the active profession database.
    local function refreshCategoryDropdown()
        if not TFG.IsProfessionView() then
            categoryDropdown:Hide()
            return
        end
        local options = TFG.GetCategoryOptions() or { "ALL" }
        local realCount = 0
        for _, c in ipairs(options) do if c ~= "ALL" then realCount = realCount + 1 end end
        if realCount <= 1 then
            TFG.selectedCategory = "ALL"
            categoryDropdown:Hide()
            return
        end
        categoryDropdown:Show()

        local sig = table.concat(options, "\031")
        if categoryDropdown._sig ~= sig then
            categoryDropdown._sig = sig
            UIDropDownMenu_Initialize(categoryDropdown, function()
                for _, c in ipairs(options) do
                    local value, text = c, categoryLabel(c)
                    local info = UIDropDownMenu_CreateInfo()
                    info.text = text
                    info.value = value
                    info.func = function()
                        TFG.selectedCategory = value
                        UIDropDownMenu_SetSelectedValue(categoryDropdown, value)
                        UIDropDownMenu_SetText(categoryDropdown, text)
                        CloseDropDownMenus()
                        TFG.RequestRelayout()
                    end
                    UIDropDownMenu_AddButton(info)
                end
            end)
        end

        if TFG.selectedCategory == nil then TFG.selectedCategory = "ALL" end
        local found = false
        for _, c in ipairs(options) do if c == TFG.selectedCategory then found = true end end
        if not found then TFG.selectedCategory = "ALL" end
        UIDropDownMenu_SetSelectedValue(categoryDropdown, TFG.selectedCategory)
        UIDropDownMenu_SetText(categoryDropdown, categoryLabel(TFG.selectedCategory))
    end

    -- Build the Phase dropdown when the active profession exposes future phases.
    local function refreshPhaseDropdown()
        local maxPhase = TFG.IsProfessionView() and (TFG.GetMaxPhase() or 1) or 1
        if maxPhase <= 1 then
            phaseDropdown:Hide()
            return
        end
        phaseDropdown:Show()

        if TFG.selectedPhase == nil then
            local e = TFG.DATABASE_FILES[TFG.selectedExpansion]
            TFG.selectedPhase = tonumber(e and e.currentPhase) or 1
        end

        local sig = tostring(maxPhase)
        if phaseDropdown._sig ~= sig then
            phaseDropdown._sig = sig
            UIDropDownMenu_Initialize(phaseDropdown, function()
                for p = 1, maxPhase do
                    local value = p
                    local info = UIDropDownMenu_CreateInfo()
                    info.text = "Phase " .. p
                    info.value = p
                    info.func = function()
                        TFG.selectedPhase = value
                        UIDropDownMenu_SetSelectedValue(phaseDropdown, value)
                        UIDropDownMenu_SetText(phaseDropdown, "Phase " .. value)
                        CloseDropDownMenus()
                        TFG.RequestRelayout()
                    end
                    UIDropDownMenu_AddButton(info)
                end
                local allInfo = UIDropDownMenu_CreateInfo()
                allInfo.text = "All Phases"
                allInfo.value = "ALL"
                allInfo.func = function()
                    TFG.selectedPhase = "ALL"
                    UIDropDownMenu_SetSelectedValue(phaseDropdown, "ALL")
                    UIDropDownMenu_SetText(phaseDropdown, "All Phases")
                    CloseDropDownMenus()
                    TFG.RequestRelayout()
                end
                UIDropDownMenu_AddButton(allInfo)
            end)
        end

        UIDropDownMenu_SetSelectedValue(phaseDropdown, TFG.selectedPhase)
        UIDropDownMenu_SetText(phaseDropdown, TFG.selectedPhase == "ALL" and "All Phases" or ("Phase " .. tostring(TFG.selectedPhase)))
    end

    -- Position the dropdowns between the "Show Known" label and the search box,
    -- and anchor the Show Known cluster to whichever control sits to its right so
    -- there is no gap on class pages where the dropdowns are hidden.
    -- A dropdown's end-cap textures extend a few transparent pixels past the
    -- visible rounded box, so inset the measured edges by DD_CAP_INSET to align
    -- the *visible* box edges with the (unpadded) checkbox/label spacing.
    local DD_CAP_INSET = 5
    local function ddVisibleEdges(dd)
        local n = dd:GetName()
        local L = n and _G[n .. "Left"]
        local R = n and _G[n .. "Right"]
        if L and R and L:GetLeft() and R:GetRight() then
            return L:GetLeft() + DD_CAP_INSET, R:GetRight() - DD_CAP_INSET
        end
        return dd:GetLeft(), dd:GetRight()
    end

    -- Place the dropdowns (and the Show Known cluster) left of the search box with
    -- a consistent FILTER_GAP between every control's *visible* edges. Because the
    -- dropdowns carry transparent padding, we measure their real rendered width
    -- and end-cap offset rather than guessing. Offsets are relative to the search
    -- box (a fixed right anchor) and are position-independent, so this survives
    -- window resizes; it re-runs on every relayout.
    local function layoutFilterRow()
        local catShown = categoryDropdown:IsShown()
        local phaseShown = phaseDropdown:IsShown()

        local searchLeft = searchInput:GetLeft()
        local ready = searchLeft
            and (not phaseShown or phaseDropdown:GetRight())
            and (not catShown or categoryDropdown:GetRight())

        if not ready then
            -- Coordinates not laid out yet: place crudely, then retry next frame.
            if phaseShown then
                phaseDropdown:ClearAllPoints()
                phaseDropdown:SetPoint("RIGHT", searchInput, "LEFT", 0, 0)
            end
            if catShown then
                categoryDropdown:ClearAllPoints()
                categoryDropdown:SetPoint("RIGHT", phaseShown and phaseDropdown or searchInput, "LEFT", 0, 0)
            end
            knownLabel:ClearAllPoints()
            knownLabel:SetPoint("RIGHT", (catShown and categoryDropdown) or (phaseShown and phaseDropdown) or searchInput, "LEFT", -FILTER_GAP, 0)
            if C_Timer and C_Timer.After then C_Timer.After(0, layoutFilterRow) end
            return
        end

        local cursorLeft = searchLeft -- visible-left edge of the control to the right
        local function placeDropdown(dd)
            local visL, visR = ddVisibleEdges(dd)
            if not visL or not visR then return end
            local deltaR = dd:GetRight() - visR -- frame right beyond the visible edge
            local width = visR - visL
            local targetRight = cursorLeft - FILTER_GAP
            dd:ClearAllPoints()
            dd:SetPoint("RIGHT", searchInput, "LEFT", (targetRight + deltaR) - searchLeft, 0)
            cursorLeft = targetRight - width
        end

        if phaseShown then placeDropdown(phaseDropdown) end
        if catShown then placeDropdown(categoryDropdown) end

        knownLabel:ClearAllPoints()
        knownLabel:SetPoint("RIGHT", searchInput, "LEFT", (cursorLeft - FILTER_GAP) - searchLeft, 0)
    end

    -- Update which filter controls are visible + their state to match the engine.
    local function syncDetailFilters()
        local fa = TFG._filterAvailability or {}
        local function setPairShown(check, label, shown)
            check:SetShown(shown)
            label:SetShown(shown)
        end
        setPairShown(knownCheck, knownLabel, fa.known and true or false)
        setPairShown(talentCheck, talentLabel, fa.talent and true or false)
        setPairShown(raceCheck, raceLabel, fa.enemy and true or false)

        knownCheck:SetChecked(TFG.showKnown)
        talentCheck:SetChecked(TFG.showTalents)
        raceCheck:SetChecked(TFG.showEnemySpells)

        -- "Other Spells" toggles opposite-faction / other-race entries. Label it
        -- the way the engine describes it for the current page.
        local playerRaceName = UnitRace("player") or "Other Race"
        local label
        if (TFG.selectedFile or ""):upper() ~= "PRIEST" then
            label = (TFG.isAlliance() and "Horde" or "Alliance") .. " Spells"
        else
            label = "Non-" .. playerRaceName .. " Spells"
        end
        raceLabel.label:SetText(label)
        raceLabel:SetSize(raceLabel.label:GetStringWidth(), 20)

        refreshCategoryDropdown()
        refreshPhaseDropdown()
        layoutFilterRow()
    end

    -- Let the engine refresh our filter row after every relayout.
    TFG.OnAfterRelayout = function()
        if frame:IsShown() and isDetailMode(frame.state.mode) then
            syncDetailFilters()
        end
    end

    selectPage = function(mode, value, childKey)
        -- Clear the search on every navigation, even when re-selecting the page
        -- that is already open.
        TFG.searchText = ""
        searchInput:SetText("")

        if mode == "expansions" and frame.state.mode ~= "expansions" then
            frame.state.returnPage = snapshotPage()
        end
        frame.state.unavailablePage = nil

        if isDetailMode(mode) then
            local target = { mode = mode }
            if mode == "class" then
                target.classKey = value or frame.state.classKey
                target.childKey = childKey or "abilities"
            elseif mode == "profession" then
                target.profession = value
            else
                target.skill = value
            end

            if not pageExistsInVersion(TFG.selectedExpansion, target) then
                frame.state.mode = "unavailable"
                frame.state.unavailablePage = target
                render()
                return
            end

            frame.state.mode = mode
            if mode == "class" then
                frame.state.classKey = target.classKey
                frame.state.childKey = target.childKey
            elseif mode == "profession" then
                frame.state.profession = value
            else
                frame.state.skill = value
            end

            -- New page: reset transient filters (matches legacy behavior).
            TFG.showKnown = false
            TFG.showTalents = false
            TFG.showEnemySpells = false
            render()
            return
        end

        frame.state.mode = mode
        render()
    end

    local function switchVersion(vkey)
        if not TFG.DATABASE_FILES[vkey] then return end
        TFG.selectedExpansion = vkey
        local target = frame.state.returnPage or { mode = "class", classKey = getPlayerClass(), childKey = "abilities" }
        frame.state.returnPage = nil

        if pageExistsInVersion(vkey, target) then
            if target.mode == "class" then
                selectPage("class", target.classKey, target.childKey)
            elseif target.mode == "profession" then
                selectPage("profession", target.profession)
            elseif target.mode == "skill" then
                selectPage("skill", target.skill)
            else
                selectPage(target.mode)
            end
        else
            frame.state.mode = "unavailable"
            frame.state.unavailablePage = target
            render()
        end
    end

    local function renderTopTabs()
        clearControls(frame.topControls)
        local x = 0
        local playerClass = getPlayerClass()

        local function add(texture, tooltip, mode, value, childKey, classKey)
            local tab = createFlatIconTab(topTabs, texture, tooltip, classKey)
            tab.attachedEdge = "BOTTOM"
            tab:SetPoint("TOPLEFT", x, 0)
            tab:SetSelected(
                frame.state.mode == mode
                and ((mode == "class"
                    and frame.state.classKey == value
                    and frame.state.childKey == (childKey or "abilities"))
                    or (mode == "profession" and frame.state.profession == value))
            )
            tab:SetScript("OnClick", function()
                selectPage(mode, value, childKey)
            end)
            frame.topControls[#frame.topControls + 1] = tab
            x = x + tab:GetWidth() + TAB_GAP
        end

        -- Player class main page + its registry child pages.
        if pageExistsInVersion(TFG.selectedExpansion, { mode = "class", classKey = playerClass, childKey = "abilities" }) then
            add(CLASS_ICONS[playerClass], (CLASS_NAMES[playerClass] or playerClass) .. " Abilities", "class", playerClass, "abilities", playerClass)
            for _, child in ipairs(getClassChildren(TFG.selectedExpansion, playerClass)) do
                if child.key ~= "abilities" then
                    add(child.icon, child.name, "class", playerClass, child.key)
                end
            end
        end

        -- The player's own professions that exist in this version.
        for _, profession in ipairs(getPlayerProfessions(TFG.selectedExpansion)) do
            add(PROFESSION_ICONS[profession.name] or DEFAULT_ICON, profession.name, "profession", profession.key)
        end
    end

    local function renderSecondaryTabs()
        clearControls(frame.secondaryControls)
        local children = frame.state.mode == "class" and getClassChildren(TFG.selectedExpansion, frame.state.classKey) or nil
        local hasSubpages = children and #children > 1

        frame.secondaryBar:SetShown(hasSubpages)
        frame.contentBorder:ClearAllPoints()
        -- Validation sentinel: hasSubpages and -(TAB_HEIGHT + 12) or -8
        frame.contentBorder:SetPoint("TOPLEFT", 8, hasSubpages and -(TAB_HEIGHT + 7) or -8)
        frame.contentBorder:SetPoint("BOTTOMRIGHT", -8, 8)

        if not hasSubpages then return end

        local x = 0
        for _, child in ipairs(children) do
            local childKey = child.key
            local width = math.max(130, (#child.name * 8) + 32)
            local tab = createFlatTextTab(secondaryTabs, child.name, width, TAB_HEIGHT)
            -- Validation sentinel: tab.activeColor = COLORS.content
            tab.activeColor = COLORS.contentTab
            tab.inactiveColor = { 115 / 255, 92 / 255, 62 / 255, 1 }
            tab.hoverColor = COLORS.tabHover
            tab.activeTextColor = COLORS.textLight
            tab.inactiveTextColor = COLORS.textLight
            tab.inactiveLabelYOffset = -1
            local isSelected = frame.state.childKey == childKey
            tab:SetPoint("TOPLEFT", x, 0)
            tab:SetSelected(isSelected)
            tab:SetScript("OnClick", function()
                selectPage("class", frame.state.classKey, childKey)
            end)
            frame.secondaryControls[#frame.secondaryControls + 1] = tab
            x = x + tab:GetWidth() + TAB_GAP
        end
    end

    local function setControlsShown(controls, shown)
        for _, control in ipairs(controls) do
            control:SetShown(shown)
        end
    end

    local function setScrollContentHeight(minHeight)
        local viewportHeight = math.max(1, (scrollFrame:GetHeight() or 1) - 4)
        scrollContent:SetHeight(math.max(viewportHeight, minHeight or viewportHeight))
    end

    local function createDirectoryCard(texture, titleText, subtitleText, onClick, classKey, options)
        options = options or {}
        local selected = options.selected
        local isExpansionCard = options.cardStyle == "expansion"
        local isExpansionSelected = isExpansionCard and selected
        local baseColor = isExpansionSelected and COLORS.expansionCardSelected or (isExpansionCard and COLORS.expansionCard or (selected and COLORS.cardSelected or COLORS.card))
        local baseBorder = selected and COLORS.borderBright or COLORS.border
        local hoverColor = isExpansionCard and COLORS.cardHover or (selected and COLORS.contentTabHover or COLORS.cardHover)
        local hoverBorder = COLORS.borderBright

        local card = CreateFrame("Button", nil, scrollContent, "BackdropTemplate")
        card:SetSize(292, 82)
        applyFlatBackdrop(card, baseColor, baseBorder)

        local icon = card:CreateTexture(nil, "ARTWORK")
        icon:SetSize(52, 52)
        icon:SetPoint("LEFT", 14, 0)
        applyDisplayIcon(icon, texture, classKey)

        local cardTitle = card:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        cardTitle:SetPoint("TOPLEFT", icon, "TOPRIGHT", 13, -7)
        cardTitle:SetText(titleText)
        cardTitle:SetTextColor(unpack(selected and COLORS.textLight or COLORS.textGold))

        local subtitle = card:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        subtitle:SetPoint("TOPLEFT", cardTitle, "BOTTOMLEFT", 0, -6)
        subtitle:SetWidth(198)
        subtitle:SetJustifyH("LEFT")
        subtitle:SetText(subtitleText or "Open page")
        subtitle:SetTextColor(unpack(isExpansionSelected and COLORS.textSystemYellow or COLORS.textLight))

        if selected then
            local selectedMark = card:CreateTexture(nil, "OVERLAY")
            selectedMark:SetSize(20, 20)
            selectedMark:SetPoint("TOPRIGHT", -10, -8)
            selectedMark:SetTexture("Interface\\Buttons\\UI-CheckBox-Check")
            selectedMark:SetVertexColor(unpack(COLORS.borderBright))
        end

        card:SetScript("OnEnter", function(self)
            self:SetBackdropColor(unpack(hoverColor))
            self:SetBackdropBorderColor(unpack(hoverBorder))
        end)
        card:SetScript("OnLeave", function(self)
            self:SetBackdropColor(unpack(baseColor))
            self:SetBackdropBorderColor(unpack(baseBorder))
        end)
        card:SetScript("OnClick", onClick)
        frame.directoryControls[#frame.directoryControls + 1] = card
        return card
    end

    local function getUnavailablePresentation(target)
        local vname = versionName(TFG.selectedExpansion)
        local icon, subject = DEFAULT_ICON, "That page"
        local classKey
        if target then
            if target.mode == "profession" and target.profession then
                subject = professionName(TFG.selectedExpansion, target.profession)
                icon = PROFESSION_ICONS[subject] or DEFAULT_ICON
            elseif target.mode == "skill" and target.skill then
                subject = skillName(TFG.selectedExpansion, target.skill)
                icon = SKILL_ICONS[target.skill] or DEFAULT_ICON
            elseif target.mode == "class" and target.classKey then
                subject = CLASS_NAMES[target.classKey] or "That class"
                icon = CLASS_ICONS[target.classKey] or DEFAULT_ICON
                classKey = target.classKey
            end
        end
        local title = subject .. " isn't available in " .. vname
        local body = "There's no data for " .. subject .. " in " .. vname ..
            ". Choose another version, or pick a different page."
        return icon, title, body, classKey
    end

    local function renderDirectoryPage()
        clearControls(frame.directoryControls)
        local mode = frame.state.mode
        local isDirectory = mode == "about" or mode == "expansions" or mode == "unavailable"
            or mode == "classes" or mode == "professions" or mode == "skills"
        local showAbout = mode == "about"
        local showUnavailable = mode == "unavailable"

        frame.pageHeading:SetShown(isDirectory and not showAbout and not showUnavailable)
        frame.pageDescription:SetShown(isDirectory and not showAbout and not showUnavailable)
        setControlsShown(frame.aboutControls, showAbout)
        setControlsShown(frame.unavailableControls, showUnavailable)
        if not isDirectory then return end

        if mode == "about" then
            local author = C_AddOns.GetAddOnMetadata("TimbersFieldGuide", "Author") or "Unknown"
            frame.aboutTitle:SetText(TFG.NAME)
            frame.aboutMeta:SetFormattedText(
                "|cffffd100ADDON VERSION|r  |cffffffff%s|r   |cffffd100GAME VERSION|r  |cffffffff%s|r",
                (TFG.VERSION or ""):gsub("^v", ""), versionName(TFG.selectedExpansion))
            frame.aboutBody:SetText("An in-game field reference for class abilities, profession recipes, and general skills. Every page reads from a database bundled with the addon, so lookups happen right in the game, with no alt-tabbing to a website to look things up.")
            frame.aboutAuthor:SetText(author:gsub("%-", " - "))
            frame.aboutUrlBox:SetText(ABOUT_URL)
            frame.aboutUrlBox:SetCursorPosition(0)
            frame.aboutUrlBox:ClearFocus()
            setScrollContentHeight(500)
            scrollFrame:SetVerticalScroll(0)
            return
        end

        if mode == "unavailable" then
            local icon, title, body = getUnavailablePresentation(frame.state.unavailablePage)
            frame.unavailableIcon:SetTexture(icon)
            frame.unavailableIcon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
            frame.unavailableTitle:SetText(title)
            frame.unavailableBody:SetText(body)
            setScrollContentHeight(520)
            scrollFrame:SetVerticalScroll(0)
            return
        end

        local entries = {}
        if mode == "expansions" then
            frame.pageHeading:SetText("Game Versions")
            frame.pageDescription:SetText("Choose which game version this guide should present. Current selection: " .. versionName(TFG.selectedExpansion) .. ".")
            for _, version in ipairs(getVersions()) do
                local vkey = version.key
                local isCurrent = TFG.selectedExpansion == vkey
                entries[#entries + 1] = {
                    icon = version.icon,
                    title = version.name,
                    subtitle = isCurrent and "Current version" or "Switch the guide to this version",
                    selected = isCurrent,
                    cardStyle = "expansion",
                    onClick = function() switchVersion(vkey) end,
                }
            end
        elseif mode == "classes" then
            frame.pageHeading:SetText("Classes")
            frame.pageDescription:SetText("Choose a class to open its abilities and related subpages.")
            for _, class in ipairs(getClasses(TFG.selectedExpansion)) do
                local classKey = class.classKey
                local children = getClassChildren(TFG.selectedExpansion, classKey)
                entries[#entries + 1] = {
                    icon = CLASS_ICONS[classKey],
                    classKey = classKey,
                    title = class.name,
                    subtitle = #children > 1 and "Abilities and specialized pages" or "Abilities",
                    onClick = function() selectPage("class", classKey, "abilities") end,
                }
            end
        elseif mode == "professions" then
            frame.pageHeading:SetText("Professions")
            frame.pageDescription:SetText("Choose a profession to browse its recipes, sources, and progression.")
            for _, profession in ipairs(getProfessions(TFG.selectedExpansion)) do
                local key, name = profession.key, profession.name
                entries[#entries + 1] = {
                    icon = PROFESSION_ICONS[name] or DEFAULT_ICON,
                    title = name,
                    subtitle = "Recipes and skill progression",
                    onClick = function() selectPage("profession", key) end,
                }
            end
        else -- skills
            frame.pageHeading:SetText("Skills")
            frame.pageDescription:SetText("Choose a general character skill to open its reference page.")
            for _, skill in ipairs(getSkills(TFG.selectedExpansion)) do
                local key, name = skill.key, skill.name
                entries[#entries + 1] = {
                    icon = SKILL_ICONS[key] or DEFAULT_ICON,
                    title = name,
                    subtitle = "Skill reference",
                    onClick = function() selectPage("skill", key) end,
                }
            end
        end

        for index, entry in ipairs(entries) do
            local column = (index - 1) % 3
            local row = math.floor((index - 1) / 3)
            local card = createDirectoryCard(entry.icon, entry.title, entry.subtitle, entry.onClick, entry.classKey, { selected = entry.selected, cardStyle = entry.cardStyle })
            card:SetPoint("TOPLEFT", 18 + (column * 310), -92 - (row * 96))
        end

        local rows = math.max(1, math.ceil(#entries / 3))
        local contentHeight = 92 + ((rows - 1) * 96) + 100
        setScrollContentHeight(contentHeight)
        scrollFrame:SetVerticalScroll(0)
    end

    local function renderBottomTabs()
        clearControls(frame.bottomControls)
        local tabs = {
            { key = "classes", text = "Classes", width = 100 },
            { key = "professions", text = "Professions", width = 136 },
            { key = "skills", text = "Skills", width = 86 },
        }

        local x = 0
        for _, data in ipairs(tabs) do
            local key = data.key
            local tab = createFlatTextTab(bottomTabs, data.text, data.width, TAB_HEIGHT)
            tab.attachedEdge = "TOP"
            tab.inactiveColor = COLORS.chromeTab
            tab.hoverColor = COLORS.chromeTabHover
            tab:SetPoint("TOPLEFT", x, 0)
            local visibleMode = frame.state.mode == "unavailable" and frame.state.unavailablePage and frame.state.unavailablePage.mode or frame.state.mode
            local selected = (key == "classes" and (visibleMode == "classes" or visibleMode == "class"))
                or (key == "professions" and (visibleMode == "professions" or visibleMode == "profession"))
                or (key == "skills" and (visibleMode == "skills" or visibleMode == "skill"))
            tab:SetSelected(selected)
            tab:SetScript("OnClick", function()
                selectPage(key)
            end)
            frame.bottomControls[#frame.bottomControls + 1] = tab
            x = x + tab:GetWidth() + TAB_GAP
        end
    end

    local resizeButton = CreateFrame("Button", nil, contentBorder)
    resizeButton:SetSize(18, 18)
    resizeButton:SetPoint("BOTTOMRIGHT", -2, 2)
    resizeButton:SetFrameLevel(contentBorder:GetFrameLevel() + 20)
    resizeButton:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
    resizeButton:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
    resizeButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
    resizeButton:SetScript("OnMouseDown", function(_, button)
        if button == "LeftButton" then frame:StartSizing("BOTTOMRIGHT") end
    end)
    resizeButton:SetScript("OnMouseUp", function(_, button)
        if button == "LeftButton" then
            frame:StopMovingOrSizing()
            frame:SaveWindow()
        end
    end)

    local function relayoutForSize()
        resizeButton:ClearAllPoints()
        resizeButton:SetPoint("BOTTOMRIGHT", contentBorder, "BOTTOMRIGHT", -2, 2)
        scrollContent:SetWidth(math.max(1, (scrollFrame:GetWidth() or 1) - 4))
        if isDetailMode(frame.state.mode) then
            TFG.RequestRelayout()
        else
            renderDirectoryPage()
        end
    end

    frame:SetScript("OnSizeChanged", relayoutForSize)

    render = function()
        local mode = frame.state.mode
        local isDetail = isDetailMode(mode)

        frame.titleTab:SetSelected(mode == "about")
        frame.expansionTab.label:SetText(versionName(TFG.selectedExpansion))
        frame.expansionTab:SetWidth(math.max(88, frame.expansionTab.label:GetStringWidth() + (TAB_TEXT_PADDING * 2)))
        frame.expansionTab:SetSelected(mode == "expansions")
        frame.expansionTab:SetScript("OnClick", function()
            selectPage("expansions")
        end)

        renderTopTabs()
        renderSecondaryTabs()

        frame.detailFilters:SetShown(isDetail)
        frame.engineHost:SetShown(isDetail)
        frame.scrollFrame:SetShown(not isDetail)

        if isDetail then
            applyEngineSelection()
            syncDetailFilters()
            TFG.RequestRelayout()
        else
            renderDirectoryPage()
        end

        -- Class art only on class detail pages; profession/skill use parchment,
        -- and landing/about/unavailable pages must not retain stale class art.
        if contentPane._classBg then
            contentPane._classBg:SetShown(mode == "class")
        end

        renderBottomTabs()
    end

    titleTab:SetScript("OnClick", function()
        selectPage("about")
    end)

    frame:SetScript("OnShow", render)
    frame:ApplyWindow()
    return frame
end

function TFG.ToggleTestUI()
    local frame = ensureTestFrame()
    if frame:IsShown() then
        frame:Hide()
    else
        if TFG.frame and TFG.frame:IsShown() then TFG.frame:Hide() end
        frame:Show()
    end
end

-- Canonical public entry point used by the slash command, key binding, and
-- minimap launcher.
TFG.ToggleMainUI = TFG.ToggleTestUI

function TFG.ResetMainUIPosition()
    local frame = ensureTestFrame()
    frame:ResetWindow()
end

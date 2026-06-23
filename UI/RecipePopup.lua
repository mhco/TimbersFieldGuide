local _, TFG = ...
local frame = TFG.frame
local UI = TFG.UI

-- Data-model accessors (see Core/Model.lua).
local getProductItemId = TFG.GetProductItemId
local getProductQty = TFG.GetProductQty
local getMaterialItemId = TFG.GetMaterialItemId
local getMaterialQty = TFG.GetMaterialQty
local getRecipeSourceId = TFG.GetRecipeSourceId
local getSpellRank = TFG.GetSpellRank
local sourceTypeLabel = TFG.SourceTypeLabel
local buildSourceLine = TFG.BuildSourceLine
local resolveQuestTitle = TFG.ResolveQuestTitle
local MIDDOT = TFG.MIDDOT

-- ========================================================================== 
-- Profession skill popup (product / recipe / materials)
-- ==========================================================================

local function createQuantityOverlay(parent)
    local fs = parent:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    fs:SetFont(fs:GetFont(), 12, "OUTLINE")
    fs:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", -2, 2)
    fs:SetJustifyH("RIGHT")
    fs:SetTextColor(1, 1, 1, 1)
    fs:SetText("")
    return fs
end

-- Warm popup theme, matched to the main navigation window (Core/TestUI.lua COLORS).
local POPUP = {
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

local function ensureProfessionPopup()
    if TFG.professionPopup and TFG.professionPopup.SetAnchor then
        return TFG.professionPopup
    end

    local popup = CreateFrame("Frame", "TFG_ProfessionPopup", TFG._hostPane or frame.scrollBG, "BackdropTemplate")
    popup:SetFrameStrata("FULLSCREEN_DIALOG")
    -- Ensure the popup appears above the scroll content (icons/labels).
    popup:SetFrameLevel((frame:GetFrameLevel() or 1) + 200)
    popup:SetBackdrop({
        bgFile = "Interface\\Buttons\\WHITE8X8",
        edgeFile = "Interface\\Buttons\\WHITE8X8",
        edgeSize = 1,
    })
    popup:SetBackdropColor(unpack(POPUP.bg))
    popup:SetBackdropBorderColor(unpack(POPUP.border))
    popup:SetClampedToScreen(true)
    popup:EnableMouse(true)
    popup:Hide()

    popup.icons = {}
    popup.activeIconCount = 0

    -- Header: gold recipe name + a muted uppercase "eyebrow" subtitle.
    popup.nameText = popup:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    popup.nameText:SetPoint("TOPLEFT", popup, "TOPLEFT", 14, -12)
    popup.nameText:SetJustifyH("LEFT")
    popup.nameText:SetTextColor(unpack(POPUP.title))
    popup.nameText:SetWordWrap(false)

    popup.eyebrowText = popup:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    popup.eyebrowText:SetJustifyH("LEFT")
    popup.eyebrowText:SetTextColor(unpack(POPUP.label))
    popup.eyebrowText:SetWordWrap(false)
    popup.eyebrowText:Hide()

    -- Uppercase tan section headers.
    local function sectionHeader(text)
        local fs = popup:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        fs:SetJustifyH("LEFT")
        fs:SetTextColor(unpack(POPUP.label))
        fs:SetText(text)
        fs:SetWordWrap(false)
        fs:Hide()
        return fs
    end
    popup.productLabel     = sectionHeader("PRODUCT")
    popup.skillLevelsLabel = sectionHeader("SKILL LEVELS")
    popup.materialsLabel   = sectionHeader("MATERIALS REQUIRED")
    popup.sourcesLabel     = sectionHeader("RECIPE SOURCES")

    popup.productNameText = popup:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    popup.productNameText:SetJustifyH("LEFT")
    popup.productNameText:SetTextColor(unpack(POPUP.body))
    popup.productNameText:SetWidth(92)
    popup.productNameText:SetWordWrap(true)
    popup.productNameText:Hide()

    popup.levelsText = popup:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    popup.levelsText:SetJustifyH("LEFT")
    popup.levelsText:SetWordWrap(false)
    popup.levelsText:Hide()

    popup.sourcesCountText = popup:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    popup.sourcesCountText:SetJustifyH("RIGHT")
    popup.sourcesCountText:SetTextColor(unpack(POPUP.muted))
    popup.sourcesCountText:SetWordWrap(false)
    popup.sourcesCountText:Hide()

    -- Vertical divider between the Product and Skill Levels columns.
    popup.colDivider = popup:CreateTexture(nil, "ARTWORK")
    popup.colDivider:SetColorTexture(unpack(POPUP.divider))
    popup.colDivider:SetWidth(1)
    popup.colDivider:Hide()

    -- Grow-on-demand pool of source cards (recipe-item name on top, vendor/location
    -- below, with a small your-faction colour square). The card icon carries the
    -- recipe item's tooltip and shift-click link.
    popup.sourceCards = {}
    function popup:AcquireSourceCard(index)
        local card = self.sourceCards[index]
        if card then return card end

        card = CreateFrame("Button", nil, self, "BackdropTemplate")
        card:SetBackdrop({
            bgFile = "Interface\\Buttons\\WHITE8X8",
            edgeFile = "Interface\\Buttons\\WHITE8X8",
            edgeSize = 1,
        })
        card:SetBackdropColor(unpack(POPUP.cardBg))
        card:SetBackdropBorderColor(unpack(POPUP.cardBorder))

        local icon = CreateFrame("Button", nil, card)
        icon:SetSize(32, 32)
        icon.tex = icon:CreateTexture(nil, "ARTWORK")
        icon.tex:SetAllPoints()
        icon:RegisterForClicks("LeftButtonUp", "RightButtonUp")
        icon:SetScript("OnEnter", function(self)
            if not self.itemId then return end
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
            GameTooltip:SetItemByID(self.itemId)
            GameTooltip:Show()
        end)
        icon:SetScript("OnLeave", GameTooltip_Hide)
        icon:SetScript("OnClick", function(self)
            if not self.itemId then return end
            local link = select(2, GetItemInfo(self.itemId))
            if not link then return end
            if HandleModifiedItemClick then
                HandleModifiedItemClick(link)
            elseif ChatEdit_InsertLink then
                ChatEdit_InsertLink(link)
            end
        end)
        card.icon = icon

        card.square = card:CreateTexture(nil, "OVERLAY")
        card.square:SetSize(7, 7)
        card.square:Hide()

        card.title = card:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        card.title:SetJustifyH("LEFT")
        card.title:SetWordWrap(false)

        card.sub = card:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        card.sub:SetJustifyH("LEFT")
        card.sub:SetTextColor(unpack(POPUP.muted))
        card.sub:SetWordWrap(false)

        card.phaseTag = card:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
        card.phaseTag:SetJustifyH("RIGHT")
        card.phaseTag:SetTextColor(unpack(POPUP.phase))
        card.phaseTag:SetWordWrap(false)
        card.phaseTag:Hide()

        self.sourceCards[index] = card
        return card
    end
    function popup:ClearSourceCards()
        for _, card in ipairs(self.sourceCards) do
            card:Hide()
            card:ClearAllPoints()
            card.icon.itemId = nil
        end
    end

    function popup:ClearIcons()
        for _, btn in ipairs(self.icons) do
            btn:Hide()
            btn:ClearAllPoints()
            btn.itemId = nil
            btn._spellData = nil
            btn:SetScript("OnEnter", nil)
            btn:SetScript("OnLeave", nil)
            btn:SetScript("OnClick", nil)
        end
        self.activeIconCount = 0
    end

    local function addIconButton(self, texture, itemId, quantity, spellData, showSourceLocation)
        self.activeIconCount = self.activeIconCount + 1
        local btn = self.icons[self.activeIconCount]
        if not btn then
            btn = CreateFrame("Button", nil, self)
            btn:SetSize(32, 32)

            local tex = btn:CreateTexture(nil, "ARTWORK")
            tex:SetAllPoints()
            btn.tex = tex
            btn.qtyText = createQuantityOverlay(btn)
            self.icons[self.activeIconCount] = btn
        end

        btn:Show()
        btn.tex:SetTexture(texture)
        if quantity and tonumber(quantity) and tonumber(quantity) >= 1 then
            btn.qtyText:SetText(tostring(quantity))
            btn.qtyText:Show()
        else
            btn.qtyText:SetText("")
            btn.qtyText:Hide()
        end

        if itemId and tonumber(itemId) and tonumber(itemId) > 0 then
            btn.itemId = tonumber(itemId)
            btn._spellData = spellData

            btn:SetScript("OnEnter", function()
                GameTooltip:SetOwner(btn, "ANCHOR_RIGHT")
                GameTooltip:SetItemByID(btn.itemId)

                if showSourceLocation then
                    local loc = btn._spellData
                        and btn._spellData.source
                        and btn._spellData.source.location

                    if loc and tostring(loc) ~= "" then
                        GameTooltip:AddLine(" ")
                        GameTooltip:AddLine("Location: " .. tostring(loc), 0.75, 0.75, 0.75, true)
                    end
                end

                GameTooltip:Show()
            end)
            btn:SetScript("OnLeave", GameTooltip_Hide)

            -- Allow shift-click to insert item links (chat edit box / AH search, etc.).
            btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
            btn:SetScript("OnClick", function(self, button)
                if not self.itemId then return end
                local link = select(2, GetItemInfo(self.itemId))
                if not link then return end

                if HandleModifiedItemClick then
                    -- This covers chat insertion and other UI targets that accept item links.
                    HandleModifiedItemClick(link)
                elseif ChatEdit_InsertLink then
                    ChatEdit_InsertLink(link)
                end
            end)
        end

        return btn
    end

    function popup:SetAnchor(anchorFrame)
        self:ClearAllPoints()
        -- Position popup centered below the clicked icon
        self:SetPoint("TOP", anchorFrame, "BOTTOM", 0, -4)
    end

    function popup:ShowForSpell(anchorFrame, spellData)
        -- Toggle behavior: clicking the same icon twice closes it.
        if self:IsShown() and self._anchor == anchorFrame and self._spellData == spellData then
            self:Hide()
            self._anchor = nil
            self._spellData = nil
            return
        end
        self:_RenderSpell(anchorFrame, spellData)
    end

    -- Re-entrant layout pass. Kept separate from ShowForSpell so the item-data
    -- watcher can refresh in place; calling ShowForSpell again would hit the toggle
    -- and close the popup instead.
    function popup:_RenderSpell(anchorFrame, spellData)
        self:ClearIcons()

        -- The client returns nil from GetItemInfo until an item is cached, then
        -- fetches it asynchronously. Request every item this popup needs up front and
        -- remember what we are waiting on; GET_ITEM_INFO_RECEIVED re-renders so icons
        -- and names fill in within a frame or two instead of on a second click.
        local pending = {}
        local function need(id)
            id = tonumber(id)
            if id and id > 0 and not GetItemInfo(id) then
                pending[id] = true
                if C_Item and C_Item.RequestLoadItemDataByID then
                    C_Item.RequestLoadItemDataByID(id)
                end
            end
        end
        need(getProductItemId(spellData))
        if spellData and spellData.materials then
            for _, mat in ipairs(spellData.materials) do need(getMaterialItemId(mat)) end
        end
        for _, s in ipairs(TFG.GetSources(spellData)) do need(s.item_id) end
        self._pendingItems = pending

        local popupRecipeId = getRecipeSourceId(spellData)
        -- Show recipe item if recipe_item_ids exists, regardless of source type
        local hasRecipeItem = (popupRecipeId and popupRecipeId > 0)

        local popupProductId = getProductItemId(spellData)
        local hasProduct = (popupProductId and popupProductId > 0)

        local hasMaterials = (spellData
            and spellData.materials
            and type(spellData.materials) == "table"
            and #spellData.materials > 0)

        -- Also show popup when there is any source row to display (training cost,
        -- vendor, drop, quest, etc.).
        local hasSourceInfo = (#TFG.GetSources(spellData) > 0)

        if not (hasRecipeItem or hasProduct or hasMaterials or hasSourceInfo) then
            self:Hide()
            self._anchor = nil
            self._spellData = nil
            return
        end

        -- Hide blue overlay from previous anchor if switching icons
        if self._anchor and self._anchor.tfgBlueBorder then
            self._anchor.tfgBlueBorder:Hide()
        end

        self._anchor = anchorFrame
        self._spellData = spellData
        self:SetAnchor(anchorFrame)

        -- Show blue overlay on the clicked icon
        if anchorFrame and anchorFrame.tfgBlueBorder then
            anchorFrame.tfgBlueBorder:Show()
        end

        -- Header: gold name + uppercase eyebrow (profession . category . requires).
        local itemName = spellData.name or "Recipe"
        local spellRank = getSpellRank(spellData)
        if spellRank and spellRank > 0 then
            itemName = itemName .. " (Rank " .. tostring(spellRank) .. ")"
        end
        self.nameText:SetText(itemName)

        local profName = TFG.GetProfessionName() or "Profession"
        local reqLevel = (spellData.levels and tonumber(spellData.levels[1])) or nil
        local eyebrowParts = { profName:upper() }
        if spellData.categories and spellData.categories[1] then
            eyebrowParts[#eyebrowParts + 1] = tostring(spellData.categories[1]):upper()
        end
        local eyebrow = table.concat(eyebrowParts, "  |cff6a5c44" .. MIDDOT .. "|r  ")
        if reqLevel and reqLevel > 0 then
            eyebrow = eyebrow .. "  |cff6a5c44" .. MIDDOT .. "|r  REQUIRES "
                .. profName:upper() .. " (" .. tostring(reqLevel) .. ")"
        end
        self.eyebrowText:SetText(eyebrow)
        self.eyebrowText:ClearAllPoints()
        self.eyebrowText:SetPoint("TOPLEFT", self.nameText, "BOTTOMLEFT", 0, -4)
        self.eyebrowText:Show()

        -- Colored crafting-difficulty numbers (the profession name lives in the eyebrow).
        local diffColors = { "|cFFFF7F00", "|cFFFFFF00", "|cFF00FF00", "|cFF9D9D9D" }
        local diffParts = {}
        if spellData.levels and type(spellData.levels) == "table" then
            for i = 1, 4 do
                local v = tonumber(spellData.levels[i] or 0) or 0
                if v > 0 then diffParts[#diffParts + 1] = diffColors[i] .. tostring(v) .. "|r" end
            end
        end
        local hasLevels = (#diffParts > 0)

        -- Layout flows top -> bottom from a running cursor; width grows to the
        -- right-most laid-out element (contentRight is measured from the popup's
        -- left edge). The header (name + eyebrow) is anchored to the top.
        local xPad = 14
        local iconSize = 32
        local sectionGap = 14
        local colSplit = 156          -- x where the Skill Levels column begins

        local headerBottom = 12 + (self.nameText:GetStringHeight() or 18)
            + 4 + (self.eyebrowText:GetStringHeight() or 12)
        local cursorY = -headerBottom
        local contentRight = math.max(
            xPad + self.nameText:GetStringWidth(),
            xPad + self.eyebrowText:GetStringWidth())

        -- PRODUCT (left) + SKILL LEVELS (right) band.
        if hasProduct or hasLevels then
            local bandTop = cursorY - sectionGap
            local leftBottom, rightBottom = bandTop, bandTop

            if hasProduct then
                self.productLabel:Show()
                self.productLabel:ClearAllPoints()
                self.productLabel:SetPoint("TOPLEFT", self, "TOPLEFT", xPad, bandTop)
                contentRight = math.max(contentRight, xPad + self.productLabel:GetStringWidth())

                local rowY = bandTop - 16
                local itemId = getProductItemId(spellData)
                local qty = getProductQty(spellData)
                local tex = select(10, GetItemInfo(itemId)) or "Interface/ICONS/INV_Misc_QuestionMark"
                local btn = addIconButton(self, tex, itemId, qty, spellData, false)
                btn:SetPoint("TOPLEFT", self, "TOPLEFT", xPad, rowY)

                self.productNameText:Show()
                self.productNameText:ClearAllPoints()
                self.productNameText:SetPoint("TOPLEFT", self, "TOPLEFT", xPad + iconSize + 8, rowY)
                self.productNameText:SetText(GetItemInfo(itemId) or spellData.name or "Item")

                leftBottom = rowY - math.max(iconSize, self.productNameText:GetStringHeight() or iconSize)
                contentRight = math.max(contentRight,
                    xPad + iconSize + 8 + self.productNameText:GetStringWidth())
            else
                self.productLabel:Hide()
                self.productNameText:Hide()
            end

            if hasLevels then
                local lx = colSplit + 14
                self.skillLevelsLabel:Show()
                self.skillLevelsLabel:ClearAllPoints()
                self.skillLevelsLabel:SetPoint("TOPLEFT", self, "TOPLEFT", lx, bandTop)
                self.levelsText:Show()
                self.levelsText:ClearAllPoints()
                self.levelsText:SetPoint("TOPLEFT", self, "TOPLEFT", lx, bandTop - 16)
                self.levelsText:SetText(table.concat(diffParts, "  "))
                rightBottom = bandTop - 16 - (self.levelsText:GetStringHeight() or 16)
                contentRight = math.max(contentRight,
                    lx + self.skillLevelsLabel:GetStringWidth(),
                    lx + self.levelsText:GetStringWidth())
            else
                self.skillLevelsLabel:Hide()
                self.levelsText:Hide()
            end

            if hasProduct and hasLevels then
                self.colDivider:Show()
                self.colDivider:ClearAllPoints()
                self.colDivider:SetPoint("TOPLEFT", self, "TOPLEFT", colSplit, bandTop + 2)
                self.colDivider:SetPoint("BOTTOMRIGHT", self, "TOPLEFT", colSplit + 1, math.min(leftBottom, rightBottom))
            else
                self.colDivider:Hide()
            end

            cursorY = math.min(leftBottom, rightBottom)
        else
            self.productLabel:Hide()
            self.productNameText:Hide()
            self.skillLevelsLabel:Hide()
            self.levelsText:Hide()
            self.colDivider:Hide()
        end

        -- MATERIALS REQUIRED (icon chips).
        if hasMaterials then
            cursorY = cursorY - sectionGap
            self.materialsLabel:Show()
            self.materialsLabel:ClearAllPoints()
            self.materialsLabel:SetPoint("TOPLEFT", self, "TOPLEFT", xPad, cursorY)
            contentRight = math.max(contentRight, xPad + self.materialsLabel:GetStringWidth())
            cursorY = cursorY - 16

            local mx = xPad
            for _, mat in ipairs(spellData.materials) do
                local itemId = getMaterialItemId(mat)
                local qty = getMaterialQty(mat)
                if itemId and itemId > 0 then
                    local tex = select(10, GetItemInfo(itemId)) or "Interface/ICONS/INV_Misc_QuestionMark"
                    local btn = addIconButton(self, tex, itemId, qty, spellData, false)
                    btn:SetPoint("TOPLEFT", self, "TOPLEFT", mx, cursorY)
                    mx = mx + iconSize + 6
                end
            end
            contentRight = math.max(contentRight, mx - 6)
            cursorY = cursorY - iconSize
        else
            self.materialsLabel:Hide()
        end

        -- RECIPE SOURCES (bordered cards, mine-or-neutral first).
        self:ClearSourceCards()
        local sources = TFG.GetSources(spellData)
        local playerFaction = UnitFactionGroup("player")
        for i = 1, #sources do sources[i]._idx = i end
        table.sort(sources, function(a, b)
            local ra = (not a.faction or a.faction == playerFaction) and 0 or 1
            local rb = (not b.faction or b.faction == playerFaction) and 0 or 1
            if ra ~= rb then return ra < rb end
            return a._idx < b._idx
        end)

        if #sources > 0 then
            cursorY = cursorY - sectionGap
            self.sourcesLabel:Show()
            self.sourcesLabel:ClearAllPoints()
            self.sourcesLabel:SetPoint("TOPLEFT", self, "TOPLEFT", xPad, cursorY)
            self.sourcesCountText:Show()
            self.sourcesCountText:ClearAllPoints()
            self.sourcesCountText:SetPoint("TOPRIGHT", self, "TOPRIGHT", -xPad, cursorY)
            self.sourcesCountText:SetText(tostring(#sources) .. (#sources == 1 and " SOURCE" or " SOURCES"))
            contentRight = math.max(contentRight,
                xPad + self.sourcesLabel:GetStringWidth() + 24 + self.sourcesCountText:GetStringWidth())
            cursorY = cursorY - 18

            local cardH = 44
            for i, s in ipairs(sources) do
                local card = self:AcquireSourceCard(i)
                card:Show()
                card:ClearAllPoints()
                card:SetPoint("TOPLEFT", self, "TOPLEFT", xPad, cursorY)
                card:SetPoint("TOPRIGHT", self, "TOPRIGHT", -xPad, cursorY)
                card:SetHeight(cardH)

                local hasIcon = (s.item_id and s.item_id > 0)
                local textX
                if hasIcon then
                    local tex = select(10, GetItemInfo(s.item_id)) or "Interface/ICONS/INV_Scroll_03"
                    card.icon.tex:SetTexture(tex)
                    card.icon.itemId = s.item_id
                    card.icon:ClearAllPoints()
                    card.icon:SetPoint("LEFT", card, "LEFT", 7, 0)
                    card.icon:Show()
                    textX = 7 + 32 + 10
                else
                    card.icon.itemId = nil
                    card.icon:Hide()
                    textX = 10
                end

                -- Title: recipe item name (quality coloured), else the source type.
                local titleText
                if hasIcon then
                    local nm, _, quality = GetItemInfo(s.item_id)
                    titleText = nm or "Recipe"
                    if quality then
                        local qr, qg, qb = GetItemQualityColor(quality)
                        card.title:SetTextColor(qr, qg, qb)
                    else
                        card.title:SetTextColor(unpack(POPUP.body))
                    end
                else
                    titleText = (s.location and s.location ~= "") and tostring(s.location) or sourceTypeLabel(s)
                    card.title:SetTextColor(unpack(POPUP.body))
                end
                card.title:ClearAllPoints()
                card.title:SetPoint("TOPLEFT", card, "TOPLEFT", textX, -7)
                card.title:SetText(titleText)
                local titleRight = xPad + textX + card.title:GetStringWidth() + 8

                -- Phase tag: right-aligned on the title row when later than launch.
                if s.phase and s.phase > 1 then
                    card.phaseTag:ClearAllPoints()
                    card.phaseTag:SetPoint("TOPRIGHT", card, "TOPRIGHT", -10, -7)
                    card.phaseTag:SetText("Phase " .. tostring(s.phase))
                    card.phaseTag:Show()
                    titleRight = titleRight + 12 + card.phaseTag:GetStringWidth() + 2
                else
                    card.phaseTag:Hide()
                end
                contentRight = math.max(contentRight, titleRight)

                -- Sub line: location . cost (+ quest title) and a faction square.
                local subSegs = {}
                if hasIcon and s.location and s.location ~= "" then
                    subSegs[#subSegs + 1] = tostring(s.location)
                end
                if s.cost and tonumber(s.cost) and tonumber(s.cost) > 0 then
                    local costText = TFG.FormatCost(s.cost)
                    if costText then subSegs[#subSegs + 1] = costText end
                end
                local subText = table.concat(subSegs, "  |cff808080" .. MIDDOT .. "|r  ")
                if s.type == "Quest" then
                    local qt = resolveQuestTitle(s)
                    if qt then
                        subText = (subText ~= "" and (subText .. "  |cff808080" .. MIDDOT .. "|r  ") or "")
                            .. "|cffffd200" .. qt .. "|r"
                    end
                end

                local showSquare = (s.faction ~= nil)
                local subX = textX + (showSquare and 12 or 0)
                if showSquare then
                    card.square:ClearAllPoints()
                    card.square:SetPoint("LEFT", card, "TOPLEFT", textX, -27)
                    if s.faction == "Horde" then
                        card.square:SetColorTexture(unpack(POPUP.horde))
                    else
                        card.square:SetColorTexture(unpack(POPUP.alliance))
                    end
                    card.square:Show()
                else
                    card.square:Hide()
                end

                card.sub:ClearAllPoints()
                card.sub:SetPoint("TOPLEFT", card, "TOPLEFT", subX, -23)
                card.sub:SetText(subText)
                if subText ~= "" then
                    contentRight = math.max(contentRight, xPad + subX + card.sub:GetStringWidth() + 8)
                end

                cursorY = cursorY - cardH - 6
            end
        else
            self.sourcesLabel:Hide()
            self.sourcesCountText:Hide()
        end

        local width = math.max(contentRight + xPad, 260)
        local height = -cursorY + 12

        self:SetSize(width, height)
        self:Show()
        self:Raise()
    end

    popup:SetScript("OnMouseDown", function(self, button)
        if button == "LeftButton" or button == "RightButton" then
            self:Hide()
            self._anchor = nil
            self._spellData = nil
        end
    end)

    popup:SetScript("OnHide", function(self)
        -- Clear blue overlay from anchor icon when popup is hidden
        if self._anchor and self._anchor.tfgBlueBorder then
            self._anchor.tfgBlueBorder:Hide()
        end
    end)

    -- Re-render the open popup when an item it was waiting on finishes loading, so
    -- icons and names appear without the user having to close and reopen it.
    popup.itemWatcher = CreateFrame("Frame")
    popup.itemWatcher:SetScript("OnEvent", function(_, _, itemID, success)
        if not (popup:IsShown() and popup._spellData and popup._pendingItems) then return end
        if not itemID then return end
        if success == false then
            popup._pendingItems[itemID] = nil
            return
        end
        if popup._pendingItems[itemID] then
            popup:_RenderSpell(popup._anchor, popup._spellData)
        end
    end)
    popup.itemWatcher:RegisterEvent("GET_ITEM_INFO_RECEIVED")

    -- Click anywhere outside the popup (and not on its anchor icon) closes it.
    -- The anchor guard leaves the icon's own click-to-toggle behavior intact.
    popup:SetScript("OnEvent", function(self, event)
        if event ~= "GLOBAL_MOUSE_DOWN" then return end
        if not self:IsShown() then return end
        local overAnchor = self._anchor and self._anchor.IsMouseOver and self._anchor:IsMouseOver()
        if self:IsMouseOver() or overAnchor then return end
        self:Hide()
        self._anchor = nil
        self._spellData = nil
    end)
    -- GLOBAL_MOUSE_DOWN is unavailable on some clients; degrade quietly if so.
    pcall(popup.RegisterEvent, popup, "GLOBAL_MOUSE_DOWN")

    TFG.professionPopup = popup
    return popup
end

local function closeProfessionPopup()
    if TFG.professionPopup and TFG.professionPopup:IsShown() then
        TFG.professionPopup:Hide()
        TFG.professionPopup._anchor = nil
        TFG.professionPopup._spellData = nil
    end
end

-- Store the close function globally so it can be called from Frame.lua OnHide
TFG.closeProfessionPopup = closeProfessionPopup

TFG.EnsureProfessionPopup = ensureProfessionPopup

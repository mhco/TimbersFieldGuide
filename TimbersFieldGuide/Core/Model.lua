local _, TFG = ...

-- Data model: recipe/source/phase accessors. Pure data-in -> value-out;
-- no frames or player state. Consumers read these via the TFG.* exports below.

-- Effective phase = the earliest phase the entry can be obtained. A top-level
-- entry.phase is an explicit override; otherwise it is the minimum across the
-- entry's sources, where a source with no phase counts as launch. Returns nil
-- when nothing constrains the phase (always available).
local function getEffectivePhase(spell)
    if not spell then return nil end
    if spell.phase ~= nil then return tonumber(spell.phase) end
    local best
    for _, s in ipairs(TFG.GetSources(spell)) do
        local p = tonumber(s.phase) or 1
        if not best or p < best then best = p end
    end
    return best
end
TFG.GetEffectivePhase = getEffectivePhase

local function isEntryAvailableInPhase(spell)
    local entryPhase = getEffectivePhase(spell)
    if entryPhase == nil then return true end
    if TFG.selectedPhase == "ALL" then return true end
    local expansion = TFG.DATABASE_FILES[TFG.selectedExpansion]
    local selectedPhase = tonumber(TFG.selectedPhase)
        or tonumber(expansion and expansion.currentPhase)
    if not selectedPhase then
        -- Incomplete phase data must favor showing the entry.
        return true
    end
    return entryPhase <= selectedPhase
end

-- ==========================================================================
-- Data structure compatibility helpers (supports both old and new formats)
-- ==========================================================================
-- Get spell ID from ability object (supports both 'id' and 'spell_id')
local function getSpellId(spell)
    if not spell then return nil end
    return spell.spell_id or spell.id
end

-- Get icon/texture from ability object (supports both 'texture' and 'icon')
-- New format uses short icon names, old format uses full paths
-- Also handles numeric texture IDs returned by GetSpellInfo
local function getSpellTexture(spell)
    if not spell then return nil end
    local tex = spell.icon or spell.texture
    if tex == nil then return nil end
    -- If it's a number (numeric texture ID from GetSpellInfo), return it directly
    if type(tex) == "number" then
        return tex
    end
    -- Convert to string for string operations
    tex = tostring(tex)
    if tex == "" then return nil end
    -- If it's a numeric string (texture ID), return as number
    if tonumber(tex) then
        return tonumber(tex)
    end
    -- If it already has Interface/ICONS/, return as-is
    if string.find(tex, "Interface/ICONS/") or string.find(tex, "Interface\\ICONS\\") then
        return tex
    end
    -- Otherwise, prepend the path
    return "Interface/ICONS/" .. tex
end

-- Get spell rank from ability object (handles both number and string)
local function getSpellRank(spell)
    if not spell then return nil end
    return tonumber(spell.rank)
end

-- Check if spell is a talent (supports both 'talent' field and 'type == "Talent"')
local function isTalentSpell(spell)
    if not spell then return false end
    return spell.talent or (spell.type == "Talent")
end

-- Check if player knows ANY rank of a given talent (by matching name + icon).
-- This allows showing all ranks of a talent the player has invested in,
-- even when "All Talents" checkbox is unchecked.
local function isAnyTalentRankKnown(spell)
    if not spell then return false end
    if not isTalentSpell(spell) then return false end

    local targetName = spell.name and tostring(spell.name) or ""
    local targetIcon = spell.icon and tostring(spell.icon) or ""

    if targetName == "" then return false end
    local key = targetName .. "\031" .. targetIcon
    return TFG._knownTalentKeys and TFG._knownTalentKeys[key] or false
end

-- Check if spell has a specific category
local function hasSpellCategory(spell, category)
    if not spell or not category then return false end
    if spell.category then return spell.category == category end
    if spell.categories and type(spell.categories) == "table" then
        for _, cat in ipairs(spell.categories) do
            if cat == category then return true end
        end
    end
    return false
end

-- Get training cost from ability object (supports both 'cost' and 'source.cost')
local function getTrainingCost(spell)
    if not spell then return nil end
    -- Check old format first
    if spell.cost and tonumber(spell.cost) then return tonumber(spell.cost) end
    -- Check new format
    if spell.source and spell.source.cost and tonumber(spell.source.cost) then
        return tonumber(spell.source.cost)
    end
    return nil
end

-- Get product item ID from ability object (supports both 'itemId' and 'item_id')
local function getProductItemId(spell)
    if not spell or not spell.product then return nil end
    return tonumber(spell.product.item_id) or tonumber(spell.product.itemId)
end

-- Get product quantity from ability object (supports both 'quantity' and 'qty')
local function getProductQty(spell)
    if not spell or not spell.product then return 1 end
    return tonumber(spell.product.qty) or tonumber(spell.product.quantity) or 1
end

-- Get material item ID (supports both 'itemId' and 'item_id')
local function getMaterialItemId(mat)
    if not mat then return nil end
    return tonumber(mat.item_id) or tonumber(mat.itemId)
end

-- Get material quantity (supports both 'quantity' and 'qty')
local function getMaterialQty(mat)
    if not mat then return 1 end
    return tonumber(mat.qty) or tonumber(mat.quantity) or 1
end

-- Normalize one raw source object: numeric-coerce the id/cost/phase fields and
-- return a fresh table so callers can sort/annotate without mutating DB data.
local function normalizeSource(s)
    if type(s) ~= "table" then return nil end
    return {
        type = s.type,
        cost = s.cost,
        location = s.location,
        faction = s.faction,
        phase = tonumber(s.phase),
        item_id = tonumber(s.item_id),
        quest_id = tonumber(s.quest_id),
        quest_name = s.quest_name,
    }
end

-- Read an entry's `source` as an array of normalized source objects (or {} when
-- absent). Every consumer reads sources through this seam.
function TFG.GetSources(entry)
    if not entry or not entry.source then return {} end
    local out = {}
    for i = 1, #entry.source do
        out[#out + 1] = normalizeSource(entry.source[i])
    end
    return out
end

-- Primary recipe item ID = earliest-phase source's item_id (launch when untagged).
local function getRecipeSourceId(spell)
    local bestId, bestPhase
    for _, s in ipairs(TFG.GetSources(spell)) do
        if s.item_id and s.item_id > 0 then
            local p = s.phase or 1
            if not bestId or p < bestPhase then
                bestId, bestPhase = s.item_id, p
            end
        end
    end
    return bestId
end

-- Concise display label for a source type (legacy "Item" splits on cost).
local function sourceTypeLabel(s)
    local t = s.type
    if t == "Item" then
        if s.cost and tonumber(s.cost) and tonumber(s.cost) > 0 then return "Vendor" end
        return "Recipe"
    end
    return t or "Recipe"
end

local MIDDOT = "\194\183"  -- UTF-8 U+00B7, kept out of source as raw bytes

-- Build the compact one-line summary for a source, e.g. "Honor Hold (Honored) . 5g".
-- Leads with the descriptive location (which already names the vendor/drop, so the
-- faction is implied), falling back to the type word only when there is no
-- location. Segments are joined by a muted middot.
local function buildSourceLine(s)
    local primary = (s.location and tostring(s.location) ~= "")
        and tostring(s.location) or sourceTypeLabel(s)
    local segs = { primary }
    if s.cost and tonumber(s.cost) and tonumber(s.cost) > 0 then
        local costText = TFG.FormatCost(s.cost)
        if costText then segs[#segs + 1] = costText end
    end
    if s.phase and s.phase > 1 then
        segs[#segs + 1] = "|cff77bbffPhase " .. tostring(s.phase) .. "|r"
    end
    return table.concat(segs, "  |cff808080" .. MIDDOT .. "|r  ")
end

-- Resolve a human-readable quest title for a quest source, with API fallbacks
-- and a final fall-back to a name authored in the data.
local function resolveQuestTitle(s)
    local questId = s.quest_id
    if not questId or questId <= 0 then return nil end
    local title
    if C_QuestLog and C_QuestLog.GetTitleForQuestID then
        title = C_QuestLog.GetTitleForQuestID(questId)
    end
    if (not title or title == "") and QuestUtils_GetQuestName then
        title = QuestUtils_GetQuestName(questId)
    end
    if (not title or title == "") and s.quest_name and s.quest_name ~= "" then
        title = s.quest_name
    end
    if title and title ~= "" then return title end
    return nil
end


local function getMaxExplicitPhase(database)
    local maxPhase = 1
    for _, spells in pairs(database or {}) do
        if type(spells) == "table" then
            for _, spell in ipairs(spells) do
                local phase = getEffectivePhase(spell)
                if phase and phase > maxPhase then
                    maxPhase = phase
                end
            end
        end
    end
    return maxPhase
end

-- Exports
TFG.MIDDOT = MIDDOT
TFG.GetSpellId = getSpellId
TFG.GetSpellTexture = getSpellTexture
TFG.GetSpellRank = getSpellRank
TFG.IsTalentSpell = isTalentSpell
TFG.IsAnyTalentRankKnown = isAnyTalentRankKnown
TFG.HasSpellCategory = hasSpellCategory
TFG.GetTrainingCost = getTrainingCost
TFG.GetProductItemId = getProductItemId
TFG.GetProductQty = getProductQty
TFG.GetMaterialItemId = getMaterialItemId
TFG.GetMaterialQty = getMaterialQty
TFG.GetRecipeSourceId = getRecipeSourceId
TFG.SourceTypeLabel = sourceTypeLabel
TFG.BuildSourceLine = buildSourceLine
TFG.ResolveQuestTitle = resolveQuestTitle
TFG.IsEntryAvailableInPhase = isEntryAvailableInPhase
TFG.GetMaxExplicitPhase = getMaxExplicitPhase

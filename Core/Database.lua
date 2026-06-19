local _, TFG = ...

TFG.selectedExpansion = "VANILLA" -- Default player class
TFG.selectedFile = select(2, UnitClass("player")) -- Default player class
TFG.activeDatabase = {}
TFG.rows = {}
TFG.isSkill = false
TFG.viewAvailable = true
TFG.selectedPhase = nil

TFG.DISCOVERY_BUCKET = 999

-- Detect client expansion
if WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC then
    TFG.selectedExpansion = "WOTLK"
elseif WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC then
    TFG.selectedExpansion = "TBC"
else
    TFG.selectedExpansion = "VANILLA"
end

-- ========================================================================== 
-- List Database Files
-- ==========================================================================

-- Map expansions to class databases
TFG.DATABASE_FILES = {
    VANILLA = {
        name = "Vanilla",
        color = "|cFFFFE669",
        files = {
            classes = {
                druid = {
                    name = "Druid",
                    color = TFG.CLASS_COLORS["DRUID"],
                    file = TFG.DRUID_VANILLA,
                },
                hunter = {
                    name = "Hunter",
                    color = TFG.CLASS_COLORS["HUNTER"],
                    file = TFG.HUNTER_VANILLA,
                    children = {
                        {
                            key = "pet-skills",
                            name = "Pet Skills",
                            sortOrder = 1,
                            file = TFG.HUNTER_PETS_VANILLA,
                        },
                    },
                },
                mage = {
                    name = "Mage",
                    color = TFG.CLASS_COLORS["MAGE"],
                    file = TFG.MAGE_VANILLA,
                },
                paladin = {
                    name = "Paladin",
                    color = TFG.CLASS_COLORS["PALADIN"],
                    file = TFG.PALADIN_VANILLA,
                },
                priest = {
                    name = "Priest",
                    color = TFG.CLASS_COLORS["PRIEST"],
                    file = TFG.PRIEST_VANILLA,
                },
                rogue = {
                    name = "Rogue",
                    color = TFG.CLASS_COLORS["ROGUE"],
                    file = TFG.ROGUE_VANILLA,
                    children = {
                        {
                            key = "poisons",
                            name = "Poisons",
                            sortOrder = 1,
                            file = TFG.ROGUE_POISONS_VANILLA,
                        },
                    },
                },
                shaman = {
                    name = "Shaman",
                    color = TFG.CLASS_COLORS["PALADIN"],
                    file = TFG.SHAMAN_VANILLA,
                },
                warlock = {
                    name = "Warlock",
                    color = TFG.CLASS_COLORS["WARLOCK"],
                    file = TFG.WARLOCK_VANILLA,
                    children = {
                        {
                            key = "demon-spells",
                            name = "Demon Spells",
                            sortOrder = 1,
                            file = TFG.WARLOCK_PETS_VANILLA,
                        },
                    },
                },
                warrior = {
                    name = "Warrior",
                    color = TFG.CLASS_COLORS["WARRIOR"],
                    file = TFG.WARRIOR_VANILLA,
                },
            },
            skills = {
                professions = {
                    name = "Professions",
                    children = {
                        -- Primary professions (will be sorted alphabetically in the submenu)
                        {key = "alchemy", name = "Alchemy", file = TFG.ALCHEMY_VANILLA},
                        {key = "blacksmithing", name = "Blacksmithing", file = TFG.BLACKSMITHING_VANILLA},
                        {key = "enchanting", name = "Enchanting", file = TFG.ENCHANTING_VANILLA},
                        {key = "engineering", name = "Engineering", file = TFG.ENGINEERING_VANILLA},
                        {key = "leatherworking", name = "Leatherworking", file = TFG.LEATHERWORKING_VANILLA},
                        {key = "tailoring", name = "Tailoring", file = TFG.TAILORING_VANILLA},
                        {key = "mining", name = "Mining", file = TFG.MINING_VANILLA},
                        {key = "herbalism", name = "Herbalism", file = TFG.HERBALISM_VANILLA},
                        {key = "skinning", name = "Skinning", file = TFG.SKINNING_VANILLA},
                        -- Divider: secondary professions follow
                        {name = "SecondaryProfessionsDivider", isHeader = true},
                        -- Secondary professions (will be sorted alphabetically in the submenu)
                        {key = "cooking", name = "Cooking", file = TFG.COOKING_VANILLA},
                        {key = "first-aid", name = "First Aid", file = TFG.FIRST_AID_VANILLA},
                        {key = "fishing", name = "Fishing", file = TFG.FISHING_VANILLA},
                    },
                },
                skills = {
                    name = "Skills",
                    children = {
                        -- {name = "Riding", file = TFG.RIDING_VANILLA},
                        {key = "weapon-skills", name = "Weapon Skills", file = TFG.WEAPON_SKILLS_VANILLA},
                        -- additional non-profession skills can be added here
                    },
                },
            },
        }
    },
    TBC = {
        name = "TBC",
        color = "|cFFCBD96B",
        currentPhase = 2,
        files = {
            classes = {
                druid = {
                    name = "Druid",
                    color = TFG.CLASS_COLORS["DRUID"],
                    file = TFG.DRUID_TBC,
                },
                hunter = {
                    name = "Hunter",
                    color = TFG.CLASS_COLORS["HUNTER"],
                    file = TFG.HUNTER_TBC,
                    children = {
                        {
                            key = "pet-skills",
                            name = "Pet Skills",
                            sortOrder = 1,
                            file = TFG.HUNTER_PETS_TBC,
                        },
                    },
                },
                mage = {
                    name = "Mage",
                    color = TFG.CLASS_COLORS["MAGE"],
                    file = TFG.MAGE_TBC,
                },
                paladin = {
                    name = "Paladin",
                    color = TFG.CLASS_COLORS["PALADIN"],
                    file = TFG.PALADIN_TBC,
                },
                priest = {
                    name = "Priest",
                    color = TFG.CLASS_COLORS["PRIEST"],
                    file = TFG.PRIEST_TBC,
                },
                rogue = {
                    name = "Rogue",
                    color = TFG.CLASS_COLORS["ROGUE"],
                    file = TFG.ROGUE_TBC,
                    children = {
                        {
                            key = "poisons",
                            name = "Poisons",
                            sortOrder = 1,
                            file = TFG.ROGUE_POISONS_TBC,
                        },
                    },
                },
                shaman = {
                    name = "Shaman",
                    color = TFG.CLASS_COLORS["SHAMAN"],
                    file = TFG.SHAMAN_TBC,
                },
                warlock = {
                    name = "Warlock",
                    color = TFG.CLASS_COLORS["WARLOCK"],
                    file = TFG.WARLOCK_TBC,
                    children = {
                        {
                            key = "demon-spells",
                            name = "Demon Spells",
                            sortOrder = 1,
                            file = TFG.WARLOCK_PETS_TBC,
                        },
                    },
                },
                warrior = {
                    name = "Warrior",
                    color = TFG.CLASS_COLORS["WARRIOR"],
                    file = TFG.WARRIOR_TBC,
                },
            },
            skills = {
                professions = {
                    name = "Professions",
                    children = {
                        -- Primary professions (will be sorted alphabetically in the submenu)
                        {key = "alchemy", name = "Alchemy", file = TFG.ALCHEMY_TBC},
                        {key = "blacksmithing", name = "Blacksmithing", file = TFG.BLACKSMITHING_TBC},
                        {key = "enchanting", name = "Enchanting", file = TFG.ENCHANTING_TBC},
                        {key = "engineering", name = "Engineering", file = TFG.ENGINEERING_TBC},
                        {key = "jewelcrafting", name = "Jewelcrafting", file = TFG.JEWELCRAFTING_TBC},
                        {key = "leatherworking", name = "Leatherworking", file = TFG.LEATHERWORKING_TBC},
                        {key = "tailoring", name = "Tailoring", file = TFG.TAILORING_TBC},
                        {key = "mining", name = "Mining", file = TFG.MINING_TBC},
                        {key = "herbalism", name = "Herbalism", file = TFG.HERBALISM_TBC},
                        {key = "skinning", name = "Skinning", file = TFG.SKINNING_TBC},
                        -- Divider: secondary professions follow
                        {name = "SecondaryProfessionsDivider", isHeader = true},
                        -- Secondary professions (will be sorted alphabetically in the submenu)
                        {key = "cooking", name = "Cooking", file = TFG.COOKING_TBC},
                        {key = "first-aid", name = "First Aid", file = TFG.FIRST_AID_TBC},
                        {key = "fishing", name = "Fishing", file = TFG.FISHING_TBC},
                    },
                },
                skills = {
                    name = "Skills",
                    children = {
                        {key = "riding", name = "Riding", file = TFG.RIDING_TBC},
                        {key = "weapon-skills", name = "Weapon Skills", file = TFG.WEAPON_SKILLS_TBC},
                        -- additional non-profession skills can be added here
                    },
                },
            },
        }
    },
    WOTLK = {
        name = "WotLK",
        color = "|cFF9EC6E6",
        files = {
            classes = {},
            skills = {},
        },
    },
}

local function enrichDatabaseBySpellId(targetDatabase, detailsDatabase)
    if type(targetDatabase) ~= "table" or type(detailsDatabase) ~= "table" then return end

    local detailsBySpellId = {}
    for _, spells in pairs(detailsDatabase) do
        if type(spells) == "table" then
            for _, detail in ipairs(spells) do
                local spellId = detail and tonumber(detail.spell_id or detail.id)
                if spellId and not detailsBySpellId[spellId] then
                    detailsBySpellId[spellId] = detail
                end
            end
        end
    end

    for _, spells in pairs(targetDatabase) do
        if type(spells) == "table" then
            for _, spell in ipairs(spells) do
                local spellId = spell and tonumber(spell.spell_id or spell.id)
                local detail = spellId and detailsBySpellId[spellId]
                if detail then
                    spell.product = spell.product or detail.product
                    spell.materials = spell.materials or detail.materials
                    spell.levels = spell.levels or detail.levels
                    spell.phase = spell.phase or detail.phase

                    if detail.source then
                        spell.source = spell.source or {}
                        for key, value in pairs(detail.source) do
                            if spell.source[key] == nil then
                                spell.source[key] = value
                            end
                        end
                    end
                end
            end
        end
    end
end

enrichDatabaseBySpellId(TFG.ROGUE_POISONS_TBC, TFG.ROGUE_POISONS_DETAILS_TBC)

local function normalizeChildKey(name)
    return tostring(name or ""):lower():gsub("[^%w]+", "-"):gsub("^%-+", ""):gsub("%-+$", "")
end

function TFG.MakeChildSelection(parentKey, child, childIndex)
    if not parentKey or not child then return nil end
    return tostring(parentKey):lower() .. "::" .. tostring(child.key or normalizeChildKey(child.name) or childIndex)
end

function TFG.GetSelectionInfo(expansion, selection)
    local expansionObject = type(expansion) == "table"
        and expansion
        or TFG.DATABASE_FILES[tostring(expansion or TFG.selectedExpansion):upper()]
    if not expansionObject or not expansionObject.files then return nil end

    local selected = tostring(selection or TFG.selectedFile or ""):lower()
    local parentKey, childToken = selected:match("^([^:]+)::(.+)$")
    if not parentKey or not childToken then return nil end

    local classes = expansionObject.files.classes or {}
    local skills = expansionObject.files.skills or {}
    local parent = classes[parentKey] or skills[parentKey]
    if not parent or not parent.children then return nil end

    local childIndex = tonumber(childToken)
    local child = childIndex and parent.children[childIndex] or nil
    if not child then
        for index, candidate in ipairs(parent.children) do
            local candidateKey = tostring(candidate.key or normalizeChildKey(candidate.name)):lower()
            if candidateKey == childToken then
                child = candidate
                childIndex = index
                break
            end
        end
    end

    return {
        expansion = expansionObject,
        parentKey = parentKey,
        parent = parent,
        parentType = classes[parentKey] and "classes" or "skills",
        child = child,
        childIndex = childIndex,
        childKey = child and tostring(child.key or normalizeChildKey(child.name)):lower() or childToken,
    }
end

-- Generate rows from a given database
function TFG.GenerateRows(database)
    local rows = {}

    for level, spells in pairs(database or {}) do
        -- Only include numeric buckets; ignore metadata keys like __CONFIG.
        local n = tonumber(tostring(level))
        if n and n > 0 then
            rows[#rows + 1] = {
                label = "Level " .. tostring(n),
                level = n,
                isDiscovery = n == TFG.DISCOVERY_BUCKET,
                spells = spells,
            }
        end
    end

    table.sort(rows, function(a, b)
        local function keyVal(r)
            if not r or not r.label then return 0 end
            if r.isDiscovery then return TFG.DISCOVERY_BUCKET end
            local m = tostring(r.label):match("%d+")
            return tonumber(m) or 0
        end
        return keyVal(a) < keyVal(b)
    end)

    return rows
end

-- Load database dynamically based on selected class and expansion
function TFG.LoadDatabase(fileName, expansion)
    -- (debug prints removed)
    TFG.selectedFile = fileName or TFG.selectedFile
    TFG.selectedExpansion = expansion or TFG.selectedExpansion

    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion:upper()]
    if expansionObject then
        local selectedKey = TFG.selectedFile:lower()
        local parent, parentType
        TFG.viewAvailable = false

        if expansionObject["files"]["classes"][selectedKey] then
            parent = expansionObject["files"]["classes"][selectedKey]
            parentType = "classes"
        elseif expansionObject["files"]["skills"][selectedKey] then
            parent = expansionObject["files"]["skills"][selectedKey]
            parentType = "skills"
        end

        -- Submenu selections use stable "parentKey::childKey" tokens. The
        -- resolver also accepts legacy numeric child indexes for compatibility.
        local selectionInfo = TFG.GetSelectionInfo(expansionObject, selectedKey)
        if selectionInfo then
            local child = selectionInfo.child
            if child and type(child.file) == "table" then
                TFG.selectedFile = TFG.MakeChildSelection(selectionInfo.parentKey, child, selectionInfo.childIndex)
                TFG.activeDatabase = child.file
                TFG.viewAvailable = true
                -- (debug prints removed)
                -- Treat child items as the same type as the parent for filtering rules.
                parentType = selectionInfo.parentType
            else
                TFG.activeDatabase = {}
            end
        elseif parent then
            if type(parent.file) == "table" then
                TFG.activeDatabase = parent.file
                TFG.viewAvailable = true
            else
                TFG.activeDatabase = {}
            end
        else
            TFG.activeDatabase = {}
        end

        --[[
        local count = 0
        for _ in pairs(TFG.activeDatabase) do count = count + 1 end
        if count == 0 then
            print("Couldn't load database '" .. fileName .. "' from expansion: " .. expansion)
        end
        --]]

        -- If this file is a skill, then we need to treat it differently
        if (parentType == "skills") then
            TFG.isSkill = true
        else
            TFG.isSkill = false
        end
    else
        --print("Couldn't load expansion database: " .. expansion)
        TFG.activeDatabase = {}
        TFG.viewAvailable = false
    end

    TFG.rows = TFG.GenerateRows(TFG.activeDatabase)

    -- Update window background based on selected class when possible.
    do
        local bgClass = "warrior"
        local sel = (TFG.selectedFile or ""):lower()
        local selectionInfo = TFG.GetSelectionInfo(expansionObject, sel)
        if selectionInfo then
            -- If the parent is a class, use it; otherwise leave default.
            if selectionInfo.parentType == "classes" then
                bgClass = selectionInfo.parentKey
            end
        else
            if expansionObject and expansionObject.files and expansionObject.files.classes and expansionObject.files.classes[sel] then
                bgClass = sel
            end
        end
        pcall(function() TFG.SetBackground(bgClass) end)
    end

    if TFG.frame then
        TFG.frame:Relayout()
    end
end

-- Initial load
TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)

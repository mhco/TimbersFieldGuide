local _, TFG = ...

TFG.selectedExpansion = "VANILLA" -- Default player class
TFG.selectedFile = select(2, UnitClass("player")) -- Default player class
TFG.activeDatabase = {}
TFG.rows = {}
TFG.isSkill = false

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
                --[[
                professions = {
                    name = "Professions",
                    children = {
                        -- Primary professions (will be sorted alphabetically in the submenu)
                        {name = "Alchemy", file = TFG.ALCHEMY_VANILLA},
                        {name = "Blacksmithing", file = TFG.BLACKSMITHING_VANILLA},
                        {name = "Enchanting", file = TFG.ENCHANTING_VANILLA},
                        {name = "Engineering", file = TFG.ENGINEERING_VANILLA},
                        {name = "Jewelcrafting", file = TFG.JEWELCRAFTING_VANILLA},
                        {name = "Leatherworking", file = TFG.LEATHERWORKING_VANILLA},
                        {name = "Tailoring", file = TFG.TAILORING_VANILLA},
                        {name = "Mining", file = TFG.MINING_VANILLA},
                        {name = "Herbalism", file = TFG.HERBALISM_VANILLA},
                        {name = "Skinning", file = TFG.SKINNING_VANILLA},
                        -- Divider: secondary professions follow
                        {name = "SecondaryProfessionsDivider", isHeader = true},
                        -- Secondary professions (will be sorted alphabetically in the submenu)
                        {name = "Cooking", file = TFG.COOKING_VANILLA},
                        {name = "First Aid", file = TFG.FIRST_AID_VANILLA},
                        {name = "Fishing", file = TFG.FISHING_VANILLA},
                    },
                },
                --]]
                skills = {
                    name = "Skills",
                    children = {
                        -- {name = "Riding", file = TFG.RIDING_VANILLA},
                        {name = "Weapon Skills", file = TFG.WEAPON_SKILLS_VANILLA},
                        -- additional non-profession skills can be added here
                    },
                },
            },
        }
    },
    TBC = {
        name = "TBC",
        color = "|cFFCBD96B",
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
                        {name = "Alchemy", file = TFG.ALCHEMY_TBC},
                        {name = "Blacksmithing", file = TFG.BLACKSMITHING_TBC},
                        {name = "Enchanting", file = TFG.ENCHANTING_TBC},
                        {name = "Engineering", file = TFG.ENGINEERING_TBC},
                        {name = "Jewelcrafting", file = TFG.JEWELCRAFTING_TBC},
                        {name = "Leatherworking", file = TFG.LEATHERWORKING_TBC},
                        {name = "Tailoring", file = TFG.TAILORING_TBC},
                        {name = "Mining", file = TFG.MINING_TBC},
                        {name = "Herbalism", file = TFG.HERBALISM_TBC},
                        {name = "Skinning", file = TFG.SKINNING_TBC},
                        -- Divider: secondary professions follow
                        {name = "SecondaryProfessionsDivider", isHeader = true},
                        -- Secondary professions (will be sorted alphabetically in the submenu)
                        {name = "Cooking", file = TFG.COOKING_TBC},
                        {name = "First Aid", file = TFG.FIRST_AID_TBC},
                        {name = "Fishing", file = TFG.FISHING_TBC},
                    },
                },
                skills = {
                    name = "Skills",
                    children = {
                        {name = "Riding", file = TFG.RIDING_TBC},
                        {name = "Weapon Skills", file = TFG.WEAPON_SKILLS_TBC},
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

-- Generate rows from a given database
function TFG.GenerateRows(database)
    local rows = {}

    for level, spells in pairs(database or {}) do
        -- Only include numeric buckets; ignore metadata keys like __CONFIG.
        local n = tonumber(tostring(level))
        if n and n > 0 then
            rows[#rows + 1] = { label = "Level " .. tostring(n), spells = spells }
        elseif tostring(level) == "999" or tonumber(tostring(level)) == 999 then
            -- Special Discoveries bucket
            rows[#rows + 1] = { label = "Discoveries", spells = spells }
        end
    end

    table.sort(rows, function(a, b)
        local function keyVal(r)
            if not r or not r.label then return 0 end
            if r.label == "Discoveries" then return 999 end
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

        if expansionObject["files"]["classes"][selectedKey] then
            parent = expansionObject["files"]["classes"][selectedKey]
            parentType = "classes"
        elseif expansionObject["files"]["skills"][selectedKey] then
            parent = expansionObject["files"]["skills"][selectedKey]
            parentType = "skills"
        end

        -- If a submenu item is selected, its value is encoded as:
        --   "parentKey::childIndex" (1-based index into parent.children)
        local parentKey, childIndex = string.match(selectedKey, "^(.+)::(%d+)$")
        if parentKey and childIndex then
            local p = (expansionObject["files"]["classes"][parentKey] or expansionObject["files"]["skills"][parentKey])
            local i = tonumber(childIndex)
            if p and p.children and p.children[i] and p.children[i].file then
                TFG.activeDatabase = p.children[i].file
                -- (debug prints removed)
                -- Treat child items as the same type as the parent for filtering rules.
                parentType = (expansionObject["files"]["classes"][parentKey] and "classes") or "skills"
            else
                TFG.activeDatabase = {}
            end
        elseif parent then
            TFG.activeDatabase = parent["file"] or {}
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
    end

    TFG.rows = TFG.GenerateRows(TFG.activeDatabase)

    -- Update window background based on selected class when possible.
    do
        local bgClass = "warrior"
        local sel = (TFG.selectedFile or ""):lower()
        local parentKey, childIndex = string.match(sel, "^(.+)::(%d+)$")
        if parentKey then
            -- If the parent is a class, use it; otherwise leave default.
            if expansionObject and expansionObject.files and expansionObject.files.classes and expansionObject.files.classes[parentKey] then
                bgClass = parentKey
            end
        else
            if expansionObject and expansionObject.files and expansionObject.files.classes and expansionObject.files.classes[sel] then
                bgClass = sel
            end
        end
        -- Call global helper (defined in Core/Util.lua) to set background; it is safe if frame is nil.
        pcall(function() setBackground(bgClass) end)
    end

    if TFG.frame then
        TFG.frame:Relayout()
    end
end

-- Initial load
TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)

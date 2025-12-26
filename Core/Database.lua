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
                professions = {
                    name = "Professions",
                    children = {
                        {name = "Alchemy", file = {}},
                        {name = "Blacksmithing", file = {}},
                        {name = "Cooking", file = {}},
                        {name = "Enchanting", file = {}},
                        {name = "Engineering", file = {}},
                        {name = "First Aid", file = {}},
                        {name = "Fishing", file = {}},
                        {name = "Herbalism", file = {}},
                        {name = "Leatherworking", file = {}},
                        {name = "Mining", file = {}},
                        {name = "Skinning", file = {}},
                        {name = "Tailoring", file = {}},
                    },
                },
            }
        },
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
                        {name = "Alchemy", file = TFG.ALCHEMY_TBC},
                        {name = "Blacksmithing", file = TFG.BLACKSMITHING_TBC},
                        {name = "Cooking", file = TFG.COOKING_TBC},
                        {name = "Enchanting", file = TFG.ENCHANTING_TBC},
                        {name = "Engineering", file = TFG.ENGINEERING_TBC},
                        {name = "First Aid", file = TFG.FIRST_AID_TBC},
                        {name = "Fishing", file = TFG.FISHING_TBC},
                        {name = "Herbalism", file = TFG.HERBALISM_TBC},
                        {name = "Jewelcrafting", file = TFG.JEWELCRAFTING_TBC},
                        {name = "Leatherworking", file = TFG.LEATHERWORKING_TBC},
                        {name = "Mining", file = TFG.MINING_TBC},
                        {name = "Skinning", file = TFG.SKINNING_TBC},
                        {name = "Tailoring", file = TFG.TAILORING_TBC},
                    },
                },
                riding = {
                    name = "Riding",
                    file = TFG.RIDING_TBC,
                },
            }
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
        rows[#rows + 1] = {
            label  = "Level " .. level,
            spells = spells,
        }
    end

    table.sort(rows, function(a, b)
        return tonumber(a.label:match("%d+")) < tonumber(b.label:match("%d+"))
    end)

    return rows
end

-- Load database dynamically based on selected class and expansion
function TFG.LoadDatabase(fileName, expansion)
    TFG.selectedFile = fileName or TFG.selectedFile
    TFG.selectedExpansion = expansion or TFG.selectedExpansion

    local expansionObject = TFG.DATABASE_FILES[TFG.selectedExpansion:upper()]
    if expansionObject then
        if expansionObject["files"]["classes"][TFG.selectedFile:lower()] then
            TFG.activeDatabase = expansionObject["files"]["classes"][TFG.selectedFile:lower()]["file"]
        elseif expansionObject["files"]["skills"][TFG.selectedFile:lower()] then
            TFG.activeDatabase = expansionObject["files"]["skills"][TFG.selectedFile:lower()]["file"]
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
        if (TFG.DATABASE_FILES[TFG.selectedExpansion:upper()]["files"]["skills"][TFG.selectedFile:lower()]) then
            TFG.isSkill = true
        else
            TFG.isSkill = false
        end
    else
        --print("Couldn't load expansion database: " .. expansion)
        TFG.activeDatabase = {}
    end

    TFG.rows = TFG.GenerateRows(TFG.activeDatabase)

    if TFG.frame then
        TFG.frame:Relayout()
    end
end

-- Initial load
TFG.LoadDatabase(TFG.selectedFile, TFG.selectedExpansion)

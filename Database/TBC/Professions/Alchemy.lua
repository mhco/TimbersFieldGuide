local _, TFG = ...

-- ==========================================================================
-- SKILL TEMPLATE
-- ==========================================================================
--[[
{
    ["id"] = 42736,
    ["name"] = "Flask of Chromatic Wonder",
    ["category"] = "Flasks",
    ["texture"] = "Interface/ICONS/inv_potion_48",
    ["source"] = {
        ["type"] = "Item", -- Trainer, Item, or Discovery
        ["itemId"] = 33209, -- Only needed for items that teach the recipe
        ["cost"] = 10, -- Only needed for recipes from trainers or items
        ["location"] = "The Violet Eye - Honored", -- Optional
    },
    ["product"] = { ["itemId"] = 2454, ["quantity"] = 5 },
    ["materials"] = {
        { ["name"] = "Dreaming Glory", ["itemId"] = 22786, ["quantity"] = 7 },
        { ["name"] = "Netherbloom", ["itemId"] = 22791, ["quantity"] = 3 },
        { ["name"] = "Fel Lotus", ["itemId"] = 22794, ["quantity"] = 1 },
        { ["name"] = "Imbued Vial", ["itemId"] = 18256, ["quantity"] = 1 },
    },
    ["levels"] = { 360, 360, 370, 380 },
},
--]]

-- ==========================================================================
-- SKILLS
-- ==========================================================================
TFG.ALCHEMY_TBC = {
    [1] = {
        {
            ["id"] = 2259,
            ["name"] = "Alchemy", -- Apprentice
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_alchemy",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10,
            },
        },
        {
            ["id"] = 2329,
            ["name"] = "Elixir of Lion's Strength",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_56",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10,
            },
            ["product"] = { ["itemId"] = 2454 },
            ["materials"] = {
                { ["name"] = "Earthroot", ["itemId"] = 2449 },
                { ["name"] = "Silverleaf", ["itemId"] = 765 },
                { ["name"] = "Empty Vial", ["itemId"] = 3371 },
            },
            ["levels"] = { 1, 55, 75, 95 },
        },
        {
            ["id"] = 2330,
            ["name"] = "Minor Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_49",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10,
            },
            ["product"] = { ["itemId"] = 118 },
            ["materials"] = {
                { ["name"] = "Peacebloom", ["itemId"] = 2447 },
                { ["name"] = "Silverleaf", ["itemId"] = 765 },
                { ["name"] = "Empty Vial", ["itemId"] = 3371 },
            },
            ["levels"] = { 1, 55, 75, 95 },
        },
        {
            ["id"] = 7183,
            ["name"] = "Elixir of Minor Defense",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_63",
        },
    },
    [15] = {
        {
            ["id"] = 3170,
            ["name"] = "Weak Troll's Blood Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_77",
        },
    },
    [25] = {
        {
            ["id"] = 2331,
            ["name"] = "Minor Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_70",
        },
    },
    [40] = {
        {
            ["id"] = 2332,
            ["name"] = "Minor Rejuvenation Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_02",
        },
    },
    [50] = {
        {
            ["id"] = 3101,
            ["name"] = "Alchemy", -- Journeyman
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_alchemy",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
        },
        {
            ["id"] = 2334,
            ["name"] = "Elixir of Minor Fortitude",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_42",
        },
        {
            ["id"] = 3230,
            ["name"] = "Elixir of Minor Agility",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_91",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 2553,
                ["location"] = "Drop",
            },
            ["product"] = { ["itemId"] = 2457 },
            ["materials"] = {
                { ["name"] = "Swiftthistle", ["itemId"] = 2452 },
                { ["name"] = "Silverleaf", ["itemId"] = 765 },
                { ["name"] = "Empty Vial", ["itemId"] = 3371 },
            },
            ["levels"] = { 360, 360, 370, 380 },
        },
        {
            ["id"] = 4508,
            ["name"] = "Discolored Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_35",
        },
    },
    [55] = {
        {
            ["id"] = 2337,
            ["name"] = "Lesser Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_50",
        },
    },
    [60] = {
        {
            ["id"] = 2335,
            ["name"] = "Swiftness Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_95",
        },
        {
            ["id"] = 6617,
            ["name"] = "Rage Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_24",
        },
    },
    [80] = {
        {
            ["id"] = 7836,
            ["name"] = "Blackmouth Oil",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_drink_12",
        },
    },
    [90] = {
        {
            ["id"] = 3171,
            ["name"] = "Elixir of Wisdom",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_06",
        },
        {
            ["id"] = 7179,
            ["name"] = "Elixir of Water Breathing",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_17",
        },
        {
            ["id"] = 8240,
            ["name"] = "Elixir of Giant Growth",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_10",
        },
    },
    [100] = {
        {
            ["id"] = 7255,
            ["name"] = "Holy Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_09",
        },
        {
            ["id"] = 7841,
            ["name"] = "Swim Speed Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_13",
        },
    },
    [110] = {
        {
            ["id"] = 3172,
            ["name"] = "Minor Magic Resistance Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_08",
        },
        {
            ["id"] = 3447,
            ["name"] = "Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_51",
        },
    },
    [120] = {
        {
            ["id"] = 3173,
            ["name"] = "Lesser Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_71",
        },
        {
            ["id"] = 3174,
            ["name"] = "Potion of Curing",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_12",
        },
    },
    [125] = {
        {
            ["id"] = 3464,
            ["name"] = "Alchemy", -- Expert
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_alchemy",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
        },
        {
            ["id"] = 3176,
            ["name"] = "Strong Troll's Blood Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_78",
        },
    },
    [130] = {
        {
            ["id"] = 3177,
            ["name"] = "Elixir of Defense",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_64",
        },
        {
            ["id"] = 7837,
            ["name"] = "Fire Oil",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_potion_38",
        },
    },
    [135] = {
        {
            ["id"] = 7256,
            ["name"] = "Shadow Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_44",
        },
    },
    [140] = {
        {
            ["id"] = 2333,
            ["name"] = "Elixir of Lesser Agility",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_92",
        },
        {
            ["id"] = 7845,
            ["name"] = "Elixir of Firepower",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_33",
        },
    },
    [150] = {
        {
            ["id"] = 3188,
            ["name"] = "Elixir of Ogre's Strength",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_57",
        },
        {
            ["id"] = 6624,
            ["name"] = "Free Action Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_04",
        },
    },
    [155] = {
        {
            ["id"] = 7181,
            ["name"] = "Greater Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_52",
        },
    },
    [160] = {
        {
            ["id"] = 3452,
            ["name"] = "Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_72",
        },
    },
    [165] = {
        {
            ["id"] = 7257,
            ["name"] = "Fire Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_16",
        },
        {
            ["id"] = 3449,
            ["name"] = "Shadow Oil",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_potion_23",
        },
        {
            ["id"] = 3448,
            ["name"] = "Lesser Invisibility Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_18",
        },
    },
    [175] = {
        {
            ["id"] = 3450,
            ["name"] = "Elixir of Fortitude",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_43",
        },
        {
            ["id"] = 6618,
            ["name"] = "Great Rage Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_21",
        },
    },
    [180] = {
        {
            ["id"] = 3451,
            ["name"] = "Mighty Troll's Blood Potion",   
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_79",
        },
    },
    [185] = {
        {
            ["id"] = 11449,
            ["name"] = "Elixir of Agility",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_93",
        },
    },
    [190] = {
        {
            ["id"] = 7259,
            ["name"] = "Nature Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_06",
        },
        {
            ["id"] = 21923,
            ["name"] = "Elixir of Frost Power",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_03",
        },
        {
            ["id"] = 7258,
            ["name"] = "Frost Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_13",
        },
    },
    [195] = {
        {
            ["id"] = 3453,
            ["name"] = "Elixir of Detect Lesser Invisibility",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_01",
        },
        {
            ["id"] = 11450,
            ["name"] = "Elixir of Greater Defense",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_65",
        },
    },
    [200] = {
        {
            ["id"] = 11611,
            ["name"] = "Alchemy", -- Artisan
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_alchemy",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50000,
            },
        },
        {
            ["id"] = 3454,
            ["name"] = "Frost Oil",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_potion_20",
        },
        {
            ["id"] = 12609,
            ["name"] = "Catseye Elixir",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_36",
        },
    },
    [205] = {
        {
            ["id"] = 11448,
            ["name"] = "Greater Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_73",
        },
        {
            ["id"] = 11451,
            ["name"] = "Oil of Immolation",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_potion_11",
        },
    },
    [210] = {
        {
            ["id"] = 11453,
            ["name"] = "Magic Resistance Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_16",
        },
        {
            ["id"] = 11456,
            ["name"] = "Goblin Rocket Fuel",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_cask_02",
        },
    },
    [215] = {
        {
            ["id"] = 4942,
            ["name"] = "Lesser Stoneshield Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_67",
        },
        {
            ["id"] = 11457,
            ["name"] = "Superior Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_53",
        },
        {
            ["id"] = 22808,
            ["name"] = "Elixir of Greater Water Breathing",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_05",
        },
        {
            ["id"] = 11452,
            ["name"] = "Restorative Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_01",
        },
    },
    [225] = {
        {
            ["id"] = 11458,
            ["name"] = "Wildvine Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_34",
        },
        {
            ["id"] = 11459,
            ["name"] = "Philosopher's Stone",
            ["category"] = "Stones",
            ["texture"] = "Interface/ICONS/inv_misc_orb_01",
        },
        {
            ["id"] = 11479,
            ["name"] = "Transmute: Iron to Gold",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/inv_ingot_03",
        },
        {
            ["id"] = 11480,
            ["name"] = "Transmute: Mithril to Truesilver",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/inv_ingot_08",
        },
    },
    [230] = {
        {
            ["id"] = 11460,
            ["name"] = "Elixir of Detect Undead",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_53",
        },
        {
            ["id"] = 15833,
            ["name"] = "Dreamless Sleep Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_83",
        },
    },
    [235] = {
        {
            ["id"] = 11461,
            ["name"] = "Arcane Elixir",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_30",
        },
        {
            ["id"] = 11464,
            ["name"] = "Invisibility Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_25",
        },
        {
            ["id"] = 11465,
            ["name"] = "Elixir of Greater Intellect",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_10",
        },
    },
    [240] = {
        {
            ["id"] = 11466,
            ["name"] = "Gift of Arthas",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_28",
        },
        {
            ["id"] = 11467,
            ["name"] = "Elixir of Greater Agility",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_94",
        },
        {
            ["id"] = 11468,
            ["name"] = "Elixir of Dream Vision",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_14",
        },
    },
    [245] = {
        {
            ["id"] = 11472,
            ["name"] = "Elixir of Giants",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_61",
        },
        {
            ["id"] = 11473,
            ["name"] = "Ghost Dye",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_poison_mindnumbing",
        },
    },
    [250] = {
        {
            ["id"] = 3175,
            ["name"] = "Limited Invulnerability Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_62",
        },
        {
            ["id"] = 11476,
            ["name"] = "Elixir of Shadow Power",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_46",
        },
        {
            ["id"] = 11477,
            ["name"] = "Elixir of Demonslaying",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_27",
        },
        {
            ["id"] = 11478,
            ["name"] = "Elixir of Detect Demon",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_53",
        },
        {
            ["id"] = 26277,
            ["name"] = "Elixir of Greater Firepower",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_60",
        },
        {
            ["id"] = 17551,
            ["name"] = "Stonescale Oil",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_potion_68",
        },
    },
    [255] = {
        {
            ["id"] = 17552,
            ["name"] = "Mighty Rage Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_41",
        },
    },
    [260] = {
        {
            ["id"] = 17553,
            ["name"] = "Superior Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_74",
        },
    },
    [265] = {
        {
            ["id"] = 17554,
            ["name"] = "Elixir of Superior Defense",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_66",
        },
    },
    [270] = {
        {
            ["id"] = 17555,
            ["name"] = "Elixir of the Sages",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_29",
        },
    },
    [275] = {
        {
            ["id"] = 28596,
            ["name"] = "Alchemy", -- Master
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_alchemy",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100000,
            },
        },
        {
            ["id"] = 17556,
            ["name"] = "Major Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_54",
        },
        {
            ["id"] = 17557,
            ["name"] = "Elixir of Brute Force",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_59",
        },
        {
            ["id"] = 24365,
            ["name"] = "Mageblood Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_45",
        },
        {
            ["id"] = 24366,
            ["name"] = "Greater Dreamless Sleep Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_83",
        },
        {
            ["id"] = 17187,
            ["name"] = "Transmute: Arcanite",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/inv_misc_stonetablet_05",
        },
        {
            ["id"] = 17559,
            ["name"] = "Transmute: Air to Fire",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_fire_volcano",
        },
        {
            ["id"] = 17560,
            ["name"] = "Transmute: Fire to Earth",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_nature_strengthofearthtotem02",
        },
        {
            ["id"] = 17561,
            ["name"] = "Transmute: Earth to Water",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_nature_acid_01",
        },
        {
            ["id"] = 17562,
            ["name"] = "Transmute: Water to Air",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_nature_earthbind",
        },
        {
            ["id"] = 17563,
            ["name"] = "Transmute: Undeath to Water",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_nature_acid_01",
        },
        {
            ["id"] = 17564,
            ["name"] = "Transmute: Water to Undeath",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_shadow_shadetruesight",
        },
        {
            ["id"] = 17565,
            ["name"] = "Transmute: Life to Earth",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_nature_strengthofearthtotem02",
        },
        {
            ["id"] = 17566,
            ["name"] = "Transmute: Earth to Life",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_nature_abolishmagic",
        },
    },
    [280] = {
        {
            ["id"] = 17570,
            ["name"] = "Greater Stoneshield Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_69",
        },
        {
            ["id"] = 17571,
            ["name"] = "Elixir of the Mongoose",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_32",
        },
    },
    [285] = {
        {
            ["id"] = 17572,
            ["name"] = "Purification Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_31",
        },
        {
            ["id"] = 17573,
            ["name"] = "Greater Arcane Elixir",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_25",
        },
        {
            ["id"] = 24367,
            ["name"] = "Living Action Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_07",
        },
    },
    [290] = {
        {
            ["id"] = 17574,
            ["name"] = "Greater Fire Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_24",
        },
        {
            ["id"] = 17575,
            ["name"] = "Greater Frost Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_20",
        },
        {
            ["id"] = 17576,
            ["name"] = "Greater Nature Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_22",
        },
        {
            ["id"] = 17577,
            ["name"] = "Greater Arcane Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_83",
        },
        {
            ["id"] = 17578,
            ["name"] = "Greater Shadow Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_23",
        },
        {
            ["id"] = 24368,
            ["name"] = "Major Troll's Blood Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_80",
        },
    },
    [295] = {
        {
            ["id"] = 17580,
            ["name"] = "Major Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_76",
        },
    },
    [300] = {
        {
            ["id"] = 17632,
            ["name"] = "Alchemist's Stone",
            ["category"] = "Stones",
            ["texture"] = "Interface/ICONS/spell_holy_pureofheart",
        },
        {
            ["id"] = 17634,
            ["name"] = "Flask of Petrification",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_26",
        },
        {
            ["id"] = 17635,
            ["name"] = "Flask of the Titans",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_62",
        },
        {
            ["id"] = 17636,
            ["name"] = "Flask of Distilled Wisdom",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_97",
        },
        {
            ["id"] = 17637,
            ["name"] = "Flask of Supreme Power",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_41",
        },
        {
            ["id"] = 17638,
            ["name"] = "Flask of Chromatic Resistance",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_48",
        },
        {
            ["id"] = 33732,
            ["name"] = "Volatile Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_40",
        },
        {
            ["id"] = 33738,
            ["name"] = "Onslaught Elixir",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_58",
        },
        {
            ["id"] = 33740,
            ["name"] = "Adept's Elixir",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_96",
        },
        {
            ["id"] = 22732,
            ["name"] = "Major Rejuvenation Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_47",
        },
        {
            ["id"] = 25146,
            ["name"] = "Transmute: Elemental Fire",
            ["category"] = "Transmutations",
            ["texture"] = "Interface/ICONS/spell_fire_fire",
        },
    },
    [305] = {
        {
            ["id"] = 28543,
            ["name"] = "Elixir of Camouflage",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_150",
        },
        {
            ["id"] = 28544,
            ["name"] = "Elixir of Major Strength",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_147",
        },
    },
    [310] = {
        {
            ["id"] = 28545,
            ["name"] = "Elixir of Healing Power",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_142",
        },
        {
            ["id"] = 33733,
            ["name"] = "Unstable Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_75",
        },
        {
            ["id"] = 39636,
            ["name"] = "Elixir of Major Fortitude",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_158",
        },
    },
    [315] = {
        {
            ["id"] = 28546,
            ["name"] = "Sneaking Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_110",
        },
        {
            ["id"] = 33741,
            ["name"] = "Elixir of Mastery",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_111",
        },
        {
            ["id"] = 24266,
            ["name"] = "Gurubashi Mojo Madness",
            ["category"] = "Miscellaneous",
            ["texture"] = "Interface/ICONS/inv_poison_mindnumbing",
        },
    },
    [320] = {
        {
            ["id"] = 28549,
            ["name"] = "Elixir of Major Frost Power",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_148",
        },
        {
            ["id"] = 28550,
            ["name"] = "Insane Strength Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_109",
        },
        {
            ["id"] = 39637,
            ["name"] = "Earthen Elixir",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_154",
        },
        {
            ["id"] = 39638,
            ["name"] = "Elixir of Draenic Wisdom",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_155",
        },
    },
    [325] = {
        {
            ["id"] = 28551,
            ["name"] = "Super Healing Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_131",
        },
        {
            ["id"] = 28552,
            ["name"] = "Elixir of the Searching Eye",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_135",
        },
        {
            ["id"] = 38070,
            ["name"] = "Mercurial Stone",
            ["category"] = "Stones",
            ["texture"] = "Interface/ICONS/inv_misc_gem_lionseye_01",
        },
        {
            ["id"] = 45061,
            ["name"] = "Mad Alchemist's Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_28",
        },
    },
    [330] = {
        {
            ["id"] = 28553,
            ["name"] = "Elixir of Major Agility",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_127",
        },
        {
            ["id"] = 39639,
            ["name"] = "Elixir of Ironskin",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_159",
        },
    },
    [335] = {
        {
            ["id"] = 28554,
            ["name"] = "Shrouding Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_144",
        },
        {
            ["id"] = 38960,
            ["name"] = "Fel Strength Elixir",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_152",
        },
    },
    [340] = {
        {
            ["id"] = 28555,
            ["name"] = "Super Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_137",
        },
    },
    [345] = {
        {
            ["id"] = 28556,
            ["name"] = "Elixir of Major Firepower",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_146",
        },
        {
            ["id"] = 28557,
            ["name"] = "Elixir of Major Defense",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_122",
        },
        {
            ["id"] = 38962,
            ["name"] = "Fel Regeneration Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_140",
        },
    },
    [350] = {
        {
            ["id"] = 28558,
            ["name"] = "Elixir of Major Shadow Power",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_145",
        },
        {
            ["id"] = 28562,
            ["name"] = "Major Dreamless Sleep Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_139",
        },
        {
            ["id"] = 28563,
            ["name"] = "Heroic Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_106",
        },
        {
            ["id"] = 28564,
            ["name"] = "Haste Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_108",
        },
        {
            ["id"] = 28565,
            ["name"] = "Destruction Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_107",
        },
        {
            ["id"] = 28566,
            ["name"] = "Transmute: Primal Air to Fire",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_fire",
        },
        {
            ["id"] = 28567,
            ["name"] = "Transmute: Primal Earth to Water",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_water",
        },
        {
            ["id"] = 28568,
            ["name"] = "Transmute: Primal Fire to Earth",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_earth",
        },
        {
            ["id"] = 28569,
            ["name"] = "Transmute: Primal Water to Air",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_air",
        },
        {
            ["id"] = 29688,
            ["name"] = "Transmute: Primal Might",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/spell_nature_lightningoverload",
        },
        {
            ["id"] = 32765,
            ["name"] = "Transmute: Earthstorm Diamond",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_misc_gem_diamond_04",
        },
        {
            ["id"] = 32766,
            ["name"] = "Transmute: Skyfire Diamond",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_misc_gem_diamond_05",
        },
    },
    [355] = {
        {
            ["id"] = 28570,
            ["name"] = "Elixir of Major Mageblood",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_151",
        },
    },
    [360] = {
        {
            ["id"] = 28571,
            ["name"] = "Major Fire Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_124",
        },
        {
            ["id"] = 28572,
            ["name"] = "Major Frost Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_126",
        },
        {
            ["id"] = 28573,
            ["name"] = "Major Nature Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_127",
        },
        {
            ["id"] = 28575,
            ["name"] = "Major Arcane Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_128",
        },
        {
            ["id"] = 28576,
            ["name"] = "Major Shadow Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_123",
        },
        {
            ["id"] = 28577,
            ["name"] = "Major Holy Protection Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_125",
        },
        {
            ["id"] = 38961,
            ["name"] = "Fel Mana Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_138",
        },
    },
    [365] = {
        {
            ["id"] = 28578,
            ["name"] = "Elixir of Empowerment",
            ["category"] = "Elixirs",
            ["texture"] = "Interface/ICONS/inv_potion_136",
        },
        {
            ["id"] = 28579,
            ["name"] = "Ironshield Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_133",
        },
    },
    [375] = {
        {
            ["id"] = 42736,
            ["name"] = "Flask of Chromatic Wonder",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_48",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 33209,
                ["cost"] = 34000,
                ["location"] = "The Violet Eye - Honored",
            },
        },
        {
            ["id"] = 47046,
            ["name"] = "Guardian's Alchemist Stone",
            ["category"] = "Stones",
            ["texture"] = "Interface/ICONS/spell_nature_healingway",
        },
        {
            ["id"] = 47048,
            ["name"] = "Sorcerer's Alchemist Stone",
            ["category"] = "Stones",
            ["texture"] = "Interface/ICONS/spell_nature_healingway",
        },
        {
            ["id"] = 47049,
            ["name"] = "Redeemer's Alchemist Stone",
            ["category"] = "Stones",
            ["texture"] = "Interface/ICONS/spell_nature_healingway",
        },
        {
            ["id"] = 47050,
            ["name"] = "Assassin's Alchemist Stone",
            ["category"] = "Stones",
            ["texture"] = "Interface/ICONS/spell_nature_healingway",
        },
    },
    [999] = { -- Discoveries
        {
            ["id"] = 28586,
            ["name"] = "Super Rejuvenation Potion",
            ["category"] = "Potions",
            ["texture"] = "Interface/ICONS/inv_potion_134",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 390, 397, 405 },
        },
        {
            ["id"] = 28580,
            ["name"] = "Transmute: Primal Shadow to Water",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_water",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 385, 392, 400 },
        },
        {
            ["id"] = 28581,
            ["name"] = "Transmute: Primal Water to Shadow",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_shadow",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 385, 392, 400 },
        },
        {
            ["id"] = 28582,
            ["name"] = "Transmute: Primal Mana to Fire",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_fire",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 385, 392, 400 },
        },
        {
            ["id"] = 28583,
            ["name"] = "Transmute: Primal Fire to Mana",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_mana",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 385, 392, 400 },
        },
        {
            ["id"] = 28584,
            ["name"] = "Transmute: Primal Life to Earth",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_earth",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 385, 392, 400 },
        },
        {
            ["id"] = 28585,
            ["name"] = "Transmute: Primal Earth to Life",
            ["category"] = "Transmutes",
            ["texture"] = "Interface/ICONS/inv_elemental_primal_life",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 385, 392, 400 },
        },
        {
            ["id"] = 28587,
            ["name"] = "Flask of Fortification",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_119",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 390, 397, 405 },
        },
        {
            ["id"] = 28588,
            ["name"] = "Flask of Mighty Restoration",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_118",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 390, 397, 405 },
        },
        {
            ["id"] = 28589,
            ["name"] = "Flask of Relentless Assault",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_117",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 390, 397, 405 },
        },
        {
            ["id"] = 28590,
            ["name"] = "Flask of Blinding Light",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_116",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 375, 390, 397, 405 },
        },
        {
            ["id"] = 28591,
            ["name"] = "Flask of Pure Death",
            ["category"] = "Flasks",
            ["texture"] = "Interface/ICONS/inv_potion_115",
            ["source"] = { ["type"] = "Discovery", },
            ["product"] = { ["itemId"] = 22866 },
            ["materials"] = {
                { ["name"] = "Fel Lotus", ["itemId"] = 22794 },
                { ["name"] = "Mana Thistle", ["itemId"] = 22793, ["quantity"] = 3 },
                { ["name"] = "Nightmare Vine", ["itemId"] = 22792, ["quantity"] = 7 },
                { ["name"] = "Imbued Vial", ["itemId"] = 18256 },
            },
            ["levels"] = { 375, 390, 397, 405 },
        },
        {
            ["id"] = 41458,
            ["name"] = "Cauldron of Major Arcane Protection",
            ["category"] = "Cauldrons",
            ["texture"] = "Interface/ICONS/inv_misc_cauldron_arcane",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 360, 360, 370, 380 },
        },
        {
            ["id"] = 41500,
            ["name"] = "Cauldron of Major Fire Protection",
            ["category"] = "Cauldrons",
            ["texture"] = "Interface/ICONS/inv_misc_cauldron_fire",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 360, 360, 370, 380 },
        },
        {
            ["id"] = 41501,
            ["name"] = "Cauldron of Major Frost Protection",
            ["category"] = "Cauldrons",
            ["texture"] = "Interface/ICONS/inv_misc_cauldron_frost",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 360, 360, 370, 380 },
        },
        {
            ["id"] = 41502,
            ["name"] = "Cauldron of Major Nature Protection",
            ["category"] = "Cauldrons",
            ["texture"] = "Interface/ICONS/inv_misc_cauldron_nature",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 360, 360, 370, 380 },
        },
        {
            ["id"] = 41503,
            ["name"] = "Cauldron of Major Shadow Protection",
            ["category"] = "Cauldrons",
            ["texture"] = "Interface/ICONS/inv_misc_cauldron_shadow",
            ["source"] = { ["type"] = "Discovery", },
            ["levels"] = { 360, 360, 370, 380 },
        },
    },
}

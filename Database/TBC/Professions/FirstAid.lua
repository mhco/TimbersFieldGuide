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
TFG.FIRST_AID_TBC = {
    [1] = {
        {
            ["id"] = 3273,
            ["name"] = "First Aid", -- Apprentice
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/spell_holy_sealofsacrifice",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100,
            },
        },
        {
            ["id"] = 3275,
            ["name"] = "Linen Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_15",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 0,
            },
            ["product"] = { ["itemId"] = 1251 },
            ["materials"] = {
                { ["itemId"] = 2589 }, -- Line Cloth
            },
            ["levels"] = { 1, 30, 45, 60 },
        },
    },
    [40] = {
        {
            ["id"] = 3276,
            ["name"] = "Heavy Linen Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_18",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100,
            },
            ["product"] = { ["itemId"] = 2581 },
            ["materials"] = {
                { ["itemId"] = 2589, ["quantity"] = 2 }, -- Line Cloth
            },
            ["levels"] = { 40, 50, 75, 100 },
        },
    },
    [50] = {
        {
            ["id"] = 3274,
            ["name"] = "First Aid", -- Journeyman
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/spell_holy_sealofsacrifice",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
        },
    },
    [80] = {
        {
            ["id"] = 3277,
            ["name"] = "Wool Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_14",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 250,
            },
            ["product"] = { ["itemId"] = 3530 },
            ["materials"] = {
                { ["itemId"] = 2592 }, -- Wool Cloth
            },
            ["levels"] = { 80, 80, 115, 150 },
        },
        {
            ["id"] = 7934,
            ["name"] = "Anti-Venom",
            ["category"] = "Anti-Venoms",
            ["texture"] = "Interface/ICONS/inv_misc_slime_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 250,
            },
            ["product"] = { ["itemId"] = 6452, ["quantity"] = 3 },
            ["materials"] = {
                { ["itemId"] = 1475 }, -- Small Venom Sac
            },
            ["levels"] = { 80, 80, 115, 150 },
        },
    },
    [115] = {
        {
            ["id"] = 3278,
            ["name"] = "Heavy Wool Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_17",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 1000,
            },
            ["product"] = { ["itemId"] = 3531 },
            ["materials"] = {
                { ["itemId"] = 2592, ["quantity"] = 2 }, -- Wool Cloth
            },
            ["levels"] = { 115, 115, 150, 185 },
        },
    },
    [125] = {
        {
            ["id"] = 7924,
            ["name"] = "First Aid", -- Expert
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/spell_holy_sealofsacrifice",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 16084,
                ["cost"] = 10000,
            },
        },
    },
    [130] = {
        {
            ["id"] = 7935,
            ["name"] = "Strong Anti-Venom",
            ["category"] = "Anti-Venoms",
            ["texture"] = "Interface/ICONS/inv_misc_slime_01",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 6454,
                ["location"] = "World Drop",
            },
            ["product"] = { ["itemId"] = 6453, ["quantity"] = 3 },
            ["materials"] = {
                { ["itemId"] = 1288 }, -- Large Venom Sac
            },
            ["levels"] = { 130, 130, 165, 200 },
        },
    },
    [150] = {
        {
            ["id"] = 7928,
            ["name"] = "Silk Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["product"] = { ["itemId"] = 6450 },
            ["materials"] = {
                { ["itemId"] = 4306 }, -- Silk Cloth
            },
            ["levels"] = { 150, 150, 180, 210 },
        },
    },
    [180] = {
        {
            ["id"] = 7929,
            ["name"] = "Heavy Silk Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_02",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 16112,
                ["cost"] = 2200,
            },
            ["product"] = { ["itemId"] = 6451 },
            ["materials"] = {
                { ["itemId"] = 4306, ["quantity"] = 2 }, -- Silk Cloth
            },
            ["levels"] = { 180, 180, 210, 240 },
        },
    },
    [210] = {
        {
            ["id"] = 10840,
            ["name"] = "Mageweave Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_19",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 16113,
                ["cost"] = 5000,
            },
            ["product"] = { ["itemId"] = 8544 },
            ["materials"] = {
                { ["itemId"] = 4338 }, -- Mageweave Cloth
            },
            ["levels"] = { 210, 210, 240, 270 },
        },
    },
    [225] = {
        {
            ["id"] = 10846,
            ["name"] = "First Aid", -- Artisan
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/spell_holy_sealofsacrifice",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 0,
            },
        },
    },
    [240] = {
        {
            ["id"] = 10841,
            ["name"] = "Heavy Mageweave Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_20",
            ["source"] = {
                ["type"] = "Trainer",
            },
            ["product"] = { ["itemId"] = 8545 },
            ["materials"] = {
                { ["itemId"] = 4338, ["quantity"] = 2 }, -- Mageweave Cloth
            },
            ["levels"] = { 240, 240, 270, 300 },
        },
    },
    [260] = {
        {
            ["id"] = 18629,
            ["name"] = "Runecloth Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_11",
            ["source"] = {
                ["type"] = "Trainer",
            },
            ["product"] = { ["itemId"] = 14529 },
            ["materials"] = {
                { ["itemId"] = 14047 }, -- Runecloth
            },
            ["levels"] = { 260, 260, 290, 320 },
        },
    },
    [290] = {
        {
            ["id"] = 18630,
            ["name"] = "Heavy Runecloth Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_12",
            ["source"] = {
                ["type"] = "Trainer",
            },
            ["product"] = { ["itemId"] = 14530 },
            ["materials"] = {
                { ["itemId"] = 14047, ["quantity"] = 2 }, -- Runecloth
            },
            ["levels"] = { 290, 290, 320, 350 },
        },
    },
    [300] = {
        {
            ["id"] = 27028,
            ["name"] = "First Aid", -- Master
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/spell_holy_sealofsacrifice",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 21990,
                ["cost"] = 50000,
            },
        },
        {
            ["id"] = 23787,
            ["name"] = "Powerful Anti-Venom",
            ["category"] = "Anti-Venoms",
            ["texture"] = "Interface/ICONS/inv_drink_14",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 19442,
                ["cost"] = 90000,
                ["location"] = "Argent Dawn - Honored",
            },
            ["product"] = { ["itemId"] = 19440 },
            ["materials"] = {
                { ["itemId"] = 19441, ["quantity"] = 1 }, -- Huge Venom Sac
            },
            ["levels"] = { 300, 300, 330, 360 },
        },
    },
    [330] = {
        {
            ["id"] = 27032,
            ["name"] = "Netherweave Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_netherweave",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 21992,
                ["cost"] = 20000,
                ["location"] = "Aresella, Falcon Watch, Hellfire Peninsula",
            },
            ["product"] = { ["itemId"] = 21990 },
            ["materials"] = {
                { ["itemId"] = 21877, ["quantity"] = 1 }, -- Netherweave Cloth
            },
            ["levels"] = { 330, 330, 360, 390 },
        },
    },
    [360] = {
        {
            ["id"] = 27033,
            ["name"] = "Heavy Netherweave Bandage",
            ["category"] = "Bandages",
            ["texture"] = "Interface/ICONS/inv_misc_bandage_netherweave_heavy",
            ["source"] = {
                ["type"] = "Item",
                ["itemId"] = 21993,
                ["cost"] = 40000,
                ["location"] = "Aresella, Falcon Watch, Hellfire Peninsula",
            },
            ["product"] = { ["itemId"] = 21991 },
            ["materials"] = {
                { ["itemId"] = 21877, ["quantity"] = 2 }, -- Netherweave Cloth
            },
            ["levels"] = { 360, 360, 385, 410 },
        },
    },    
}

TFG.FIRSTAID_TBC = TFG.FIRST_AID_TBC

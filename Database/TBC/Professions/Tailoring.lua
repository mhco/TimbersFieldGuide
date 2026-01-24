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
    ["phase"] = 1,
},
--]]

-- ==========================================================================
-- Categories
-- ==========================================================================
-- Back
-- Bag
-- Enhancement
-- Chest
-- Feet
-- Hands
-- Head
-- Legs
-- Material
-- Shirt
-- Shoulder
-- Waist
-- Wrist

-- ==========================================================================
-- SKILLS
-- ==========================================================================
TFG.TAILORING_TBC = {
    [1] = {
        {
            ["id"] = 3908,
            ["name"] = "Tailoring", -- Apprentice
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_tailoring",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 2387,
            ["name"] = "Linen Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_14",
            ["source"] = {
                ["type"] = "Trainer", -- Trainer, Item, or Discovery
                ["cost"] = 0, -- Only needed for recipes from trainers or items
            },
            ["product"] = { ["itemId"] = 2570, ["quantity"] = 1 },
            ["materials"] = {
                { ["name"] = "Bolt of Linen Cloth", ["itemId"] = 2996, ["quantity"] = 1 },
                { ["name"] = "Coarse Thread", ["itemId"] = 2320, ["quantity"] = 1 },
            },
            ["levels"] = { 1, 35, 47, 60 },
            ["phase"] = 1,
        },
        {
            ["id"] = 2393,
            ["name"] = "White Linen Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_white_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 25,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3915,
            ["name"] = "Brown Linen Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_02",
            ["phase"] = 1
        },
        {
            ["id"] = 12044,
            ["name"] = "Simple Linen Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_11",
            ["phase"] = 1
        },
        {
            ["id"] = 2963,
            ["name"] = "Bolt of Linen Cloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_linen_02",
            ["phase"] = 1
        },
    },
    [10] = {
        {
            ["id"] = 2385,
            ["name"] = "Brown Linen Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
    },
    [15] = {
        {
            ["id"] = 8776,
            ["name"] = "Linen Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
    },
    [20] = {
        {
            ["id"] = 12045,
            ["name"] = "Simple Linen Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
    },
    [30] = {
        {
            ["id"] = 3914,
            ["name"] = "Brown Linen Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_06",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 7623,
            ["name"] = "Brown Linen Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_21",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 7624,
            ["name"] = "White Linen Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_04",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
    },
    [35] = {
        {
            ["id"] = 3840,
            ["name"] = "Heavy Linen Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100,
            },
            ["phase"] = 1
        },
    },
    [40] = {
        {
            ["id"] = 2389,
            ["name"] = "Red Linen Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_18",
            ["source"] = {
                ["type"] = "Item", -- Trainer, Item, or Discovery
                ["itemId"] = 2598, -- Only needed for items that teach the recipe
                ["location"] = "World Drop",
            },
            ["product"] = { ["itemId"] = 2572, ["quantity"] = 1 },
            ["materials"] = {
                { ["name"] = "Bolt of Linen Cloth", ["itemId"] = 2996, ["quantity"] = 3 },
                { ["name"] = "Coarse Thread", ["itemId"] = 2320, ["quantity"] = 2 },
                { ["name"] = "Red Dye", ["itemId"] = 2604, ["quantity"] = 2 },
            },
            ["levels"] = { 40, 65, 82, 100 },
            ["phase"] = 1,
        },
        {
            ["id"] = 2392,
            ["name"] = "Red Linen Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_red_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 2394,
            ["name"] = "Blue Linen Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_blue_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 8465,
            ["name"] = "Simple Dress",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_12",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
            ["phase"] = 1
        },
    },
    [45] = {
        {
            ["id"] = 3755,
            ["name"] = "Linen Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100,
            },
            ["phase"] = 1
        },
    },
    [50] = {
        {
            ["id"] = 3909,
            ["name"] = "Tailoring", -- Journeyman
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_tailoring",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
            ["phase"] = 1
        },
    },
    [55] = {
        {
            ["id"] = 7629,
            ["name"] = "Red Linen Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_40",
            ["phase"] = 1
        },
        {
            ["id"] = 7630,
            ["name"] = "Blue Linen Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_37",
            ["phase"] = 1
        },
    },
    [60] = {
        {
            ["id"] = 2397,
            ["name"] = "Reinforced Linen Cape",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_07",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 200,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3841,
            ["name"] = "Green Linen Bracers",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_12",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 200,
            },
            ["phase"] = 1
        },
    },
    [65] = {
        {
            ["id"] = 2386,
            ["name"] = "Linen Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 200,
            },
            ["phase"] = 1
        },
    },
    [70] = {
        {
            ["id"] = 2395,
            ["name"] = "Barbaric Linen Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_fur",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 300,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 2396,
            ["name"] = "Green Linen Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_green_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 200,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3842,
            ["name"] = "Handstitched Linen Britches",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_07",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 300,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 6686,
            ["name"] = "Red Linen Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_02",
            ["phase"] = 1
        },
        {
            ["id"] = 7633,
            ["name"] = "Blue Linen Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_23",
            ["phase"] = 1
        },
    },
    [75] = {
        {
            ["id"] = 2402,
            ["name"] = "Woolen Cape",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_10",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 250,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12046,
            ["name"] = "Simple Kilt",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_11",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 300,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 2964,
            ["name"] = "Bolt of Woolen Cloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_wool_03",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100,
            },
            ["phase"] = 1
        },
    },
    [80] = {
        {
            ["id"] = 3757,
            ["name"] = "Woolen Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_10",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 200,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3845,
            ["name"] = "Soft-soled Linen Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 300,
            },
            ["phase"] = 1
        },
    },
    [85] = {
        {
            ["id"] = 2399,
            ["name"] = "Green Woolen Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_39",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 300,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3843,
            ["name"] = "Heavy Woolen Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 400,
            },
            ["phase"] = 1
        },
    },
    [90] = {
        {
            ["id"] = 6521,
            ["name"] = "Pearl-clasped Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_11",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 400,
            },
            ["phase"] = 1
        },
    },
    [95] = {
        {
            ["id"] = 2401,
            ["name"] = "Woolen Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 300,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3758,
            ["name"] = "Green Woolen Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_10_green",
            ["phase"] = 1
        },
        {
            ["id"] = 3847,
            ["name"] = "Red Woolen Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_09",
            ["phase"] = 1
        },
    },
    [100] = {
        {
            ["id"] = 3844,
            ["name"] = "Heavy Woolen Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_14",
            ["phase"] = 1
        },
        {
            ["id"] = 7639,
            ["name"] = "Blue Overalls",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_13",
            ["phase"] = 1
        },
        {
            ["id"] = 2406,
            ["name"] = "Gray Woolen Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_grey_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 200,
            },
            ["phase"] = 1
        },
    },
    [105] = {
        {
            ["id"] = 2403,
            ["name"] = "Gray Woolen Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_13",
            ["phase"] = 1
        },
    },
    [110] = {
        {
            ["id"] = 3848,
            ["name"] = "Double-stitched Woolen Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_06",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3850,
            ["name"] = "Heavy Woolen Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3866,
            ["name"] = "Stylish Red Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_red_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 250,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 8467,
            ["name"] = "White Woolen Dress",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_12",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 250,
            },
            ["phase"] = 1
        },
    },
    [115] = {
        {
            ["id"] = 6688,
            ["name"] = "Red Woolen Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_10_red",
            ["phase"] = 1
        },
        {
            ["id"] = 7643,
            ["name"] = "Greater Adept's Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_24",
            ["phase"] = 1
        },
    },
    [120] = {
        {
            ["id"] = 3849,
            ["name"] = "Reinforced Woolen Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_09",
            ["phase"] = 1
        },
        {
            ["id"] = 7892,
            ["name"] = "Stylish Blue Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_blue_01",
            ["phase"] = 1
        },
        {
            ["id"] = 7893,
            ["name"] = "Stylish Green Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_green_01",
            ["phase"] = 1
        },
        {
            ["id"] = 12047,
            ["name"] = "Colorful Kilt",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_02",
            ["phase"] = 1
        },
    },
    [125] = {
        {
            ["id"] = 3851,
            ["name"] = "Phoenix Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_06",
            ["phase"] = 1
        },
        {
            ["id"] = 3855,
            ["name"] = "Spidersilk Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 750,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3868,
            ["name"] = "Phoenix Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_19",
            ["phase"] = 1
        },
        {
            ["id"] = 3839,
            ["name"] = "Bolt of Silk Cloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_silk_03",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3910,
            ["name"] = "Tailoring", -- Expert
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_tailoring",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["phase"] = 1
        },
    },
    [130] = {
        {
            ["id"] = 3852,
            ["name"] = "Gloves of Meditation",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 750,
            },
            ["phase"] = 1
        },
    },
    [135] = {
        {
            ["id"] = 6690,
            ["name"] = "Lesser Wizard's Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_17",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 1000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3869,
            ["name"] = "Bright Yellow Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_yellow_01",
            ["phase"] = 1
        },
    },
    [140] = {
        {
            ["id"] = 3856,
            ["name"] = "Spider Silk Slippers",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_03",
            ["phase"] = 1
        },
        {
            ["id"] = 8758,
            ["name"] = "Azure Silk Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_08",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 600,
            },
            ["phase"] = 1
        },
    },
    [145] = {
        {
            ["id"] = 3854,
            ["name"] = "Azure Silk Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_17",
            ["phase"] = 1
        },
        {
            ["id"] = 8780,
            ["name"] = "Hands of Darkness",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_22",
            ["phase"] = 1
        },
        {
            ["id"] = 8760,
            ["name"] = "Azure Silk Hood",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_29",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 600,
            },
            ["phase"] = 1
        },
    },
    [150] = {
        {
            ["id"] = 3813,
            ["name"] = "Small Silk Pack",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_07",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 800,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3859,
            ["name"] = "Azure Silk Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_37",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 750,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 6692,
            ["name"] = "Robes of Arcana",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_29",
            ["phase"] = 1
        },
        {
            ["id"] = 8782,
            ["name"] = "Truefaith Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_16",
            ["phase"] = 1
        },
    },
    [155] = {
        {
            ["id"] = 3870,
            ["name"] = "Dark Silk Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_black_01",
            ["phase"] = 1
        },
    },
    [160] = {
        {
            ["id"] = 8483,
            ["name"] = "White Swashbuckler's Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_white_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 8762,
            ["name"] = "Silk Headband",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_misc_bandana_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 750,
            },
            ["phase"] = 1
        },
    },
    [165] = {
        {
            ["id"] = 3857,
            ["name"] = "Enchanter's Cowl",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_31",
            ["phase"] = 1
        },
        {
            ["id"] = 8784,
            ["name"] = "Green Silk Armor",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_06",
            ["phase"] = 1
        },
    },
    [170] = {
        {
            ["id"] = 3858,
            ["name"] = "Shadow Hood",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_27",
            ["phase"] = 1
        },
        {
            ["id"] = 8764,
            ["name"] = "Earthen Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_04",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 900,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3871,
            ["name"] = "Formal White Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_08",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
            ["phase"] = 1
        },
    },
    [175] = {
        {
            ["id"] = 3860,
            ["name"] = "Boots of the Enchanter",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["phase"] = 1
        },
        {
            ["id"] = 6693,
            ["name"] = "Green Silk Pack",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_07_green",
            ["phase"] = 1
        },
        {
            ["id"] = 8766,
            ["name"] = "Azure Silk Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_22",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 1000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 8772,
            ["name"] = "Crimson Silk Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_04",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 1000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 8786,
            ["name"] = "Azure Silk Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_14",
            ["phase"] = 1
        },
        {
            ["id"] = 8489,
            ["name"] = "Red Swashbuckler's Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_red_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 750,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3865,
            ["name"] = "Bolt of Mageweave",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_mageweave_03",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 1000,
            },
            ["phase"] = 1
        },
    },
    [180] = {
        {
            ["id"] = 3863,
            ["name"] = "Spider Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_25",
            ["phase"] = 1
        },
        {
            ["id"] = 8774,
            ["name"] = "Green Silken Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_18",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 1000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 8789,
            ["name"] = "Crimson Silk Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_16",
            ["phase"] = 1
        },
    },
    [185] = {
        {
            ["id"] = 3861,
            ["name"] = "Long Silken Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_02",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 1000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 6695,
            ["name"] = "Black Silk Pack",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_07_black",
            ["phase"] = 1
        },
        {
            ["id"] = 8791,
            ["name"] = "Crimson Silk Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_04",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 2500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 3872,
            ["name"] = "Rich Purple Silk Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_16",
            ["phase"] = 1
        },
    },
    [190] = {
        {
            ["id"] = 8770,
            ["name"] = "Robe of Power",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_02",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 1000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 8793,
            ["name"] = "Crimson Silk Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_23",
            ["phase"] = 1
        },
        {
            ["id"] = 8795,
            ["name"] = "Azure Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_27",
            ["phase"] = 1
        },
        {
            ["id"] = 21945,
            ["name"] = "Green Holiday Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_green_01",
            ["phase"] = 1
        },
    },
    [195] = {
        {
            ["id"] = 8797,
            ["name"] = "Earthen Silk Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_24",
            ["phase"] = 1
        },
        {
            ["id"] = 8799,
            ["name"] = "Crimson Silk Pantaloons",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_06",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 3000,
            },
            ["phase"] = 1
        },
    },
    [200] = {
        {
            ["id"] = 3862,
            ["name"] = "Icy Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_04",
            ["phase"] = 1
        },
        {
            ["id"] = 3864,
            ["name"] = "Star Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_06",
            ["phase"] = 1
        },
        {
            ["id"] = 3873,
            ["name"] = "Black Swashbuckler's Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_black_01",
            ["phase"] = 1
        },
        {
            ["id"] = 12180,
            ["name"] = "Tailoring", -- Artisan
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_tailoring",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50000,
            },
            ["phase"] = 1
        },
    },
    [205] = {
        {
            ["id"] = 8802,
            ["name"] = "Crimson Silk Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_25",
            ["phase"] = 1
        },
        {
            ["id"] = 12048,
            ["name"] = "Black Mageweave Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_leather_03",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 4000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12049,
            ["name"] = "Black Mageweave Leggings",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 4000,
            },
            ["phase"] = 1
        },
    },
    [210] = {
        {
            ["id"] = 8804,
            ["name"] = "Crimson Silk Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12050,
            ["name"] = "Black Mageweave Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_13",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 4000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12052,
            ["name"] = "Shadoweave Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_11",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 4500,
            },
            ["phase"] = 1
        },
    },
    [215] = {
        {
            ["id"] = 12053,
            ["name"] = "Black Mageweave Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12055,
            ["name"] = "Shadoweave Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_38",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 4950,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12056,
            ["name"] = "Red Mageweave Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_09",
            ["phase"] = 1
        },
        {
            ["id"] = 12060,
            ["name"] = "Red Mageweave Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_06",
            ["phase"] = 1
        },
        {
            ["id"] = 12059,
            ["name"] = "White Bandit Mask",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_11",
            ["phase"] = 1
        },
        {
            ["id"] = 12061,
            ["name"] = "Orange Mageweave Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_orange_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 2500,
            },
            ["phase"] = 1
        },
    },
    [220] = {
        {
            ["id"] = 12064,
            ["name"] = "Orange Martial Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_orange_01",
            ["phase"] = 1
        },
    },
    [225] = {
        {
            ["id"] = 12065,
            ["name"] = "Mageweave Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_10_black",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12066,
            ["name"] = "Red Mageweave Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_19",
            ["phase"] = 1
        },
        {
            ["id"] = 12067,
            ["name"] = "Dreamweave Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_18",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12069,
            ["name"] = "Cindercloth Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_25",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12070,
            ["name"] = "Dreamweave Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_42",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12071,
            ["name"] = "Shadoweave Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5400,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 27658,
            ["name"] = "Enchanted Mageweave Pouch",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_enchantedmageweave",
            ["phase"] = 1
        },
    },
    [230] = {
        {
            ["id"] = 12072,
            ["name"] = "Black Mageweave Headband",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_misc_bandana_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 6000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12073,
            ["name"] = "Black Mageweave Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 6000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12074,
            ["name"] = "Black Mageweave Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_25",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 6000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12075,
            ["name"] = "Lavender Mageweave Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_purple_01",
            ["phase"] = 1
        },
    },
    [235] = {
        {
            ["id"] = 12076,
            ["name"] = "Shadoweave Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_25",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5850,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12078,
            ["name"] = "Red Mageweave Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_23",
            ["phase"] = 1
        },
        {
            ["id"] = 12079,
            ["name"] = "Red Mageweave Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_10_red",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 6500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12077,
            ["name"] = "Simple Black Dress",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_21",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12080,
            ["name"] = "Pink Mageweave Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_red_01",
            ["phase"] = 1
        },
    },
    [240] = {
        {
            ["id"] = 12081,
            ["name"] = "Admiral's Hat",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_29",
            ["phase"] = 1
        },
        {
            ["id"] = 12082,
            ["name"] = "Shadoweave Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 6300,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12084,
            ["name"] = "Red Mageweave Headband",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_misc_bandana_03",
            ["phase"] = 1
        },
        {
            ["id"] = 12085,
            ["name"] = "Tuxedo Shirt",
            ["category"] = "Shirt",
            ["texture"] = "Interface/ICONS/inv_shirt_08",
            ["phase"] = 1
        },
    },
    [245] = {
        {
            ["id"] = 12086,
            ["name"] = "Shadoweave Mask",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_27",
            ["phase"] = 1
        },
        {
            ["id"] = 12088,
            ["name"] = "Cindercloth Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 7500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12089,
            ["name"] = "Tuxedo Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_01",
            ["phase"] = 1
        },
        {
            ["id"] = 50647,
            ["name"] = "Haliscan Pantaloons",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_11",
            ["phase"] = 1
        },
    },
    [250] = {
        {
            ["id"] = 18560,
            ["name"] = "Mooncloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_moonrag_01",
            ["phase"] = 1
        },
        {
            ["id"] = 12092,
            ["name"] = "Dreamweave Circlet",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_crown_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 7500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 12093,
            ["name"] = "Tuxedo Jacket",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_black_01",
            ["phase"] = 1
        },
        {
            ["id"] = 26403,
            ["name"] = "Festival Dress",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_56",
            ["phase"] = 1
        },
        {
            ["id"] = 26407,
            ["name"] = "Festive Red Pant Suit",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_55",
            ["phase"] = 1
        },
        {
            ["id"] = 50644,
            ["name"] = "Haliscan Jacket",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_black_01",
            ["phase"] = 1
        },
        {
            ["id"] = 49677,
            ["name"] = "Dress Shoes",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["phase"] = 1
        },
        {
            ["id"] = 12091,
            ["name"] = "White Wedding Dress",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_04",
            ["phase"] = 1
        },
        {
            ["id"] = 18401,
            ["name"] = "Bolt of Runecloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_purplefire_02",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 44950,
            ["name"] = "Green Winter Clothes",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_christmas01",
            ["phase"] = 1
        },
        {
            ["id"] = 44958,
            ["name"] = "Red Winter Clothes",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_christmas02",
            ["phase"] = 1
        },
    },
    [255] = {
        {
            ["id"] = 18402,
            ["name"] = "Runecloth Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_15",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18403,
            ["name"] = "Frostweave Tunic",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_08",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18404,
            ["name"] = "Frostweave Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_03",
            ["phase"] = 1
        },
    },
    [260] = {
        {
            ["id"] = 18405,
            ["name"] = "Runecloth Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_19",
            ["phase"] = 1
        },
        {
            ["id"] = 18406,
            ["name"] = "Runecloth Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_04",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18407,
            ["name"] = "Runecloth Tunic",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_04",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18408,
            ["name"] = "Cindercloth Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_07",
            ["phase"] = 1
        },
        {
            ["id"] = 26085,
            ["name"] = "Soul Pouch",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_soulbag",
            ["phase"] = 1
        },
    },
    [265] = {
        {
            ["id"] = 18409,
            ["name"] = "Runecloth Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_10",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18410,
            ["name"] = "Ghostweave Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_16",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18411,
            ["name"] = "Frostweave Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
    },
    [270] = {
        {
            ["id"] = 18412,
            ["name"] = "Cindercloth Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_05",
            ["phase"] = 1
        },
        {
            ["id"] = 18413,
            ["name"] = "Ghostweave Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18414,
            ["name"] = "Brightcloth Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_26",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18415,
            ["name"] = "Brightcloth Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_21",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
            ["phase"] = 1
        },
    },
    [275] = {
        {
            ["id"] = 26790,
            ["name"] = "Tailoring", -- Master
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_tailoring",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18416,
            ["name"] = "Ghostweave Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_08",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 12500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18417,
            ["name"] = "Runecloth Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_25",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 12500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18418,
            ["name"] = "Cindercloth Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_18",
            ["phase"] = 1
        },
        {
            ["id"] = 18419,
            ["name"] = "Felcloth Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_06",
            ["phase"] = 1
        },
        {
            ["id"] = 18420,
            ["name"] = "Brightcloth Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_11",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 12500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18421,
            ["name"] = "Wizardweave Leggings",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 12500,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18422,
            ["name"] = "Cloak of Fire",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_18",
            ["phase"] = 1
        },
        {
            ["id"] = 27659,
            ["name"] = "Enchanted Runecloth Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_enchantedrunecloth",
            ["phase"] = 1
        },
        {
            ["id"] = 27724,
            ["name"] = "Cenarion Herb Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_cenarionherbbag",
            ["phase"] = 1
        },
    },
    [280] = {
        {
            ["id"] = 18423,
            ["name"] = "Runecloth Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18424,
            ["name"] = "Frostweave Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_08",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18434,
            ["name"] = "Cindercloth Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_06",
            ["phase"] = 1
        },
    },
    [285] = {
        {
            ["id"] = 18436,
            ["name"] = "Robe of Winter Night",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_49",
            ["phase"] = 1
        },
        {
            ["id"] = 18437,
            ["name"] = "Felcloth Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18438,
            ["name"] = "Runecloth Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 26086,
            ["name"] = "Felcloth Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_felclothbag",
            ["phase"] = 1
        },
        {
            ["id"] = 22813,
            ["name"] = "Gordok Ogre Suit",
            ["category"] = "Other",
            ["texture"] = "Interface/ICONS/inv_chest_chain_14",
            ["phase"] = 1
        },
    },
    [290] = {
        {
            ["id"] = 18439,
            ["name"] = "Brightcloth Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_09",
            ["phase"] = 1
        },
        {
            ["id"] = 18440,
            ["name"] = "Mooncloth Leggings",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_13",
            ["phase"] = 1
        },
        {
            ["id"] = 18441,
            ["name"] = "Ghostweave Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18442,
            ["name"] = "Felcloth Hood",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_34",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 23662,
            ["name"] = "Wisdom of the Timbermaw",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_09",
            ["phase"] = 1
        },
        {
            ["id"] = 23664,
            ["name"] = "Argent Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_cloth_03",
            ["phase"] = 1
        },
        {
            ["id"] = 19435,
            ["name"] = "Mooncloth Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["phase"] = 1
        },
    },
    [295] = {
        {
            ["id"] = 18444,
            ["name"] = "Runecloth Headband",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_misc_bandana_03",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
    },
    [300] = {
        {
            ["id"] = 22759,
            ["name"] = "Flarecore Wraps",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_bracer_09",
            ["phase"] = 1
        },
        {
            ["id"] = 18445,
            ["name"] = "Mooncloth Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_14",
            ["phase"] = 1
        },
        {
            ["id"] = 18446,
            ["name"] = "Wizardweave Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_46",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18447,
            ["name"] = "Mooncloth Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_08",
            ["phase"] = 1
        },
        {
            ["id"] = 18448,
            ["name"] = "Mooncloth Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_02",
            ["phase"] = 1
        },
        {
            ["id"] = 18449,
            ["name"] = "Runecloth Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_21",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18450,
            ["name"] = "Wizardweave Turban",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_63",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18451,
            ["name"] = "Felcloth Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18452,
            ["name"] = "Mooncloth Circlet",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_misc_bandana_01",
            ["phase"] = 1
        },
        {
            ["id"] = 18453,
            ["name"] = "Felcloth Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_23",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 18454,
            ["name"] = "Gloves of Spell Mastery",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_06",
            ["phase"] = 1
        },
        {
            ["id"] = 18455,
            ["name"] = "Bottomless Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_13",
            ["phase"] = 1
        },
        {
            ["id"] = 18456,
            ["name"] = "Truefaith Vestments",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_31",
            ["phase"] = 1
        },
        {
            ["id"] = 18457,
            ["name"] = "Robe of the Archmage",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_38",
            ["phase"] = 1
        },
        {
            ["id"] = 18458,
            ["name"] = "Robe of the Void",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_51",
            ["phase"] = 1
        },
        {
            ["id"] = 20848,
            ["name"] = "Flarecore Mantle",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_23",
            ["phase"] = 1
        },
        {
            ["id"] = 20849,
            ["name"] = "Flarecore Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_26",
            ["phase"] = 1
        },
        {
            ["id"] = 22866,
            ["name"] = "Belt of the Archmage",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_31",
            ["phase"] = 1
        },
        {
            ["id"] = 22867,
            ["name"] = "Felcloth Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_19",
            ["phase"] = 1
        },
        {
            ["id"] = 22868,
            ["name"] = "Inferno Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_19",
            ["phase"] = 1
        },
        {
            ["id"] = 22869,
            ["name"] = "Mooncloth Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_17",
            ["phase"] = 1
        },
        {
            ["id"] = 22870,
            ["name"] = "Cloak of Warding",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_06",
            ["phase"] = 1
        },
        {
            ["id"] = 22902,
            ["name"] = "Mooncloth Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_04",
            ["phase"] = 1
        },
        {
            ["id"] = 23663,
            ["name"] = "Mantle of the Timbermaw",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_19",
            ["phase"] = 1
        },
        {
            ["id"] = 23665,
            ["name"] = "Argent Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_13",
            ["phase"] = 1
        },
        {
            ["id"] = 23666,
            ["name"] = "Flarecore Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_18",
            ["phase"] = 1
        },
        {
            ["id"] = 23667,
            ["name"] = "Flarecore Leggings",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_06",
            ["phase"] = 1
        },
        {
            ["id"] = 24091,
            ["name"] = "Bloodvine Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_07",
            ["phase"] = 1
        },
        {
            ["id"] = 24092,
            ["name"] = "Bloodvine Leggings",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_cloth_14",
            ["phase"] = 1
        },
        {
            ["id"] = 24093,
            ["name"] = "Bloodvine Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_cloth_02",
            ["phase"] = 1
        },
        {
            ["id"] = 24901,
            ["name"] = "Runed Stygian Leggings",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_cloth_05",
            ["phase"] = 1
        },
        {
            ["id"] = 24902,
            ["name"] = "Runed Stygian Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_14",
            ["phase"] = 1
        },
        {
            ["id"] = 24903,
            ["name"] = "Runed Stygian Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["phase"] = 1
        },
        {
            ["id"] = 26087,
            ["name"] = "Core Felcloth Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_corefelclothbag",
            ["phase"] = 1
        },
        {
            ["id"] = 27660,
            ["name"] = "Big Bag of Enchantment",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_bigbagofenchantments",
            ["phase"] = 1
        },
        {
            ["id"] = 27725,
            ["name"] = "Satchel of Cenarius",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_satchelofcenarius",
            ["phase"] = 1
        },
        {
            ["id"] = 28205,
            ["name"] = "Glacial Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_06",
            ["phase"] = 1
        },
        {
            ["id"] = 28207,
            ["name"] = "Glacial Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_08",
            ["phase"] = 1
        },
        {
            ["id"] = 28208,
            ["name"] = "Glacial Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_16",
            ["phase"] = 1
        },
        {
            ["id"] = 28209,
            ["name"] = "Glacial Wrists",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_07",
            ["phase"] = 1
        },
        {
            ["id"] = 28210,
            ["name"] = "Gaea's Embrace",
            ["category"] = "",
            ["texture"] = "Interface/ICONS/inv_misc_cape_17",
            ["phase"] = 1
        },
        {
            ["id"] = 28480,
            ["name"] = "Sylvan Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_plate07",
            ["phase"] = 1
        },
        {
            ["id"] = 28481,
            ["name"] = "Sylvan Crown",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_crown_01",
            ["phase"] = 1
        },
        {
            ["id"] = 28482,
            ["name"] = "Sylvan Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_18",
            ["phase"] = 1
        },
        {
            ["id"] = 26745,
            ["name"] = "Bolt of Netherweave",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_netherweave_bolt",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 20000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 31460,
            ["name"] = "Netherweave Net",
            ["category"] = "Other",
            ["texture"] = "Interface/ICONS/inv_misc_net_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 20000,
            },
            ["phase"] = 1
        },
    },
    [310] = {
        {
            ["id"] = 26764,
            ["name"] = "Netherweave Bracers",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_07",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 26765,
            ["name"] = "Netherweave Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_04",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
    },
    [315] = {
        {
            ["id"] = 26746,
            ["name"] = "Netherweave Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_23_netherweave",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 15000,
            },
            ["phase"] = 1
        },
    },
    [320] = {
        {
            ["id"] = 26770,
            ["name"] = "Netherweave Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_27",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 20000,
            },
            ["phase"] = 1
        },
    },
    [325] = {
        {
            ["id"] = 26771,
            ["name"] = "Netherweave Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 20000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 26747,
            ["name"] = "Bolt of Imbued Netherweave",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_netherweave_bolt_imbued",
            ["source"] = {
                ["type"] = "Item", -- Trainer, Item, or Discovery
                ["itemId"] = 21892, -- Only needed for items that teach the recipe
                ["cost"] = 34000, -- Only needed for recipes from trainers or items
                ["location"] = "Shattrath City, Silvermoon City, or The Exodar", -- Optional
            },
            ["product"] = { ["itemId"] = 21842, ["quantity"] = 1 },
            ["materials"] = {
                { ["itemId"] = 21840, ["quantity"] = 3 }, -- Bolt of Netherweave
                { ["itemId"] = 22445, ["quantity"] = 2 }, -- Arcane Dust
            },
            ["levels"] = { 325, 330, 335, 340 },
            ["phase"] = 1,
        },
    },
    [335] = {
        {
            ["id"] = 26772,
            ["name"] = "Netherweave Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 20000,
            },
            ["phase"] = 1
        },
        {
            ["id"] = 31430,
            ["name"] = "Mystic Spellthread",
            ["category"] = "Enhancement",
            ["texture"] = "Interface/ICONS/spell_nature_astralrecal",
            ["phase"] = 1
        },
        {
            ["id"] = 31431,
            ["name"] = "Silver Spellthread",
            ["category"] = "Enhancement",
            ["texture"] = "Interface/ICONS/spell_nature_lightning",
            ["phase"] = 1
        },
    },
    [340] = {
        {
            ["id"] = 26773,
            ["name"] = "Netherweave Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_29",
            ["phase"] = 1
        },
        {
            ["id"] = 26775,
            ["name"] = "Imbued Netherweave Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_leather_09",
            ["phase"] = 1
        },
        {
            ["id"] = 31459,
            ["name"] = "Bag of Jewels",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_15",
            ["phase"] = 1
        },
        {
            ["id"] = 26749,
            ["name"] = "Imbued Netherweave Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_24_netherweave_imbued",
            ["phase"] = 1
        },
    },
    [345] = {
        {
            ["id"] = 26774,
            ["name"] = "Netherweave Tunic",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_shirt_04",
            ["phase"] = 1
        },
        {
            ["id"] = 26750,
            ["name"] = "Bolt of Soulcloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_soulcloth_bolt",
            ["phase"] = 1
        },
    },
    [350] = {
        {
            ["id"] = 26776,
            ["name"] = "Imbued Netherweave Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_07",
            ["phase"] = 1
        },
        {
            ["id"] = 26782,
            ["name"] = "Arcanoweave Bracers",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_19",
            ["phase"] = 1
        },
        {
            ["id"] = 31434,
            ["name"] = "Unyielding Bracers",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_11",
            ["phase"] = 1
        },
        {
            ["id"] = 31435,
            ["name"] = "Bracers of Havok",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_10",
            ["phase"] = 1
        },
        {
            ["id"] = 31437,
            ["name"] = "Blackstrike Bracers",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_07",
            ["phase"] = 1
        },
        {
            ["id"] = 31438,
            ["name"] = "Cloak of the Black Void",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_20",
            ["phase"] = 1
        },
        {
            ["id"] = 31440,
            ["name"] = "Cloak of Eternity",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_10",
            ["phase"] = 1
        },
        {
            ["id"] = 31441,
            ["name"] = "White Remedy Cape",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_11",
            ["phase"] = 1
        },
        {
            ["id"] = 37873,
            ["name"] = "Cloak of Arcane Evasion",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_16",
            ["phase"] = 1
        },
        {
            ["id"] = 37882,
            ["name"] = "Flameheart Bracers",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_11",
            ["phase"] = 1
        },
        {
            ["id"] = 26751,
            ["name"] = "Primal Mooncloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_moonrag_primal",
            ["source"] = {
                ["type"] = "Item", -- Trainer, Item, or Discovery
                ["itemId"] = 21895, -- Only needed for items that teach the recipe
                ["cost"] = 34000, -- Only needed for recipes from trainers or items
                ["location"] = "Nasmara Moonsong, Shattrath City", -- Optional
            },
            ["product"] = { ["itemId"] = 21845, ["quantity"] = 1 },
            ["materials"] = {
                { ["name"] = "a", ["itemId"] = 21842, ["quantity"] = 1 },
                { ["name"] = "b", ["itemId"] = 21886, ["quantity"] = 1 },
                { ["name"] = "c", ["itemId"] = 21885, ["quantity"] = 1 },
            },
            ["levels"] = { 350, 350, 355, 360 },
            ["phase"] = 1,
        },
        {
            ["id"] = 31373,
            ["name"] = "Spellcloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_spellfire",
            ["source"] = {
                ["type"] = "Item", -- Trainer, Item, or Discovery
                ["itemId"] = 24316, -- Only needed for items that teach the recipe
                ["cost"] = 34000, -- Only needed for recipes from trainers or items
                ["location"] = "Gidge Spellweaver", -- Optional
            },
            ["product"] = { ["itemId"] = 24271, ["quantity"] = 1 },
            ["materials"] = {
                { ["name"] = "a", ["itemId"] = 21842, ["quantity"] = 1 },
                { ["name"] = "b", ["itemId"] = 22457, ["quantity"] = 1 },
                { ["name"] = "c", ["itemId"] = 21884, ["quantity"] = 1 },
            },
            ["cooldown"] = 331200,
            ["levels"] = { 350, 350, 355, 360 },
            ["phase"] = 1,
        },
        {
            ["id"] = 36686,
            ["name"] = "Shadowcloth",
            ["category"] = "Bolts & Cloth",
            ["texture"] = "Interface/ICONS/inv_fabric_felcloth_ebon",
            ["source"] = {
                ["type"] = "Item", -- Trainer, Item, or Discovery
                ["itemId"] = 30483, -- Only needed for items that teach the recipe
                ["cost"] = 34000, -- Only needed for recipes from trainers or items
                ["location"] = "Gidge Spellweaver", -- Optional
            },
            ["product"] = { ["itemId"] = 24272, ["quantity"] = 1 },
            ["materials"] = {
                { ["name"] = "a", ["itemId"] = 21842, ["quantity"] = 1 },
                { ["name"] = "b", ["itemId"] = 22456, ["quantity"] = 1 },
                { ["name"] = "c", ["itemId"] = 21884, ["quantity"] = 1 },
            },
            ["cooldown"] = 331200,
            ["levels"] = { 350, 350, 355, 360 },
            ["phase"] = 1,
        },
    },
    [355] = {
        {
            ["id"] = 26752,
            ["name"] = "Spellfire Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_04",
            ["phase"] = 1
        },
        {
            ["id"] = 26756,
            ["name"] = "Frozen Shadoweave Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_25",
            ["phase"] = 1
        },
        {
            ["id"] = 26760,
            ["name"] = "Primal Mooncloth Belt",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_31",
            ["phase"] = 1
        },
        {
            ["id"] = 26779,
            ["name"] = "Soulcloth Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_17",
            ["phase"] = 1
        },
    },
    [360] = {
        {
            ["id"] = 26777,
            ["name"] = "Imbued Netherweave Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_12",
            ["phase"] = 1
        },
        {
            ["id"] = 26778,
            ["name"] = "Imbued Netherweave Tunic",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_45",
            ["phase"] = 1
        },
        {
            ["id"] = 26783,
            ["name"] = "Arcanoweave Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_07",
            ["phase"] = 1
        },
        {
            ["id"] = 37883,
            ["name"] = "Flameheart Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_19",
            ["phase"] = 1
        },
    },
    [365] = {
        {
            ["id"] = 46128,
            ["name"] = "Sunfire Handwraps",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_49",
            ["phase"] = 1
        },
        {
            ["id"] = 46129,
            ["name"] = "Hands of Eternal Light",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_63",
            ["phase"] = 1
        },
        {
            ["id"] = 46130,
            ["name"] = "Sunfire Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_02",
            ["phase"] = 1
        },
        {
            ["id"] = 46131,
            ["name"] = "Robe of Eternal Light",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_51",
            ["phase"] = 1
        },
        {
            ["id"] = 26753,
            ["name"] = "Spellfire Gloves",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_gauntlets_19",
            ["phase"] = 1
        },
        {
            ["id"] = 26757,
            ["name"] = "Frozen Shadoweave Boots",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_cloth_03",
            ["phase"] = 1
        },
        {
            ["id"] = 26761,
            ["name"] = "Primal Mooncloth Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_02",
            ["phase"] = 1
        },
        {
            ["id"] = 26780,
            ["name"] = "Soulcloth Shoulders",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_02",
            ["phase"] = 1
        },
        {
            ["id"] = 31442,
            ["name"] = "Unyielding Girdle",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_03",
            ["phase"] = 1
        },
        {
            ["id"] = 31443,
            ["name"] = "Girdle of Ruination",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_13",
            ["phase"] = 1
        },
        {
            ["id"] = 31444,
            ["name"] = "Black Belt of Knowledge",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_26",
            ["phase"] = 1
        },
        {
            ["id"] = 31448,
            ["name"] = "Resolute Cape",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_16",
            ["phase"] = 1
        },
        {
            ["id"] = 31449,
            ["name"] = "Vengeance Wrap",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_18",
            ["phase"] = 1
        },
        {
            ["id"] = 31450,
            ["name"] = "Manaweave Cloak",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_16",
            ["phase"] = 1
        },
    },
    [370] = {
        {
            ["id"] = 26784,
            ["name"] = "Arcanoweave Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_01",
            ["phase"] = 1
        },
        {
            ["id"] = 37884,
            ["name"] = "Flameheart Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_07",
            ["phase"] = 1
        },
    },
    [375] = {
        {
            ["id"] = 26754,
            ["name"] = "Spellfire Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_02",
            ["phase"] = 1
        },
        {
            ["id"] = 26763,
            ["name"] = "Primal Mooncloth Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_25_mooncloth",
            ["phase"] = 1
        },
        {
            ["id"] = 26755,
            ["name"] = "Spellfire Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_26_spellfire",
            ["phase"] = 1
        },
        {
            ["id"] = 26758,
            ["name"] = "Frozen Shadoweave Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_08",
            ["phase"] = 1
        },
        {
            ["id"] = 26759,
            ["name"] = "Ebon Shadowbag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_felclothbag",
            ["phase"] = 1
        },
        {
            ["id"] = 26762,
            ["name"] = "Primal Mooncloth Robe",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_04",
            ["phase"] = 1
        },
        {
            ["id"] = 26781,
            ["name"] = "Soulcloth Vest",
            ["category"] = "Chest",
            ["texture"] = "Interface/ICONS/inv_chest_cloth_12",
            ["phase"] = 1
        },
        {
            ["id"] = 31432,
            ["name"] = "Runic Spellthread",
            ["category"] = "Enhancement",
            ["texture"] = "Interface/ICONS/spell_nature_astralrecalgroup",
            ["phase"] = 1
        },
        {
            ["id"] = 31433,
            ["name"] = "Golden Spellthread",
            ["category"] = "Enhancement",
            ["texture"] = "Interface/ICONS/spell_holy_restoration",
            ["phase"] = 1
        },
        {
            ["id"] = 31451,
            ["name"] = "Whitemend Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_cloth_07",
            ["phase"] = 1
        },
        {
            ["id"] = 31452,
            ["name"] = "Spellstrike Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_cloth_14",
            ["phase"] = 1
        },
        {
            ["id"] = 31453,
            ["name"] = "Battlecast Pants",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_cloth_12",
            ["phase"] = 1
        },
        {
            ["id"] = 31454,
            ["name"] = "Whitemend Hood",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_53",
            ["phase"] = 1
        },
        {
            ["id"] = 31455,
            ["name"] = "Spellstrike Hood",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_27",
            ["phase"] = 1
        },
        {
            ["id"] = 31456,
            ["name"] = "Battlecast Hood",
            ["category"] = "Head",
            ["texture"] = "Interface/ICONS/inv_helmet_70",
            ["phase"] = 1
        },
        {
            ["id"] = 36315,
            ["name"] = "Belt of Blasting",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_13",
            ["phase"] = 1
        },
        {
            ["id"] = 36316,
            ["name"] = "Belt of the Long Road",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_05",
            ["phase"] = 1
        },
        {
            ["id"] = 36317,
            ["name"] = "Boots of Blasting",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_cloth_05",
            ["phase"] = 1
        },
        {
            ["id"] = 36318,
            ["name"] = "Boots of the Long Road",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_cloth_14",
            ["phase"] = 1
        },
        {
            ["id"] = 40020,
            ["name"] = "Soulguard Slippers",
            ["category"] = "Feet",
            ["texture"] = "Interface/ICONS/inv_boots_cloth_10",
            ["phase"] = 1
        },
        {
            ["id"] = 40021,
            ["name"] = "Soulguard Bracers",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_09",
            ["phase"] = 1
        },
        {
            ["id"] = 40023,
            ["name"] = "Soulguard Leggings",
            ["category"] = "Legs",
            ["texture"] = "Interface/ICONS/inv_pants_cloth_09",
            ["phase"] = 1
        },
        {
            ["id"] = 40024,
            ["name"] = "Soulguard Girdle",
            ["category"] = "Waist",
            ["texture"] = "Interface/ICONS/inv_belt_07",
            ["phase"] = 1
        },
        {
            ["id"] = 40060,
            ["name"] = "Night's End",
            ["category"] = "Back",
            ["texture"] = "Interface/ICONS/inv_misc_cape_20",
            ["phase"] = 1
        },
        {
            ["id"] = 41205,
            ["name"] = "Bracers of Nimble Thought",
            ["category"] = "Wrist",
            ["texture"] = "Interface/ICONS/inv_bracer_13",
            ["phase"] = 1
        },
        {
            ["id"] = 41206,
            ["name"] = "Mantle of Nimble Thought",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_02",
            ["phase"] = 1
        },
        {
            ["id"] = 41207,
            ["name"] = "Swiftheal Wraps",
            ["category"] = "Hands",
            ["texture"] = "Interface/ICONS/inv_bracer_13",
            ["phase"] = 1
        },
        {
            ["id"] = 41208,
            ["name"] = "Swiftheal Mantle",
            ["category"] = "Shoulder",
            ["texture"] = "Interface/ICONS/inv_shoulder_25",
            ["phase"] = 1
        },
        {
            ["id"] = 50194,
            ["name"] = "Mycah's Botanical Bag",
            ["category"] = "Bag",
            ["texture"] = "Interface/ICONS/inv_misc_bag_27",
            ["phase"] = 1
        },
    },
}

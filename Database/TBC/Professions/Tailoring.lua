local _, TFG = ...

-- ==========================================================================
-- SKILL TEMPLATE
-- ==========================================================================
--[[
{
    id = 42736,
    name = "Flask of Chromatic Wonder",
    category = "Flasks",
    texture = "Interface/ICONS/inv_potion_48",
    source = {
        type = "Item", -- Trainer, Item, Quest, or Discovery
        id = 33209,
            cost = 10, -- Only needed for recipes from trainers or items
        location = "The Violet Eye - Honored", -- Optional
    },
    product = { itemId = 2454, quantity = 1 },
    materials = {
        { name = "Dreaming Glory", itemId = 22786, quantity = 7 },
        { name = "Netherbloom", itemId = 22791, quantity = 3 },
        { name = "Fel Lotus", itemId = 22794, quantity = 1 },
        { name = "Imbued Vial", itemId = 18256, quantity = 1 },
    },
    levels = { 360, 360, 370, 380 },
    phase = 1,
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
            id = 3908,
            name = "Tailoring", -- Apprentice
            category = "Profession Training",
            texture = "Interface/ICONS/trade_tailoring",
            source = {
                type = "Trainer",
                cost = 10,
            },
            phase = 1
        },
        {
            id = 2963,
            name = "Bolt of Linen Cloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_linen_02",
            source = {
                type = "Trainer",
            },
            product = { itemId = 2996, },
            materials = {
                { name = "Linen Cloth", itemId = 2589, quantity = 2 },
            },
            levels = { 1, 25, 37, 50 },
            phase = 1
        },
        {
            id = 2387,
            name = "Linen Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_14",
            source = {
                type = "Trainer",
            },
            product = { itemId = 2570, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 1, 35, 47, 60 },
            phase = 1,
        },
        {
            id = 3915,
            name = "Brown Linen Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_02",
            source = {
                type = "Trainer",
            },
            product = { itemId = 4344, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 1, 35, 47, 60 },
            phase = 1
        },
        {
            id = 12044,
            name = "Simple Linen Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_11",
            source = {
                type = "Trainer",
            },
            product = { itemId = 10045, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 1, 35, 47, 60 },
            phase = 1
        },
        {
            id = 2393,
            name = "White Linen Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_white_01",
            source = {
                type = "Trainer",
                cost = 25,
            },
            product = { itemId = 2576, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, },
                { name = "Coarse Thread", itemId = 2320, },
                { name = "Bleach", itemId = 2324, },
            },
            levels = { 1, 35, 47, 60 },
            phase = 1
        },
    },
    [10] = {
        {
            id = 2385,
            name = "Brown Linen Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_05",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 2568, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 10, 45, 57, 70 },
            phase = 1
        },
    },
    [15] = {
        {
            id = 8776,
            name = "Linen Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_05",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 7026, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 15, 50, 67, 85 },
            phase = 1
        },
    },
    [20] = {
        {
            id = 12045,
            name = "Simple Linen Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 10046, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 2 },
                { name = "Light Leather", itemId = 2318, },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 20, 50, 67, 85 },
            phase = 1
        },
    },
    [30] = {
        {
            id = 3914,
            name = "Brown Linen Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_06",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 4343, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 2 },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 30, 55, 72, 90 },
            phase = 1
        },
        {
            id = 7623,
            name = "Brown Linen Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_21",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 6238, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 30, 55, 72, 90 },
            phase = 1
        },
        {
            id = 7624,
            name = "White Linen Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_04",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 6241, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Coarse Thread", itemId = 2320, },
                { name = "Bleach", itemId = 2324, },
            },
            levels = { 30, 55, 72, 90 },
            phase = 1
        },
    },
    [35] = {
        {
            id = 3840,
            name = "Heavy Linen Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_05",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { itemId = 4307, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 2 },
                { name = "Coarse Thread", itemId = 2320, },
            },
            levels = { 35, 60, 77, 95 },
            phase = 1
        },
    },
    [40] = {
        {
            id = 2392,
            name = "Red Linen Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_red_01",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 2575, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 2 },
                { name = "Coarse Thread", itemId = 2320, },
                { name = "Red Dye", itemId = 2604, },
            },
            levels = { 40, 65, 82, 100 },
            phase = 1
        },
        {
            id = 2394,
            name = "Blue Linen Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_blue_01",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 2577, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 2 },
                { name = "Coarse Thread", itemId = 2320, },
                { name = "Blue Dye", itemId = 6260, },
            },
            levels = { 40, 65, 82, 100 },
            phase = 1
        },
        {
            id = 8465,
            name = "Simple Dress",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_12",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { itemId = 6786, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 2 },
                { name = "Coarse Thread", itemId = 2320, },
                { name = "Blue Dye", itemId = 6260, },
                { name = "Bleach", itemId = 2324, },
            },
            levels = { 40, 65, 82, 100 },
            phase = 1
        },
        {
            id = 2389,
            name = "Red Linen Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_18",
            source = {
                type = "Item",
                id = 2598,
                location = "World Drop",
            },
            product = { itemId = 2572, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Coarse Thread", itemId = 2320, quantity = 2 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
            },
            levels = { 40, 65, 82, 100 },
            phase = 1,
        },
    },
    [45] = {
        {
            id = 3755,
            name = "Linen Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_01",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { itemId = 4238, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Coarse Thread", itemId = 2320, quantity = 3 },
            },
            levels = { 45, 70, 87, 105 },
            phase = 1
        },
    },
    [50] = {
        {
            id = 3909,
            name = "Tailoring", -- Journeyman
            category = "Profession Training",
            texture = "Interface/ICONS/trade_tailoring",
            source = {
                type = "Trainer",
                cost = 500,
            },
            phase = 1
        },
    },
    [55] = {
        {
            id = 7630,
            name = "Blue Linen Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_37",
            source = {
                type = "Item",
                id = 6270,
                cost = 200,
                location = "Vendor",
            },
            product = { itemId = 6240, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Coarse Thread", itemId = 2320, },
                { name = "Blue Dye", itemId = 6260, },
            },
            levels = { 55, 80, 97, 115 },
            phase = 1
        },
        {
            id = 7629,
            name = "Red Linen Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_40",
            source = {
                type = "Item",
                id = 6271,
                location = "World Drop",
            },
            product = { itemId = 6239, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Coarse Thread", itemId = 2320, },
                { name = "Red Dye", itemId = 2604, },
            },
            levels = { 55, 80, 97, 115 },
            phase = 1
        },
    },
    [60] = {
        {
            id = 2397,
            name = "Reinforced Linen Cape",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_07",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { itemId = 2580, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 2 },
                { name = "Coarse Thread", itemId = 2320, quantity = 3 },
            },
            levels = { 60, 85, 102, 120 },
            phase = 1
        },
        {
            id = 3841,
            name = "Green Linen Bracers",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_12",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { itemId = 4308, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Coarse Thread", itemId = 2320, quantity = 2 },
                { name = "Green Dye", itemId = 2605, },
            },
            levels = { 60, 85, 102, 120 },
            phase = 1
        },
    },
    [65] = {
        {
            id = 2386,
            name = "Linen Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_09",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { itemId = 2569, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Coarse Thread", itemId = 2320, },
                { name = "Light Leather", itemId = 2318, },
            },
            levels = { 65, 90, 107, 125 },
            phase = 1
        },
    },
    [70] = {
        {
            id = 2395,
            name = "Barbaric Linen Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_fur",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { itemId = 2578, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 4 },
                { name = "Light Leather", itemId = 2318, },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 70, 95, 112, 130 },
            phase = 1
        },
        {
            id = 2396,
            name = "Green Linen Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_green_01",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { itemId = 2579, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, },
                { name = "Green Dye", itemId = 2605, },
            },
            levels = { 70, 95, 112, 130 },
            phase = 1
        },
        {
            id = 3842,
            name = "Handstitched Linen Britches",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_07",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { itemId = 4309, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 70, 95, 112, 130 },
            phase = 1
        },
        {
            id = 6686,
            name = "Red Linen Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_02",
            source = {
                type = "Trainer",
            },
            product = { itemId = 5762, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, },
                { name = "Red Dye", itemId = 2604, },
            },
            levels = { 70, 95, 112, 130 },
            phase = 1
        },
        {
            id = 7633,
            name = "Blue Linen Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_23",
            source = {
                type = "Item",
                id = 6272,
                cost = 300,
                location = "Vendor",
            },
            product = { itemId = 6242, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 4 },
                { name = "Coarse Thread", itemId = 2320, quantity = 2 },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
            },
            levels = { 70, 95, 112, 130 },
            phase = 1
        },
    },
    [75] = {
        {
            id = 2964,
            name = "Bolt of Woolen Cloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_wool_03",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { itemId = 2997, },
            materials = {
                { name = "Wool Cloth", itemId = 2592, quantity = 3 },
            },
            levels = { 75, 90, 97, 105 },
            phase = 1
        },
        {
            id = 12046,
            name = "Simple Kilt",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_11",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { itemId = 10047, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 75, 100, 117, 135 },
            phase = 1
        },
        {
            id = 2402,
            name = "Woolen Cape",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_10",
            source = {
                type = "Trainer",
                cost = 250,
            },
            product = { itemId = 2584, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 75, 100, 117, 135 },
            phase = 1
        },
    },
    [80] = {
        {
            id = 3757,
            name = "Woolen Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_10",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { itemId = 4240, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 80, 105, 122, 140 },
            phase = 1
        },
        {
            id = 3845,
            name = "Soft-soled Linen Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_09",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { itemId = 4312, },
            materials = {
                { name = "Bolt of Linen Cloth", itemId = 2996, quantity = 5 },
                { name = "Light Leather", itemId = 2318, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 80, 105, 122, 140 },
            phase = 1
        },
    },
    [85] = {
        {
            id = 2399,
            name = "Green Woolen Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_39",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { itemId = 2582, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Green Dye", itemId = 2605, },
            },
            levels = { 85, 110, 127, 145 },
            phase = 1
        },
        {
            id = 3843,
            name = "Heavy Woolen Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_05",
            source = {
                type = "Trainer",
                cost = 400,
            },
            product = { itemId = 4310, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 85, 110, 127, 145 },
            phase = 1
        },
    },
    [90] = {
        {
            id = 6521,
            name = "Pearl-clasped Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_11",
            source = {
                type = "Trainer",
                cost = 400,
            },
            product = { itemId = 5542, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Small Lustrous Pearl", itemId = 5498, },
            },
            levels = { 90, 115, 132, 150 },
            phase = 1
        },
    },
    [95] = {
        {
            id = 2401,
            name = "Woolen Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_09",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { itemId = 2583, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Light Leather", itemId = 2318, quantity = 2 },
            },
            levels = { 95, 120, 137, 155 },
            phase = 1
        },
        {
            id = 3847,
            name = "Red Woolen Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_09",
            source = {
                type = "Trainer",
            },
            product = { itemId = 4313, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Light Leather", itemId = 2318, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
            },
            levels = { 95, 120, 137, 155 },
            phase = 1
        },
        {
            id = 3758,
            name = "Green Woolen Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_10_green",
            source = {
                type = "Trainer",
            },
            product = { itemId = 4241, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Green Dye", itemId = 2605, },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 95, 120, 137, 155 },
            phase = 1
        },
    },
    [100] = {
        {
            id = 3844,
            name = "Heavy Woolen Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_14",
            source = {
                type = "Trainer",
            },
            product = { itemId = 4311, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Small Lustrous Pearl", itemId = 5498, quantity = 2 },
            },
            levels = { 100, 125, 142, 160 },
            phase = 1
        },
        {
            id = 7639,
            name = "Blue Overalls",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_13",
            source = {
                type = "Trainer",
            },
            product = { itemId = 6263, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
            },
            levels = { 100, 125, 142, 160 },
            phase = 1
        },
        {
            id = 2406,
            name = "Gray Woolen Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_grey_01",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { itemId = 2587, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, },
                { name = "Gray Dye", itemId = 4340, },
            },
            levels = { 100, 110, 120, 130 },
            phase = 1
        },
    },
    [105] = {
        {
            id = 2403,
            name = "Gray Woolen Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_13",
            source = {
                type = "Trainer",
            },
            product = { itemId = 2585, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, quantity = 3 },
                { name = "Gray Dye", itemId = 4340, },
            },
            levels = { 105, 130, 147, 165 },
            phase = 1
        },
    },
    [110] = {
        {
            id = 3848,
            name = "Double-stitched Woolen Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_06",
            source = {
                type = "Trainer",
                cost = 500,
            },
            product = { itemId = 4314, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 110, 135, 152, 170 },
            phase = 1
        },
        {
            id = 3866,
            name = "Stylish Red Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_red_01",
            source = {
                type = "Trainer",
                cost = 250,
            },
            product = { itemId = 4330, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 3 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 110, 135, 152, 170 },
            phase = 1
        },
        {
            id = 8467,
            name = "White Woolen Dress",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_12",
            source = {
                type = "Trainer",
                cost = 250,
            },
            product = { itemId = 6787, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 3 },
                { name = "Bleach", itemId = 2324, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 110, 135, 152, 170 },
            phase = 1
        },
        {
            id = 3850,
            name = "Heavy Woolen Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_01",
            source = {
                type = "Trainer",
                cost = 500,
            },
            product = { itemId = 4316, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 5 },
                { name = "Fine Thread", itemId = 2321, quantity = 4 },
            },
            levels = { 110, 135, 152, 170 },
            phase = 1
        },
    },
    [115] = {
        {
            id = 6688,
            name = "Red Woolen Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_10_red",
            source = {
                type = "Item",
                id = 5772,
                cost = 500,
                location = "Drop, Vendor",
            },
            product = { itemId = 5763, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Red Dye", itemId = 2604, },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 115, 140, 157, 175 },
            phase = 1
        },
        {
            id = 7643,
            name = "Greater Adept's Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_24",
            source = {
                type = "Item",
                id = 6275,
                cost = 800,
                location = "Tailoring Supplies Vendors",
            },
            product = { itemId = 6264, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 5 },
                { name = "Fine Thread", itemId = 2321, quantity = 3 },
                { name = "Red Dye", itemId = 2604, quantity = 3 },
            },
            levels = { 115, 140, 157, 175 },
            phase = 1
        },
    },
    [120] = {
        {
            id = 3849,
            name = "Reinforced Woolen Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_09",
            source = {
                type = "Trainer",
            },
            product = { itemId = 4315, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 6 },
                { name = "Medium Leather", itemId = 2319, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 120, 145, 162, 180 },
            phase = 1
        },
        {
            id = 7892,
            name = "Stylish Blue Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_blue_01",
            source = {
                type = "Trainer",
            },
            product = { itemId = 6384, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
                { name = "Gray Dye", itemId = 4340, },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 120, 145, 162, 180 },
            phase = 1
        },
        {
            id = 7893,
            name = "Stylish Green Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_green_01",
            source = {
                type = "Trainer",
            },
            product = { itemId = 6385, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Green Dye", itemId = 2605, quantity = 2 },
                { name = "Gray Dye", itemId = 4340, },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 120, 145, 162, 180 },
            phase = 1
        },
        {
            id = 12047,
            name = "Colorful Kilt",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_02",
            source = {
                type = "Trainer",
            },
            product = { itemId = 10048, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 5 },
                { name = "Red Dye", itemId = 2604, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 120, 145, 162, 180 },
            phase = 1
        },
    },
    [125] = {
        {
            id = 3910,
            name = "Tailoring", -- Expert
            category = "Profession Training",
            texture = "Interface/ICONS/trade_tailoring",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            phase = 1
        },
        {
            id = 3839,
            name = "Bolt of Silk Cloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_silk_03",
            source = {
                type = "Trainer",
                cost = 500,
            },
            product = { itemId = 4305, },
            materials = {
                { name = "Silk Cloth", itemId = 4306, quantity = 4 },
            },
            levels = { 125, 135, 140, 145 },
            phase = 1
        },
        {
            id = 3855,
            name = "Spidersilk Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Trainer",
                cost = 750,
            },
            product = { itemId = 4320, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 2 },
                { name = "Medium Leather", itemId = 2319, quantity = 4 },
                { name = "Spider's Silk", itemId = 3182, quantity = 4 },
                { name = "Iridescent Pearl", itemId = 5500, quantity = 2 },
            },
            levels = { 125, 150, 167, 185 },
            phase = 1
        },
        {
            id = 3868,
            name = "Phoenix Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_19",
            source = {
                type = "Item",
                id = 4348,
                location = "World Drop",
            },
            product = { itemId = 4331, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Iridescent Pearl", itemId = 5500, },
                { name = "Fine Thread", itemId = 2321, quantity = 4 },
                { name = "Bleach", itemId = 2324, quantity = 2 },
            },
            levels = { 125, 150, 167, 185 },
            phase = 1
        },
        {
            id = 3851,
            name = "Phoenix Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_06",
            source = {
                type = "Item",
                id = 4349,
                location = "World Drop",
            },
            product = { itemId = 4317, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 6 },
                { name = "Iridescent Pearl", itemId = 5500, },
                { name = "Fine Thread", itemId = 2321, quantity = 3 },
            },
            levels = { 125, 150, 167, 185 },
            phase = 1
        },
    },
    [130] = {
        {
            id = 3852,
            name = "Gloves of Meditation",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_05",
            source = {
                type = "Trainer",
                cost = 750,
            },
            product = { itemId = 4318, },
            materials = {
                { name = "Bolt of Woolen Cloth", itemId = 2997, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, quantity = 3 },
                { name = "Elixir of Wisdom", itemId = 3383, },
            },
            levels = { 130, 150, 165, 180 },
            phase = 1
        },
    },
    [135] = {
        {
            id = 6690,
            name = "Lesser Wizard's Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_17",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { itemId = 5766, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Spider's Silk", itemId = 3182, quantity = 2 },
            },
            levels = { 135, 155, 170, 185 },
            phase = 1
        },
        {
            id = 3869,
            name = "Bright Yellow Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_yellow_01",
            source = {
                type = "Item",
                id = 14627,
                cost = 800,
                location = "Danielle Zipstitch, Duskwood",
            },
            product = { itemId = 4332, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, },
                { name = "Yellow Dye", itemId = 4341, },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 135, 145, 150, 155 },
            phase = 1
        },
    },
    [140] = {
        {
            id = 8758,
            name = "Azure Silk Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_08",
            source = {
                type = "Trainer",
                cost = 600,
            },
            product = { itemId = 7046, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 3 },
            },
            levels = { 140, 160, 175, 190 },
            phase = 1
        },
        {
            id = 3856,
            name = "Spider Silk Slippers",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_03",
            source = {
                type = "Item",
                id = 4350,
                location = "World Drop",
            },
            product = { itemId = 4321, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Spider's Silk", itemId = 3182, },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 140, 160, 175, 190 },
            phase = 1
        },
    },
    [145] = {
        {
            id = 3854,
            name = "Azure Silk Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_17",
            source = {
                type = "Trainer",
            },
            product = { itemId = 4319, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Heavy Leather", itemId = 4234, quantity = 2 },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 145, 165, 180, 195 },
            phase = 1
        },
        {
            id = 8780,
            name = "Hands of Darkness",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_22",
            source = {
                type = "Item",
                id = 7092,
                location = "World Drop",
            },
            product = { itemId = 7047, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Heavy Leather", itemId = 4234, quantity = 2 },
                { name = "Shadow Protection Potion", itemId = 4328, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 145, 165, 180, 195 },
            phase = 1
        },
        {
            id = 8760,
            name = "Azure Silk Hood",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_29",
            source = {
                type = "Trainer",
                cost = 600,
            },
            product = { itemId = 7048, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 2 },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 145, 165, 180, 195 },
            phase = 1
        },
    },
    [150] = {
        {
            id = 3813,
            name = "Small Silk Pack",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_07",
            source = {
                type = "Trainer",
                cost = 800,
            },
            product = { itemId = 4245, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Heavy Leather", itemId = 4234, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 3 },
            },
            levels = { 150, 170, 185, 200 },
            phase = 1
        },
        {
            id = 3859,
            name = "Azure Silk Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_37",
            source = {
                type = "Trainer",
                cost = 750,
            },
            product = { itemId = 4324, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Blue Dye", itemId = 6260, quantity = 4 },
            },
            levels = { 150, 170, 185, 200 },
            phase = 1
        },
        {
            id = 6692,
            name = "Robes of Arcana",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_29",
            source = {
                type = "Item",
                id = 5773,
                location = "World Drop",
            },
            product = { itemId = 5770, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Spider's Silk", itemId = 3182, quantity = 2 },
            },
            levels = { 150, 170, 185, 200 },
            phase = 1
        },
        {
            id = 8782,
            name = "Truefaith Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_16",
            source = {
                type = "Item",
                id = 7091,
                location = "World Drop",
            },
            product = { itemId = 7049, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Heavy Leather", itemId = 4234, quantity = 2 },
                { name = "Healing Potion", itemId = 929, quantity = 4 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 150, 170, 185, 200 },
            phase = 1
        },
    },
    [155] = {
        {
            id = 3870,
            name = "Dark Silk Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_black_01",
            source = {
                type = "Item",
                id = 6401,
                cost = 1100,
                location = "Duskwood (A) or Hillsbrad Foothills (H)",
            },
            product = { itemId = 4333, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 2 },
                { name = "Gray Dye", itemId = 4340, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 155, 165, 170, 175 },
            phase = 1
        },
    },
    [160] = {
        {
            id = 8483,
            name = "White Swashbuckler's Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_white_01",
            source = {
                type = "Trainer",
                cost = 500,
            },
            product = { itemId = 6795, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Bleach", itemId = 2324, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 160, 170, 175, 180 },
            phase = 1
        },
        {
            id = 8762,
            name = "Silk Headband",
            category = "Head",
            texture = "Interface/ICONS/inv_misc_bandana_01",
            source = {
                type = "Trainer",
                cost = 750,
            },
            product = { itemId = 7050, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 160, 170, 175, 180 },
            phase = 1
        },
    },
    [165] = {
        {
            id = 3857,
            name = "Enchanter's Cowl",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_31",
            source = {
                type = "Item",
                id = 14630,
                cost = 1000,
                location = "Desolace or Stranglethorn Vale",
            },
            product = { itemId = 4322, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Thick Spider's Silk", itemId = 4291, quantity = 2 },
            },
            levels = { 165, 185, 200, 215 },
            phase = 1
        },
        {
            id = 8784,
            name = "Green Silk Armor",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_06",
            source = {
                type = "Item",
                id = 7090,
                location = "World Drop",
            },
            product = { itemId = 7065, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Green Dye", itemId = 2605, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 165, 185, 200, 215 },
            phase = 1
        },
    },
    [170] = {
        {
            id = 8764,
            name = "Earthen Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_04",
            source = {
                type = "Trainer",
                cost = 900,
            },
            product = { itemId = 7051, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Elemental Earth", itemId = 7067, },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 170, 190, 205, 220 },
            phase = 1
        },
        {
            id = 3871,
            name = "Formal White Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_08",
            source = {
                type = "Trainer",
                cost = 500,
            },
            product = { itemId = 4334, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Bleach", itemId = 2324, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, },
            },
            levels = { 170, 180, 185, 190 },
            phase = 1
        },
        {
            id = 3858,
            name = "Shadow Hood",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_27",
            source = {
                type = "Item",
                id = 4351,
                location = "World Drop",
            },
            product = { itemId = 4323, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Silken Thread", itemId = 4291, },
                { name = "Shadow Oil", itemId = 3824, },
            },
            levels = { 170, 190, 205, 220 },
            phase = 1
        },
    },
    [175] = {
        {
            id = 3865,
            name = "Bolt of Mageweave",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_mageweave_03",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { itemId = 4339, },
            materials = {
                { name = "Mageweave Cloth", itemId = 4338, quantity = 5 },
            },
            levels = { 175, 180, 182, 185 },
            phase = 1
        },
        {
            id = 8766,
            name = "Azure Silk Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_22",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { itemId = 7052, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Elemental Water", itemId = 7070, },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
                { name = "Iron Buckle", itemId = 7071, },
            },
            levels = { 175, 195, 210, 225 },
            phase = 1
        },
        {
            id = 8772,
            name = "Crimson Silk Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_04",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { itemId = 7055, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Iron Buckle", itemId = 7071, },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 175, 195, 210, 225 },
            phase = 1
        },
        {
            id = 8489,
            name = "Red Swashbuckler's Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_red_01",
            source = {
                type = "Trainer",
                cost = 750,
            },
            product = { itemId = 6796, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 175, 185, 190, 195 },
            phase = 1
        },
        {
            id = 8786,
            name = "Azure Silk Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_chest_cloth_14",
            source = {
                type = "Item",
                id = 7089,
                cost = 1350,
                location = "Feralas (A) or Arathi Highlands (H)",
            },
            product = { itemId = 7053, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 3 },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 175, 195, 210, 225 },
            phase = 1
        },
        {
            id = 3860,
            name = "Boots of the Enchanter",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Item",
                id = 4352,
                location = "World Drop",
            },
            product = { itemId = 4325, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Silken Thread", itemId = 4291, },
                { name = "Thick Spider's Silk", itemId = 4291, quantity = 2 },
            },
            levels = { 175, 195, 210, 225 },
            phase = 1
        },
        {
            id = 6693,
            name = "Green Silk Pack",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_07_green",
            source = {
                type = "Item",
                id = 5774,
                location = "World Drop",
            },
            product = { itemId = 5764, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Heavy Leather", itemId = 4234, quantity = 3 },
                { name = "Fine Thread", itemId = 2321, quantity = 3 },
                { name = "Green Dye", itemId = 2605, },
            },
            levels = { 175, 195, 210, 225 },
            phase = 1
        },
    },
    [180] = {
        {
            id = 8774,
            name = "Green Silken Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_18",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { itemId = 7057, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
            },
            levels = { 180, 200, 215, 230 },
            phase = 1
        },
        {
            id = 3863,
            name = "Spider Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_25",
            source = {
                type = "Item",
                id = 4353,
                location = "World Drop",
            },
            product = { itemId = 4328, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Thick Spider's Silk", itemId = 4337, quantity = 2 },
                { name = "Iron Buckle", itemId = 7071, },
            },
            levels = { 180, 200, 215, 230 },
            phase = 1
        },
        {
            id = 8789,
            name = "Crimson Silk Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_chest_cloth_16",
            source = {
                type = "Item",
                id = 7087,
                cost = 1200,
                location = "Desolace or Stranglethorn Vale",
            },
            product = { itemId = 7056, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Fire Oil", itemId = 6371, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 180, 200, 215, 230 },
            phase = 1
        },
    },
    [185] = {
        {
            id = 3861,
            name = "Long Silken Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_02",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { itemId = 4326, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Mana Potion", itemId = 2455, },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 185, 205, 220, 235 },
            phase = 1
        },
        {
            id = 8791,
            name = "Crimson Silk Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_04",
            source = {
                type = "Trainer",
                cost = 2500,
            },
            product = { itemId = 7058, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Fine Thread", itemId = 2321, quantity = 2 },
            },
            levels = { 185, 205, 215, 225 },
            phase = 1
        },
        {
            id = 6695,
            name = "Black Silk Pack",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_07_black",
            source = {
                type = "Item",
                id = 5775,
                location = "World Drop",
            },
            product = { itemId = 5765, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Black Dye", itemId = 2325, },
                { name = "Fine Thread", itemId = 2321, quantity = 4 },
            },
            levels = { 185, 205, 220, 235 },
            phase = 1
        },
        {
            id = 3872,
            name = "Rich Purple Silk Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_16",
            source = {
                type = "Item",
                id = 4354,
                location = "World Drop",
            },
            product = { itemId = 4335, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Purple Dye", itemId = 4342, },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 185, 195, 200, 205 },
            phase = 1
        },
    },
    [190] = {
        {
            id = 8770,
            name = "Robe of Power",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_02",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { itemId = 7054, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 2 },
                { name = "Elemental Earth", itemId = 7067, quantity = 2 },
                { name = "Elemental Water", itemId = 7070, quantity = 2 },
                { name = "Elemental Fire", itemId = 7068, quantity = 2 },
                { name = "Elemental Air", itemId = 7069, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
            },
            levels = { 190, 210, 225, 240 },
            phase = 1
        },
        {
            id = 8793,
            name = "Crimson Silk Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_23",
            source = {
                type = "Item",
                id = 7084,
                location = "World Drop",
            },
            product = { itemId = 7059, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Fire Oil", itemId = 6371, quantity = 2 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
            },
            levels = { 190, 210, 225, 240 },
            phase = 1
        },
        {
            id = 8795,
            name = "Azure Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_27",
            source = {
                type = "Item",
                id = 7085,
                location = "World Drop",
            },
            product = { itemId = 7060, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 6 },
                { name = "Naga Scale", itemId = 7072, quantity = 2 },
                { name = "Blue Dye", itemId = 6260, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
            },
            levels = { 190, 210, 225, 240 },
            phase = 1
        },
        {
            id = 21945,
            name = "Green Holiday Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_green_01",
            source = {
                type = "Item",
                id = 17724,
                location = "Winter Veil Quests",
            },
            product = { itemId = 17723, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Green Dye", itemId = 2605, quantity = 4 },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 190, 200, 205, 210 },
            phase = 1
        },
    },
    [195] = {
        {
            id = 8799,
            name = "Crimson Silk Pantaloons",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_06",
            source = {
                type = "Trainer",
                cost = 3000,
            },
            product = { itemId = 7062, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 4 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
            },
            levels = { 195, 215, 225, 235 },
            phase = 1
        },
        {
            id = 8797,
            name = "Earthen Silk Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_24",
            source = {
                type = "Item",
                id = 7086,
                location = "World Drop",
            },
            product = { itemId = 7061, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Elemental Earth", itemId = 7067, quantity = 4 },
                { name = "Heavy Leather", itemId = 4234, quantity = 4 },
                { name = "Iron Buckle", itemId = 7071, },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
            },
            levels = { 195, 215, 230, 245 },
            phase = 1
        },
    },
    [200] = {
        {
            id = 12180,
            name = "Tailoring", -- Artisan
            category = "Profession Training",
            texture = "Interface/ICONS/trade_tailoring",
            source = {
                type = "Trainer",
                cost = 50000,
            },
            phase = 1
        },
        {
            id = 3862,
            name = "Icy Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_04",
            source = {
                type = "Item",
                id = 4355,
                cost = 1350,
                location = "Hillsbrad Foothills (A) or Dustwallow Marsh (H)",
            },
            product = { itemId = 4327, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
                { name = "Frost Oil", itemId = 3829, },
                { name = "Thick Spider's Silk", itemId = 4337, quantity = 2 },
            },
            levels = { 200, 220, 235, 250 },
            phase = 1
        },
        {
            id = 3864,
            name = "Star Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_06",
            source = {
                type = "Item",
                id = 4356,
                location = "World Drop",
            },
            product = { itemId = 4329, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Heavy Leather", itemId = 4234, quantity = 4 },
                { name = "Citrine", itemId = 3864, },
                { name = "Iron Buckle", itemId = 7071, },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 200, 220, 235, 250 },
            phase = 1
        },
        {
            id = 3873,
            name = "Black Swashbuckler's Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_black_01",
            source = {
                type = "Item",
                id = 10728,
                cost = 1500,
                location = "Narkk, Stranglethorn Vale",
            },
            product = { itemId = 4336, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 5 },
                { name = "Black Dye", itemId = 2325, },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 200, 210, 215, 220 },
            phase = 1
        },
    },
    [205] = {
        {
            id = 12048,
            name = "Black Mageweave Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_leather_03",
            source = {
                type = "Trainer",
                cost = 4000,
            },
            product = { itemId = 9998, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, quantity = 3 },
            },
            levels = { 205, 220, 235, 250 },
            phase = 1
        },
        {
            id = 12049,
            name = "Black Mageweave Leggings",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_09",
            source = {
                type = "Trainer",
                cost = 4000,
            },
            product = { itemId = 9999, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 2 },
                { name = "Silken Thread", itemId = 4291, quantity = 3 },
            },
            levels = { 205, 220, 235, 250 },
            phase = 1
        },
        {
            id = 8802,
            name = "Crimson Silk Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_25",
            source = {
                type = "Item",
                id = 7088,
                cost = 4500,
                location = "Vizzklick, Gadgetzan, Tanaris",
            },
            product = { itemId = 7063, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 8 },
                { name = "Elemental Fire", itemId = 7068, quantity = 4 },
                { name = "Mana Potion", itemId = 3827, quantity = 2 },
                { name = "Red Dye", itemId = 2604, quantity = 4 },
                { name = "Silken Thread", itemId = 4291, },
            },
            levels = { 205, 220, 235, 250 },
            phase = 1
        },
    },
    [210] = {
        {
            id = 8804,
            name = "Crimson Silk Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_05",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { itemId = 7064, },
            materials = {
                { name = "Bolt of Silk Cloth", itemId = 4305, quantity = 6 },
                { name = "Elemental Fire", itemId = 7068, quantity = 2 },
                { name = "Fire Oil", itemId = 6371, quantity = 2 },
                { name = "Thick Leather", itemId = 4304, quantity = 2 },
                { name = "Red Dye", itemId = 2604, quantity = 4 },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
            },
            levels = { 210, 225, 240, 255 },
            phase = 1
        },
        {
            id = 12050,
            name = "Black Mageweave Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_13",
            source = {
                type = "Trainer",
                cost = 4000,
            },
            product = { itemId = 10001, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 210, 225, 240, 255 },
            phase = 1
        },
        {
            id = 12052,
            name = "Shadoweave Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_11",
            source = {
                type = "Trainer",
                cost = 4500,
            },
            product = { itemId = 10002, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Shadow Silk", itemId = 10285, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 210, 225, 240, 255 },
            phase = 1
        },
    },
    [215] = {
        {
            id = 12053,
            name = "Black Mageweave Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_05",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { itemId = 10003, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 215, 230, 245, 260 },
            phase = 1
        },
        {
            id = 12055,
            name = "Shadoweave Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_38",
            source = {
                type = "Trainer",
                cost = 4950,
            },
            product = { itemId = 10004, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Shadow Silk", itemId = 10285, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 215, 230, 245, 260 },
            phase = 1
        },
        {
            id = 12061,
            name = "Orange Mageweave Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_orange_01",
            source = {
                type = "Trainer",
                cost = 2500,
            },
            product = { itemId = 10056, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, },
                { name = "Orange Dye", itemId = 6261, },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 215, 220, 225, 230 },
            phase = 1
        },
        {
            id = 12056,
            name = "Red Mageweave Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_09",
            source = {
                type = "Item",
                id = 10300,
                location = "World Drop",
            },
            product = { itemId = 10007, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 215, 230, 245, 260 },
            phase = 1
        },
        {
            id = 12060,
            name = "Red Mageweave Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_06",
            source = {
                type = "Item",
                id = 10302,
                location = "Drop",
            },
            product = { itemId = 10009, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 215, 230, 245, 260 },
            phase = 1
        },
        {
            id = 12059,
            name = "White Bandit Mask",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_11",
            source = {
                type = "Item",
                id = 10301,
                location = "World Drop",
            },
            product = { itemId = 10008, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, },
                { name = "Bleach", itemId = 2324, },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 215, 220, 225, 230 },
            phase = 1
        },
    },
    [220] = {
        {
            id = 12064,
            name = "Orange Martial Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_orange_01",
            source = {
                type = "Item",
                id = 10311,
                cost = 3000,
                location = "Darnassus (A) or Thunder Bluff (H)",
            },
            product = { itemId = 10052, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 2 },
                { name = "Orange Dye", itemId = 6261, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 220, 225, 230, 235 },
            phase = 1
        },
    },
    [225] = {
        {
            id = 12065,
            name = "Mageweave Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_10_black",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { itemId = 10050, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Silken Thread", itemId = 4291, quantity = 2 },
            },
            levels = { 225, 240, 255, 270 },
            phase = 1
        },
        {
            id = 12069,
            name = "Cindercloth Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_25",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { itemId = 10042, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 5 },
                { name = "Heart of Fire", itemId = 7077, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 225, 240, 255, 270 },
            phase = 1
        },
        {
            id = 12071,
            name = "Shadoweave Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_09",
            source = {
                type = "Trainer",
                cost = 5400,
            },
            product = { itemId = 10023, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 5 },
                { name = "Shadow Silk", itemId = 10285, quantity = 5 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 225, 240, 255, 270 },
            phase = 1
        },
        {
            id = 12067,
            name = "Dreamweave Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_18",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { itemId = 10019, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Wildvine", itemId = 8153, quantity = 4 },
                { name = "Heart of the Wild", itemId = 10286, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 225, 240, 255, 270 },
            phase = 1
        },
        {
            id = 12070,
            name = "Dreamweave Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_42",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { itemId = 10021, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 6 },
                { name = "Wildvine", itemId = 8153, quantity = 6 },
                { name = "Heart of the Wild", itemId = 10286, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 225, 240, 255, 270 },
            phase = 1
        },
        {
            id = 12066,
            name = "Red Mageweave Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_19",
            source = {
                type = "Item",
                id = 10312,
                location = "World Drop",
            },
            product = { itemId = 10018, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 225, 240, 255, 270 },
            phase = 1
        },
        {
            id = 27658,
            name = "Enchanted Mageweave Pouch",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_enchantedmageweave",
            source = {
                type = "Item",
                id = 22307,
                cost = 6000,
                location = "Enchanting Supplies Vendors",
            },
            product = { itemId = 22246, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Vision Dust", itemId = 11137, quantity = 4 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 225, 240, 255, 270 },
            phase = 1
        },
    },
    [230] = {
        {
            id = 12072,
            name = "Black Mageweave Headband",
            category = "Head",
            texture = "Interface/ICONS/inv_misc_bandana_01",
            source = {
                type = "Trainer",
                cost = 6000,
            },
            product = { itemId = 10024, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 230, 245, 260, 275 },
            phase = 1
        },
        {
            id = 12073,
            name = "Black Mageweave Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Trainer",
                cost = 6000,
            },
            product = { itemId = 10026, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
                { name = "Thick Leather", itemId = 4304, quantity = 2 },
            },
            levels = { 230, 245, 260, 275 },
            phase = 1
        },
        {
            id = 12074,
            name = "Black Mageweave Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_25",
            source = {
                type = "Trainer",
                cost = 6000,
            },
            product = { itemId = 10027, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 230, 245, 260, 275 },
            phase = 1
        },
        {
            id = 12075,
            name = "Lavender Mageweave Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_purple_01",
            source = {
                type = "Item",
                id = 10314,
                cost = 4000,
                location = "Ironforge (A) or Orgrimmar (H)",
            },
            product = { itemId = 10054, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 2 },
                { name = "Purple Dye", itemId = 4342, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 230, 235, 240, 245 },
            phase = 1
        },
    },
    [235] = {
        {
            id = 12076,
            name = "Shadoweave Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_25",
            source = {
                type = "Trainer",
                cost = 5850,
            },
            product = { itemId = 10028, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 5 },
                { name = "Shadow Silk", itemId = 10285, quantity = 4 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 235, 250, 265, 280 },
            phase = 1
        },
        {
            id = 12079,
            name = "Red Mageweave Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_10_red",
            source = {
                type = "Trainer",
                cost = 6500,
            },
            product = { itemId = 10051, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 235, 250, 265, 280 },
            phase = 1
        },
        {
            id = 12077,
            name = "Simple Black Dress",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_21",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { itemId = 10053, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Black Dye", itemId = 2325, },
                { name = "Heavy Silken Thread", itemId = 8343, },
                { name = "Bleach", itemId = 2324, },
            },
            levels = { 235, 240, 245, 250 },
            phase = 1
        },
        {
            id = 12080,
            name = "Pink Mageweave Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_red_01",
            source = {
                type = "Item",
                id = 10317,
                cost = 4000,
                location = "Ironforge (A) or Orgrimmar (H)",
            },
            product = { itemId = 10055, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Pink Dye", itemId = 10290, },
                { name = "Heavy Silken Thread", itemId = 8343, },
            },
            levels = { 235, 240, 245, 250 },
            phase = 1
        },
        {
            id = 12078,
            name = "Red Mageweave Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_23",
            source = {
                type = "Item",
                id = 10315,
                location = "World Drop",
            },
            product = { itemId = 10029, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
            },
            levels = { 235, 250, 265, 280 },
            phase = 1
        },
    },
    [240] = {
        {
            id = 12082,
            name = "Shadoweave Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Trainer",
                cost = 6300,
            },
            product = { itemId = 10031, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 6 },
                { name = "Shadow Silk", itemId = 10285, quantity = 6 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
                { name = "Thick Leather", itemId = 4304, quantity = 2 },
            },
            levels = { 240, 255, 270, 285 },
            phase = 1
        },
        {
            id = 12085,
            name = "Tuxedo Shirt",
            category = "Shirt",
            texture = "Interface/ICONS/inv_shirt_08",
            source = {
                type = "Item",
                id = 10321,
                cost = 4275,
                location = "Ironforge (A) or Undercity (H)",
            },
            product = { itemId = 10034, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 240, 245, 250, 255 },
            phase = 1
        },
        {
            id = 12081,
            name = "Admiral's Hat",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_29",
            source = {
                type = "Item",
                id = 10318,
                cost = 7000,
                location = "Cowardly Crosby, Stranglethorn Vale",
            },
            product = { itemId = 10030, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 3 },
                { name = "Long Elegant Feather", itemId = 4589, quantity = 6 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 240, 255, 270, 285 },
            phase = 1
        },
        {
            id = 12084,
            name = "Red Mageweave Headband",
            category = "Head",
            texture = "Interface/ICONS/inv_misc_bandana_03",
            source = {
                type = "Item",
                id = 10320,
                location = "World Drop",
            },
            product = { itemId = 10033, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 240, 255, 270, 285 },
            phase = 1
        },
    },
    [245] = {
        {
            id = 12088,
            name = "Cindercloth Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Trainer",
                cost = 7500,
            },
            product = { itemId = 10044, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 5 },
                { name = "Heart of Fire", itemId = 7077, },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
                { name = "Thick Leather", itemId = 4304, quantity = 2 },
            },
            levels = { 245, 260, 275, 290 },
            phase = 1
        },
        {
            id = 12089,
            name = "Tuxedo Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_01",
            source = {
                type = "Item",
                id = 10323,
                cost = 4275,
                location = "Ironforge (A) or Undercity (H)",
            },
            product = { itemId = 10035, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
            },
            levels = { 245, 250, 255, 260 },
            phase = 1
        },
        {
            id = 50647,
            name = "Haliscan Pantaloons",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_11",
            source = {
                type = "Item",
                id = 38328,
                cost = 4050,
                location = "Hauty Modiste, Steamwheedle Port, Tanaris",
            },
            product = { itemId = 38278, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
                { name = "Black Dye", itemId = 2325, quantity = 3 },
            },
            levels = { 245, 250, 255, 260 },
            phase = 1
        },
        {
            id = 12086,
            name = "Shadoweave Mask",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_27",
            source = {
                type = "Item",
                id = 10463,
                location = "The Undermarket quest, Searing Gorge",
            },
            product = { itemId = 10025, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 2 },
                { name = "Shadow Silk", itemId = 10285, quantity = 8 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 2 },
            },
            levels = { 245, 260, 275, 290 },
            phase = 1
        },
    },
    [250] = {
        {
            id = 18401,
            name = "Bolt of Runecloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_purplefire_02",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 14048, },
            materials = {
                { name = "Runecloth", itemId = 14047, quantity = 5 },
            },
            levels = { 250, 255, 257, 260 },
            phase = 1
        },
        {
            id = 12092,
            name = "Dreamweave Circlet",
            category = "Head",
            texture = "Interface/ICONS/inv_crown_01",
            source = {
                type = "Trainer",
                cost = 7500,
            },
            product = { itemId = 10041, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 8 },
                { name = "Wildvine", itemId = 8153, quantity = 4 },
                { name = "Heart of the Wild", itemId = 10286, quantity = 2 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
                { name = "Truesilver Bar", itemId = 6037, },
                { name = "Jade", itemId = 1529, },
            },
            levels = { 250, 265, 280, 295 },
            phase = 1
        },
        {
            id = 18560,
            name = "Mooncloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_moonrag_01",
            source = {
                type = "Item",
                id = 14526,
                cost = 20000,
                location = "Qia, Everlook, Winterspring"
            },
            product = { itemId = 14342, },
            materials = {
                { name = "Felcloth", itemId = 14256, quantity = 2 },
            },
            levels = { 250, 290, 305, 320 },
            phase = 1
        },
        {
            id = 12093,
            name = "Tuxedo Jacket",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_black_01",
            source = {
                type = "Item",
                id = 10326,
                cost = 4750,
                location = "Ironforge (A) or Undercity (H)",
            },
            product = { itemId = 10036, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 5 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
            },
            levels = { 250, 265, 280, 295 },
            phase = 1
        },
        {
            id = 26403,
            name = "Festival Dress",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_56",
            source = {
                type = "Item",
                id = 21722,
                location = "Winter Veil Quest",
            },
            product = { itemId = 21154, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Firebloom", itemId = 4625, quantity = 2 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 250, 265, 280, 295 },
            phase = 1
        },
        {
            id = 26407,
            name = "Festive Red Pant Suit",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_55",
            source = {
                type = "Item",
                id = 21723,
                location = "Winter Veil Quest",
            },
            product = { itemId = 21542, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Firebloom", itemId = 4625, quantity = 2 },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 250, 265, 280, 295 },
            phase = 1
        },
        {
            id = 50644,
            name = "Haliscan Jacket",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_black_01",
            source = {
                type = "Item",
                id = 38327,
                cost = 4500,
                location = "Hauty Modiste, Steamwheedle Port, Tanaris",
            },
            product = { itemId = 38277, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 5 },
                { name = "Black Dye", itemId = 2325, quantity = 2 },
                { name = "Red Dye", itemId = 2604, },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
            },
            levels = { 250, 265, 280, 295 },
            phase = 1
        },
        {
            id = 49677,
            name = "Dress Shoes",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Item",
                id = 37915,
                cost = 4500,
                location = "Hauty Modiste, Steamwheedle Port, Tanaris",
            },
            product = { itemId = 6836, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 4 },
                { name = "Thick Leather", itemId = 4304, quantity = 2 },
            },
            levels = { 250, 255, 270, 285 },
            phase = 1
        },
        {
            id = 12091,
            name = "White Wedding Dress",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_04",
            source = {
                type = "Item",
                id = 10325,
                cost = 10000,
                location = "Stormwind (A) or Thunder Bluff (H)",
            },
            product = { itemId = 10040, },
            materials = {
                { name = "Bolt of Mageweave", itemId = 4339, quantity = 5 },
                { name = "Heavy Silken Thread", itemId = 8343, quantity = 3 },
                { name = "Bleach", itemId = 2324, },
            },
            levels = { 250, 255, 260, 265 },
            phase = 1
        },
        {
            id = 44950,
            name = "Green Winter Clothes",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_christmas01",
            source = {
                type = "Item",
                id = 34261,
                cost = 5000,
                location = "Penney Copperpinch, Orgrimmar",
            },
            product = { itemId = 34087, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Bolt of Woolen Cloth", itemId = 2997, },
                { name = "Green Dye", itemId = 2605, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 250, 250, 250, 250 },
            phase = 1
        },
        {
            id = 44958,
            name = "Red Winter Clothes",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_christmas02",
            source = {
                type = "Item",
                id = 34319,
                cost = 5000,
                location = "Wulmort Jinglepocket, Ironforge",
            },
            product = { itemId = 34085, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Bolt of Woolen Cloth", itemId = 2997, },
                { name = "Red Dye", itemId = 2604, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 250, 250, 250, 250 },
            phase = 1
        },
    },
    [255] = {
        {
            id = 18402,
            name = "Runecloth Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_15",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 13856, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 3 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 255, 270, 285, 300 },
            phase = 1
        },
        {
            id = 18403,
            name = "Frostweave Tunic",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_08",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 13869, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Globe of Water", itemId = 7079, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 255, 270, 285, 300 },
            phase = 1
        },
        {
            id = 18404,
            name = "Frostweave Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_03",
            source = {
                type = "Item",
                id = 14467,
                location = "World Drop",
            },
            product = { itemId = 13868, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Globe of Water", itemId = 7079, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 255, 270, 285, 300 },
            phase = 1
        },
    },
    [260] = {
        {
            id = 18406,
            name = "Runecloth Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_04",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 13858, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Ironweb Spider Silk", itemId = 14227, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 260, 275, 290, 305 },
            phase = 1
        },
        {
            id = 18407,
            name = "Runecloth Tunic",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_04",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 13857, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Ironweb Spider Silk", itemId = 14227, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 260, 275, 290, 305 },
            phase = 1
        },
        {
            id = 18405,
            name = "Runecloth Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_19",
            source = {
                type = "Item",
                id = 14468,
                cost = 12000,
                location = "Qia, Everlook, Winterspring",
            },
            product = { itemId = 14046, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Rugged Leather", itemId = 8170, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 260, 275, 290, 305 },
            phase = 1
        },
        {
            id = 26085,
            name = "Soul Pouch",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_soulbag",
            source = {
                type = "Item",
                id = 21358,
                cost = 10800,
                location = "Vizzklick, Gadgetzan, Tanaris",
            },
            product = { itemId = 21340, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Rugged Leather", itemId = 8170, quantity = 4 },
                { name = "Ichor of Undeath", itemId = 7972, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 260, 275, 290, 305 },
            phase = 1
        },
        {
            id = 18408,
            name = "Cindercloth Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_07",
            source = {
                type = "Item",
                id = 14042,
                location = "Dropped by Twilight Fire Guards in Searing Gorge",
            },
            product = { itemId = 14042, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Heart of Fire", itemId = 7077, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 260, 275, 290, 305 },
            phase = 1
        },
    },
    [265] = {
        {
            id = 18410,
            name = "Ghostweave Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_16",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 14143, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 3 },
                { name = "Ghost Dye", itemId = 9210, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 265, 280, 295, 310 },
            phase = 1
        },
        {
            id = 18409,
            name = "Runecloth Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_10",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 13860, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 265, 280, 295, 310 },
            phase = 1
        },
        {
            id = 18411,
            name = "Frostweave Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_05",
            source = {
                type = "Item",
                id = 14474,
                location = "World Drop",
            },
            product = { itemId = 13870, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 3 },
                { name = "Essence of Water", itemId = 7080, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 265, 280, 295, 310 },
            phase = 1
        },
    },
    [270] = {
        {
            id = 18415,
            name = "Brightcloth Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_21",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 14101, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Gold Bar", itemId = 3577, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 270, 285, 300, 315 },
            phase = 1
        },
        {
            id = 18414,
            name = "Brightcloth Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_26",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 14100, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Gold Bar", itemId = 3577, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 270, 285, 300, 315 },
            phase = 1
        },
        {
            id = 18413,
            name = "Ghostweave Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_05",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { itemId = 14142, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Ghost Dye", itemId = 9210, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 270, 285, 300, 315 },
            phase = 1
        },
        {
            id = 18412,
            name = "Cindercloth Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_05",
            source = {
                type = "Item",
                id = 14476,
                location = "Dropped by Twilight Fire Guards in Searing Gorge",
            },
            product = { itemId = 14043, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Heart of Fire", itemId = 7077, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 270, 285, 300, 315 },
            phase = 1
        },
    },
    [275] = {
        {
            id = 26790,
            name = "Tailoring", -- Master
            category = "Profession Training",
            texture = "Interface/ICONS/trade_tailoring",
            source = {
                type = "Trainer",
                cost = 100000,
            },
            phase = 1
        },
        {
            id = 18420,
            name = "Brightcloth Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_11",
            source = {
                type = "Trainer",
                cost = 12500,
            },
            product = { itemId = 14103, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Gold Bar", itemId = 3577, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
        {
            id = 18416,
            name = "Ghostweave Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_08",
            source = {
                type = "Trainer",
                cost = 12500,
            },
            product = { itemId = 14141, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Ghost Dye", itemId = 9210, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
        {
            id = 18417,
            name = "Runecloth Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_25",
            source = {
                type = "Trainer",
                cost = 12500,
            },
            product = { itemId = 13863, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Rugged Leather", itemId = 8170, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
        {
            id = 18421,
            name = "Wizardweave Leggings",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_09",
            source = {
                type = "Trainer",
                cost = 12500,
            },
            product = { itemId = 14132, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Dream Dust", itemId = 11176, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
        {
            id = 18418,
            name = "Cindercloth Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_18",
            source = {
                type = "Item",
                id = 14482,
                location = "Thaurissan Firewalker in Burning Steppes",
            },
            product = { itemId = 14044, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Essence of Fire", itemId = 7078, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
        {
            id = 18419,
            name = "Felcloth Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_06",
            source = {
                type = "Item",
                id = 14483,
                cost = 16000,
                location = "Lorelae Wintersong, Moonglade",
            },
            product = { itemId = 14107, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Felcloth", itemId = 14256, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
        {
            id = 18422,
            name = "Cloak of Fire",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_18",
            source = {
                type = "Item",
                id = 14486,
                location = "Overmaster Pyron near Blackrock Depths entrance"
            },
            product = { itemId = 14134, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Essence of Fire", itemId = 7078, quantity = 4 },
                { name = "Heart of Fire", itemId = 7077, quantity = 4 },
                { name = "Elemental Fire", itemId = 7068, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
        {
            id = 27659,
            name = "Enchanted Runecloth Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_enchantedrunecloth",
            source = {
                type = "Item",
                id = 22308,
                cost = 18000,
                location = "Kania, Cenarion Hold, Silithus",
            },
            product = { itemId = 22248, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Greater Eternal Essence", itemId = 16203, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
        {
            id = 27724,
            name = "Cenarion Herb Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_cenarionherbbag",
            source = {
                type = "Item",
                id = 22310,
                cost = 18000,
                location = "Mishta, Cenarion Hold, Silithus",
            },
            product = { itemId = 22251, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Purple Lotus", itemId = 8831, quantity = 10 },
                { name = "Morrowgrain", itemId = 11040, quantity = 8 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 275, 290, 305, 320 },
            phase = 1
        },
    },
    [280] = {
        {
            id = 18424,
            name = "Frostweave Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_08",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 13871, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Essence of Water", itemId = 7080, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 280, 295, 310, 325 },
            phase = 1
        },
        {
            id = 18423,
            name = "Runecloth Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 13864, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
                { name = "Rugged Leather", itemId = 8170, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 280, 295, 310, 325 },
            phase = 1
        },
        {
            id = 18434,
            name = "Cindercloth Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_06",
            source = {
                type = "Item",
                id = 14490,
                location = "Thaurissan Firewalker in Burning Steppes",
            },
            product = { itemId = 14045, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Essence of Fire", itemId = 7078, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 280, 295, 310, 325 },
            phase = 1
        },
    },
    [285] = {
        {
            id = 18436,
            name = "Robe of Winter Night",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_49",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14136, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 10 },
                { name = "Felcloth", itemId = 14256, quantity = 12 },
                { name = "Essence of Undeath", itemId = 12808, quantity = 4 },
                { name = "Essence of Water", itemId = 7080, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 285, 300, 315, 330 },
            phase = 1
        },
        {
            id = 18437,
            name = "Felcloth Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14108, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Felcloth", itemId = 14256, quantity = 2 },
                { name = "Rugged Leather", itemId = 8170, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 285, 300, 315, 330 },
            phase = 1
        },
        {
            id = 18438,
            name = "Runecloth Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_09",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 13865, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 285, 300, 315, 330 },
            phase = 1
        },
        {
            id = 26086,
            name = "Felcloth Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_felclothbag",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 21341, },
            materials = {
                { name = "Felcloth", itemId = 14256, quantity = 12 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 6 },
                { name = "Dark Rune", itemId = 20520, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 285, 300, 315, 330 },
            phase = 1
        },
        {
            id = 22813,
            name = "Gordok Ogre Suit",
            category = "Other",
            texture = "Interface/ICONS/inv_chest_chain_14",
            source = {
                type = "Item",
                id = 18517,
                location = "Quest",
            },
            product = { itemId = 18258, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 2 },
                { name = "Rugged Leather", itemId = 8170, quantity = 4 },
                { name = "Ogre Tannin", itemId = 18240, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 285, 290, 295, 300 },
            phase = 1
        },
    },
    [290] = {
        {
            id = 18439,
            name = "Brightcloth Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_09",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14104, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Gold Bar", itemId = 3577, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 290, 305, 320, 335 },
            phase = 1
        },
        {
            id = 18440,
            name = "Mooncloth Leggings",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_13",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14137, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Mooncloth", itemId = 14342, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 290, 305, 320, 335 },
            phase = 1
        },
        {
            id = 18441,
            name = "Ghostweave Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_01",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14144, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Ghost Dye", itemId = 9210, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 290, 305, 320, 335 },
            phase = 1
        },
        {
            id = 18442,
            name = "Felcloth Hood",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_34",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14111, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Felcloth", itemId = 14256, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 290, 305, 320, 335 },
            phase = 1
        },
        {
            id = 23662,
            name = "Wisdom of the Timbermaw",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_09",
            source = {
                type = "Item",
                id = 19215,
                location = "Meilosh, Felwood",
            },
            product = { itemId = 19047, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 8 },
                { name = "Essence of Earth", itemId = 7076, quantity = 3 },
                { name = "Living Essence", itemId = 12803, quantity = 3 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 290, 305, 320, 335 },
            phase = 1
        },
        {
            id = 23664,
            name = "Argent Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_cloth_03",
            source = {
                type = "Item",
                id = 19219,
                location = "Argent Dawn - Revered",
            },
            product = { itemId = 19056, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 4 },
                { name = "Golden Pearl", itemId = 13926, quantity = 2 },
                { name = "Guardian Stone", itemId = 12809, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 290, 305, 320, 335 },
            phase = 1
        },
        {
            id = 19435,
            name = "Mooncloth Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Item",
                id = 15779,
                location = "World Drop",
            },
            product = { itemId = 15802, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Mooncloth", itemId = 14342, quantity = 4 },
                { name = "Black Pearl", itemId = 7971, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 290, 305, 320, 335 },
            phase = 1
        },
    },
    [295] = {
        {
            id = 18444,
            name = "Runecloth Headband",
            category = "Head",
            texture = "Interface/ICONS/inv_misc_bandana_03",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 13866, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 295, 310, 325, 340 },
            phase = 1
        },
    },
    [300] = {
        {
            id = 22759,
            name = "Flarecore Wraps",
            category = "Hands",
            texture = "Interface/ICONS/inv_bracer_09",
            source = {
                type = "Item",
                id = 18265,
                location = "Molten Core Trash",
            },
            product = { itemId = 18263, },
            materials = {
                { name = "Mooncloth", itemId = 14342, quantity = 6 },
                { name = "Fiery Core", itemId = 17010, quantity = 8 },
                { name = "Essence of Fire", itemId = 7078, quantity = 2 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 6 },
                { name = "Rune Thread", itemId = 14341, quantity = 4 },
            },
            levels = { 300, 320, 335, 350 },
            phase = 1
        },
        {
            id = 18445,
            name = "Mooncloth Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_14",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14155, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Mooncloth", itemId = 14342, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18446,
            name = "Wizardweave Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_46",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14128, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 8 },
                { name = "Dream Dust", itemId = 11176, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18447,
            name = "Mooncloth Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_08",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14138, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Mooncloth", itemId = 14342, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18448,
            name = "Mooncloth Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_02",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14139, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 5 },
                { name = "Mooncloth", itemId = 14342, quantity = 5 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18449,
            name = "Runecloth Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_21",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 13867, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 7 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
                { name = "Rugged Leather", itemId = 8170, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18450,
            name = "Wizardweave Turban",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_63",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14130, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Dream Dust", itemId = 11176, quantity = 4 },
                { name = "Star Ruby", itemId = 7910, },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18451,
            name = "Felcloth Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_09",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14106, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 8 },
                { name = "Felcloth", itemId = 14256, quantity = 3 },
                { name = "Demonic Rune", itemId = 12662, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18452,
            name = "Mooncloth Circlet",
            category = "Head",
            texture = "Interface/ICONS/inv_misc_bandana_01",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14140, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Mooncloth", itemId = 14342, quantity = 6 },
                { name = "Azerothian Diamond", itemId = 12800, },
                { name = "Enchanted Leather", itemId = 12810, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18453,
            name = "Felcloth Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_23",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 14112, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 7 },
                { name = "Felcloth", itemId = 14256, quantity = 3 },
                { name = "Demonic Rune", itemId = 12662, quantity = 2 },
                { name = "Rugged Leather", itemId = 8170, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18454,
            name = "Gloves of Spell Mastery",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_06",
            source = {
                type = "Item",
                id = 14482,
                location = "World Drop",
            },
            product = { itemId = 14146, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 10 },
                { name = "Mooncloth", itemId = 14342, quantity = 10 },
                { name = "Ghost Dye", itemId = 9210, quantity = 10 },
                { name = "Golden Pearl", itemId = 13926, quantity = 6 },
                { name = "Huge Emerald", itemId = 12364, quantity = 6 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 8 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18455,
            name = "Bottomless Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_13",
            source = {
                type = "Item",
                id = 14488,
                location = "World Drop",
            },
            product = { itemId = 14156, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 8 },
                { name = "Mooncloth", itemId = 14342, quantity = 12 },
                { name = "Large Brilliant Shard", itemId = 14344, quantity = 2 },
                { name = "Core Leather", itemId = 17012, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18456,
            name = "Truefaith Vestments",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_31",
            source = {
                type = "Item",
                id = 14493,
                location = "World Drop",
            },
            product = { itemId = 14154, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 12 },
                { name = "Mooncloth", itemId = 14342, quantity = 10 },
                { name = "Righteous Orb", itemId = 12811, quantity = 4 },
                { name = "Golden Pearl", itemId = 13926, quantity = 4 },
                { name = "Ghost Dye", itemId = 9210, quantity = 10 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18457,
            name = "Robe of the Archmage",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_38",
            source = {
                type = "Item",
                id = 14512,
                location = "World Drop",
            },
            product = { itemId = 14152, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 12 },
                { name = "Essence of Fire", itemId = 7078, quantity = 10 },
                { name = "Essence of Air", itemId = 7082, quantity = 10 },
                { name = "Essence of Earth", itemId = 7076, quantity = 10 },
                { name = "Essence of Water", itemId = 7080, quantity = 10 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 18458,
            name = "Robe of the Void",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_51",
            source = {
                type = "Item",
                id = 14514,
                location = "World Drop",
            },
            product = { itemId = 14153, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 12 },
                { name = "Demonic Rune", itemId = 12662, quantity = 20 },
                { name = "Felcloth", itemId = 14256, quantity = 40 },
                { name = "Essence of Fire", itemId = 7078, quantity = 12 },
                { name = "Essence of Undeath", itemId = 12808, quantity = 12 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 20848,
            name = "Flarecore Mantle",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_23",
            source = {
                type = "Item",
                id = 17018,
                location = "Molten Core Trash",
            },
            product = { itemId = 16980, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 12 },
                { name = "Fiery Core", itemId = 17010, quantity = 4 },
                { name = "Lava Core", itemId = 17011, quantity = 4 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 6 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 20849,
            name = "Flarecore Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_26",
            source = {
                type = "Item",
                id = 17017,
                location = "Molten Core Trash",
            },
            product = { itemId = 16979, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 8 },
                { name = "Fiery Core", itemId = 17010, quantity = 6 },
                { name = "Essence of Fire", itemId = 7078, quantity = 4 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 22866,
            name = "Belt of the Archmage",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_31",
            source = {
                type = "Item",
                id = 18418,
                location = "World Drop",
            },
            product = { itemId = 18405, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 16 },
                { name = "Ghost Dye", itemId = 9210, quantity = 10 },
                { name = "Mooncloth", itemId = 14342, quantity = 10 },
                { name = "Essence of Water", itemId = 7080, quantity = 12 },
                { name = "Essence of Fire", itemId = 7078, quantity = 12 },
                { name = "Large Brilliant Shard", itemId = 14344, quantity = 6 },
                { name = "Rune Thread", itemId = 14341, quantity = 6 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 22867,
            name = "Felcloth Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_19",
            source = {
                type = "Item",
                id = 18414,
                location = "World Drop",
            },
            product = { itemId = 18407, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 12 },
                { name = "Felcloth", itemId = 14256, quantity = 20 },
                { name = "Demonic Rune", itemId = 12662, quantity = 6 },
                { name = "Essence of Undeath", itemId = 12808, quantity = 8 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 22868,
            name = "Inferno Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_19",
            source = {
                type = "Item",
                id = 18415,
                location = "World Drop",
            },
            product = { itemId = 18408, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 12 },
                { name = "Essence of Fire", itemId = 7078, quantity = 10 },
                { name = "Star Ruby", itemId = 7910, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 22869,
            name = "Mooncloth Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_17",
            source = {
                type = "Item",
                id = 18416,
                location = "World Drop",
            },
            product = { itemId = 18409, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 12 },
                { name = "Mooncloth", itemId = 14342, quantity = 6 },
                { name = "Golden Pearl", itemId = 13926, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 22870,
            name = "Cloak of Warding",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_06",
            source = {
                type = "Item",
                id = 18417,
                location = "World Drop",
            },
            product = { itemId = 18413, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 12 },
                { name = "Guardian Stone", itemId = 12809, quantity = 4 },
                { name = "Arcanite Bar", itemId = 12360, },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 22902,
            name = "Mooncloth Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_04",
            source = {
                type = "Item",
                id = 18487,
                location = "World Drop",
            },
            product = { itemId = 18486, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Mooncloth", itemId = 14342, quantity = 4 },
                { name = "Golden Pearl", itemId = 13926, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 23663,
            name = "Mantle of the Timbermaw",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_19",
            source = {
                type = "Item",
                id = 19218,
                location = "Meilosh, Felwood",
            },
            product = { itemId = 19050, },
            materials = {
                { name = "Mooncloth", itemId = 14342, quantity = 5 },
                { name = "Essence of Earth", itemId = 7076, quantity = 5 },
                { name = "Living Essence", itemId = 12803, quantity = 5 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 23665,
            name = "Argent Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_13",
            source = {
                type = "Item",
                id = 19220,
                location = "Argent Dawn - Exalted",
            },
            product = { itemId = 19059, },
            materials = {
                { name = "Mooncloth", itemId = 14342, quantity = 5 },
                { name = "Guardian Stone", itemId = 12809, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 23666,
            name = "Flarecore Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_18",
            source = {
                type = "Item",
                id = 19220,
                location = "Molten Core Trash",
            },
            product = { itemId = 19156, },
            materials = {
                { name = "Mooncloth", itemId = 14342, quantity = 10 },
                { name = "Fiery Core", itemId = 17010, quantity = 2 },
                { name = "Lava Core", itemId = 17011, quantity = 3 },
                { name = "Essence of Fire", itemId = 7078, quantity = 6 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 23667,
            name = "Flarecore Leggings",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_06",
            source = {
                type = "Item",
                id = 19221,
                location = "Molten Core Trash",
            },
            product = { itemId = 19165, },
            materials = {
                { name = "Mooncloth", itemId = 14342, quantity = 8 },
                { name = "Fiery Core", itemId = 17010, quantity = 5 },
                { name = "Lava Core", itemId = 17011, quantity = 3 },
                { name = "Essence of Fire", itemId = 7078, quantity = 10 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 24091,
            name = "Bloodvine Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_07",
            source = {
                type = "Item",
                id = 19764,
                location = "Zandalar Tribe - Friendly",
            },
            product = { itemId = 19682, },
            materials = {
                { name = "Mooncloth", itemId = 14342, quantity = 3 },
                { name = "Bloodvine", itemId = 19726, quantity = 5 },
                { name = "Powerful Mojo", itemId = 12804, quantity = 4 },
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 24092,
            name = "Bloodvine Leggings",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_cloth_14",
            source = {
                type = "Item",
                id = 19765,
                location = "Zandalar Tribe - Friendly",
            },
            product = { itemId = 19683, },
            materials = {
                { name = "Mooncloth", itemId = 14342, quantity = 4 },
                { name = "Bloodvine", itemId = 19726, quantity = 4 },
                { name = "Powerful Mojo", itemId = 12804, quantity = 4 },
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 24093,
            name = "Bloodvine Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_cloth_02",
            source = {
                type = "Item",
                id = 19766,
                location = "Zandalar Tribe - Friendly",
            },
            product = { itemId = 19684, },
            materials = {
                { name = "Mooncloth", itemId = 14342, quantity = 3 },
                { name = "Bloodvine", itemId = 19726, quantity = 3 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 4 },
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 24901,
            name = "Runed Stygian Leggings",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_cloth_05",
            source = {
                type = "Item",
                id = 20546,
                location = "Quest Reward - True Believers",
            },
            product = { itemId = 20538, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Dark Rune", itemId = 20520, quantity = 8 },
                { name = "Felcloth", itemId = 14256, quantity = 6 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 24902,
            name = "Runed Stygian Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_14",
            source = {
                type = "Item",
                id = 20547,
                location = "Quest Reward - True Believers",
            },
            product = { itemId = 20539, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 2 },
                { name = "Dark Rune", itemId = 20520, quantity = 6 },
                { name = "Felcloth", itemId = 14256, quantity = 2 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 24903,
            name = "Runed Stygian Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Item",
                id = 20548,
                location = "Quest Reward - True Believers",
            },
            product = { itemId = 20537, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Dark Rune", itemId = 20520, quantity = 6 },
                { name = "Felcloth", itemId = 14256, quantity = 4 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 26087,
            name = "Core Felcloth Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_corefelclothbag",
            source = {
                type = "Item",
                id = 21371,
                location = "Molten Core Trash",
            },
            product = { itemId = 21342, },
            materials = {
                { name = "Felcloth", itemId = 14256, quantity = 20 },
                { name = "Core Leather", itemId = 17012, quantity = 16 },
                { name = "Bloodvine", itemId = 19726, quantity = 8 },
                { name = "Essence of Fire", itemId = 7078, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 27660,
            name = "Big Bag of Enchantment",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_bigbagofenchantments",
            source = {
                type = "Item",
                id = 22309,
                location = "Boss Drop, Magister Kalendris, Dire Maul (West)",
            },
            product = { itemId = 22249, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Large Brilliant Shard", itemId = 14344, quantity = 4 },
                { name = "Enchanted Leather", itemId = 12810, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 27725,
            name = "Satchel of Cenarius",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_satchelofcenarius",
            source = {
                type = "Item",
                id = 22312,
                cost = 45000,
                location = "Mishta, Cenarion Hold, Silithus",
            },
            product = { itemId = 22252, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 6 },
                { name = "Mooncloth", itemId = 14342, quantity = 2 },
                { name = "Black Lotus", itemId = 13468, },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 28205,
            name = "Glacial Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_06",
            source = {
                type = "Quest",
                id = 9239,
                location = "Craftsman Wilhelm, Light's Hope Chapel, Eastern Plaguelands",
            },
            product = { itemId = 22654, },
            materials = {
                { name = "Frozen Rune", itemId = 22682, quantity = 5 },
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Essence of Water", itemId = 7080, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 28207,
            name = "Glacial Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_08",
            source = {
                type = "Quest",
                id = 9240,
                location = "Craftsman Wilhelm, Light's Hope Chapel, Eastern Plaguelands",
            },
            product = { itemId = 22652, },
            materials = {
                { name = "Frozen Rune", itemId = 22682, quantity = 7 },
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 8 },
                { name = "Essence of Water", itemId = 7080, quantity = 6 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 8 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 28208,
            name = "Glacial Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_16",
            source = {
                type = "Quest",
                id = 9237,
                location = "Craftsman Wilhelm, Light's Hope Chapel, Eastern Plaguelands",
            },
            product = { itemId = 22658, },
            materials = {
                { name = "Frozen Rune", itemId = 22682, quantity = 5 },
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Essence of Water", itemId = 7080, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 28209,
            name = "Glacial Wrists",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_07",
            source = {
                type = "Quest",
                id = 9238,
                location = "Craftsman Wilhelm, Light's Hope Chapel, Eastern Plaguelands",
            },
            product = { itemId = 22655, },
            materials = {
                { name = "Frozen Rune", itemId = 22682, quantity = 4 },
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 2 },
                { name = "Essence of Water", itemId = 7080, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 28210,
            name = "Gaea's Embrace",
            category = "",
            texture = "Interface/ICONS/inv_misc_cape_17",
            source = {
                type = "Item",
                id = 22683,
                cost = 90000,
                location = "Mishta, Cenarion Hold, Silithus",
            },
            product = { itemId = 22660, },
            materials = {
                { name = "Bloodvine", itemId = 19726, },
                { name = "Mooncloth", itemId = 14342, quantity = 2 },
                { name = "Living Essence", itemId = 12803, quantity = 4 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 4 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 28480,
            name = "Sylvan Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_plate07",
            source = {
                type = "Item",
                id = 22774,
                cost = 45000,
                location = "Mishta, Cenarion Hold, Silithus",
            },
            product = { itemId = 22756, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Bloodvine", itemId = 19726, quantity = 2 },
                { name = "Living Essence", itemId = 12803, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 28481,
            name = "Sylvan Crown",
            category = "Head",
            texture = "Interface/ICONS/inv_crown_01",
            source = {
                type = "Item",
                id = 22773,
                cost = 45000,
                location = "Mishta, Cenarion Hold, Silithus",
            },
            product = { itemId = 22657, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Mooncloth", itemId = 14342, quantity = 2 },
                { name = "Living Essence", itemId = 12803, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 28482,
            name = "Sylvan Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_18",
            source = {
                type = "Item",
                id = 22772,
                cost = 45000,
                location = "Mishta, Cenarion Hold, Silithus",
            },
            product = { itemId = 22658, },
            materials = {
                { name = "Bolt of Runecloth", itemId = 14048, quantity = 4 },
                { name = "Bloodvine", itemId = 19726, quantity = 2 },
                { name = "Living Essence", itemId = 12803, quantity = 2 },
                { name = "Ironweb Spider Silk", itemId = 14227, quantity = 2 },
            },
            levels = { 300, 315, 330, 345 },
            phase = 1
        },
        {
            id = 26745,
            name = "Bolt of Netherweave",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_netherweave_bolt",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { itemId = 21840, },
            materials = {
                { name = "Netherweave Cloth", itemId = 21877, quantity = 6 },
            },
            levels = { 300, 305, 315, 325 },
            phase = 1
        },
        {
            id = 31460,
            name = "Netherweave Net",
            category = "Other",
            texture = "Interface/ICONS/inv_misc_net_01",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { itemId = 24268, quantity = 2 },
            materials = {
                { name = "Netherweave Cloth", itemId = 21877, quantity = 3 },
            },
            levels = { 300, 300, 310, 320 },
            phase = 1
        },
    },
    [310] = {
        {
            id = 26764,
            name = "Netherweave Bracers",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_07",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 21849, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 3 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 310, 320, 325, 330 },
            phase = 1
        },
        {
            id = 26765,
            name = "Netherweave Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_04",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 21850, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 3 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 310, 320, 325, 330 },
            phase = 1
        },
    },
    [315] = {
        {
            id = 26746,
            name = "Netherweave Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_23_netherweave",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { itemId = 21841, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 315, 320, 330, 340 },
            phase = 1
        },
    },
    [320] = {
        {
            id = 26770,
            name = "Netherweave Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_27",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { itemId = 21851, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 4 },
                { name = "Knothide Leather", itemId = 21887, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 320, 330, 335, 340 },
            phase = 1
        },
    },
    [325] = {
        {
            id = 26771,
            name = "Netherweave Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_09",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { itemId = 21852, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 6 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 325, 335, 340, 345 },
            phase = 1
        },
        {
            id = 26747,
            name = "Bolt of Imbued Netherweave",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_netherweave_bolt_imbued",
            source = {
                type = "Item",
                id = 21892,
                cost = 34000,
                location = "Shattrath City, Silvermoon City, or The Exodar",
            },
            product = { itemId = 21842, },
            materials = {
                { itemId = 21840, quantity = 3 }, -- Bolt of Netherweave
                { itemId = 22445, quantity = 2 }, -- Arcane Dust
            },
            levels = { 325, 330, 335, 340 },
            phase = 1,
        },
    },
    [335] = {
        {
            id = 26772,
            name = "Netherweave Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_05",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { itemId = 21853, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 6 },
                { name = "Knothide Leather", itemId = 21887, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 335, 345, 350, 355 },
            phase = 1
        },
        {
            id = 31430,
            name = "Mystic Spellthread",
            category = "Enhancement",
            texture = "Interface/ICONS/spell_nature_astralrecal",
            source = {
                type = "Item",
                id = 24292,
                cost = 48000,
                location = "Quartermaster Enuril, Shattrath City",
            },
            product = { itemId = 24273, },
            materials = {
                { name = "Rune Thread", itemId = 14341, },
                { name = "Primal Mana", itemId = 22457, quantity = 5 },
            },
            levels = { 335, 345, 350, 355 },
            phase = 1
        },
        {
            id = 31431,
            name = "Silver Spellthread",
            category = "Enhancement",
            texture = "Interface/ICONS/spell_nature_lightning",
            source = {
                type = "Item",
                id = 24293,
                cost = 60000,
                location = "Quartermaster Endarin, Shattrath City",
            },
            product = { itemId = 24275, },
            materials = {
                { name = "Rune Thread", itemId = 14341, },
                { name = "Primal Life", itemId = 21886, quantity = 5 },
            },
            levels = { 335, 345, 350, 355 },
            phase = 1
        },
    },
    [340] = {
        {
            id = 26773,
            name = "Netherweave Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_29",
            source = {
                type = "Item",
                id = 21896,
                cost = 40000,
                location = "Eiin, Shattrath City",
            },
            product = { itemId = 21854, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 8 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 340, 350, 355, 360 },
            phase = 1
        },
        {
            id = 26775,
            name = "Imbued Netherweave Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_leather_09",
            source = {
                type = "Item",
                id = 21898,
                cost = 60000,
                location = "Vendors, Zangarmarsh",
            },
            product = { itemId = 21859, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 5 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 340, 350, 355, 360 },
            phase = 1
        },
        {
            id = 31459,
            name = "Bag of Jewels",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_15",
            source = {
                type = "Item",
                id = 24314,
                cost = 40000,
                location = "The Consortium - Honored",
            },
            product = { itemId = 24270, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 6 },
                { name = "Knothide Leather", itemId = 21887, quantity = 4 },
            },
            levels = { 340, 350, 355, 360 },
            phase = 1
        },
        {
            id = 26749,
            name = "Imbued Netherweave Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_24_netherweave_imbued",
            source = {
                type = "Item",
                id = 21893,
                cost = 32000,
                location = "Eiin, Shattrath City",
            },
            product = { itemId = 21843, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
                { name = "Greater Planar Essence", itemId = 22446, },
            },
            levels = { 340, 340, 345, 350 },
            phase = 1
        },
    },
    [345] = {
        {
            id = 26774,
            name = "Netherweave Tunic",
            category = "Chest",
            texture = "Interface/ICONS/inv_shirt_04",
            source = {
                type = "Trainer",
                cost = 30000,
            },
            product = { itemId = 21855, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 8 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 345, 355, 360, 365 },
            phase = 1
        },
        {
            id = 26750,
            name = "Bolt of Soulcloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_soulcloth_bolt",
            source = {
                type = "Item",
                id = 21894,
                location = "Limited Supply Vendors",
            },
            product = { itemId = 21844, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, },
                { name = "Soul Essence", itemId = 21882, quantity = 8 },
            },
            levels = { 345, 345, 350, 355 },
            phase = 1
        },
    },
    [350] = {
        {
            id = 26776,
            name = "Imbued Netherweave Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_07",
            source = {
                type = "Trainer",
                cost = 30000,
            },
            product = { itemId = 21860, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Knothide Leather", itemId = 21887, quantity = 6 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 26782,
            name = "Arcanoweave Bracers",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_19",
            source = {
                type = "Item",
                id = 21905,
                location = "Arcatraz",
            },
            product = { itemId = 21866, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 6 },
                { name = "Arcane Dust", itemId = 22445, quantity = 12 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 31434,
            name = "Unyielding Bracers",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_11",
            source = {
                type = "Item",
                id = 24296,
                location = "Tempest Keep",
            },
            product = { itemId = 24249, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Primal Earth", itemId = 22452, quantity = 8 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 31435,
            name = "Bracers of Havok",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_10",
            source = {
                type = "Item",
                id = 24297,
                location = "World Drop",
            },
            product = { itemId = 24250, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Primal Earth", itemId = 22452, quantity = 4 },
                { name = "Primal Shadow", itemId = 22456, quantity = 4 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 31437,
            name = "Blackstrike Bracers",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_07",
            source = {
                type = "Item",
                id = 24298,
                location = "Vendor/Quest",
            },
            product = { itemId = 24251, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Primal Fire", itemId = 21884, quantity = 8 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 31438,
            name = "Cloak of the Black Void",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_20",
            source = {
                type = "Item",
                id = 24299,
                location = "Vendor/Quest",
            },
            product = { itemId = 24252, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 6 },
                { name = "Primal Mana", itemId = 22457, quantity = 3 },
                { name = "Primal Shadow", itemId = 22456, quantity = 3 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 31440,
            name = "Cloak of Eternity",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_10",
            source = {
                type = "Item",
                id = 24300,
                location = "Vendor/Quest",
            },
            product = { itemId = 24253, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 6 },
                { name = "Primal Earth", itemId = 22452, quantity = 6 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 31441,
            name = "White Remedy Cape",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_11",
            source = {
                type = "Item",
                id = 24301,
                location = "Vendor/Quest",
            },
            product = { itemId = 24254, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 6 },
                { name = "Primal Life", itemId = 21886, quantity = 6 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 37873,
            name = "Cloak of Arcane Evasion",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_16",
            source = {
                type = "Item",
                id = 30833,
                cost = 60000,
                location = "Nakodu - The Sha'tar",
            },
            product = { itemId = 30831, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Primal Mana", itemId = 22457, quantity = 3 },
                { name = "Primal Life", itemId = 21886, quantity = 3 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 37882,
            name = "Flameheart Bracers",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_11",
            source = {
                type = "Item",
                id = 30842,
                location = "Quartermaster Endarin, Shattrath City",
            },
            product = { itemId = 30837, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 5 },
                { name = "Primal Fire", itemId = 21884, quantity = 5 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 350, 360, 365, 370 },
            phase = 1
        },
        {
            id = 26751,
            name = "Primal Mooncloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_moonrag_primal",
            source = {
                type = "Item",
                id = 21895,
                cost = 34000,
                location = "Nasmara Moonsong, Shattrath City",
            },
            product = { itemId = 21845, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, },
                { name = "Primal Life", itemId = 21886, },
                { name = "Primal Water", itemId = 21885, },
            },
            levels = { 350, 350, 355, 360 },
            phase = 1,
        },
        {
            id = 31373,
            name = "Spellcloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_spellfire",
            source = {
                type = "Item",
                id = 24316,
                cost = 34000,
                location = "Gidge Spellweaver",
            },
            product = { itemId = 24271, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, },
                { name = "Primal Mana", itemId = 22457, },
                { name = "Primal Fire", itemId = 21884, },
            },
            cooldown = 331200,
            levels = { 350, 350, 355, 360 },
            phase = 1,
        },
        {
            id = 36686,
            name = "Shadowcloth",
            category = "Bolts & Cloth",
            texture = "Interface/ICONS/inv_fabric_felcloth_ebon",
            source = {
                type = "Item",
                id = 30483,
                cost = 34000,
                location = "Gidge Spellweaver",
            },
            product = { itemId = 24272, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, },
                { name = "Primal Shadow", itemId = 22456, },
                { name = "Primal Fire", itemId = 21884, },
            },
            cooldown = 331200,
            levels = { 350, 350, 355, 360 },
            phase = 1,
        },
    },
    [355] = {
        {
            id = 26752,
            name = "Spellfire Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_04",
            source = {
                type = "Item",
                id = 21908,
                location = "Gidge Spellweaver",
            },
            product = { itemId = 21846, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 4 },
                { name = "Primal Fire", itemId = 21884, quantity = 10 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
            },
            levels = { 355, 365, 370, 375 },
            phase = 1
        },
        {
            id = 26756,
            name = "Frozen Shadoweave Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_25",
            source = {
                type = "Item",
                id = 21912,
                location = "Andrion Darkspinner",
            },
            product = { itemId = 21869, },
            materials = {
                { name = "Shadowcloth", itemId = 24272, quantity = 4 },
                { name = "Primal Water", itemId = 21885, quantity = 10 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
            },
            levels = { 355, 365, 370, 375 },
            phase = 1
        },
        {
            id = 26760,
            name = "Primal Mooncloth Belt",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_31",
            source = {
                type = "Item",
                id = 21916,
                cost = 60000,
                location = "Nasmara Moonsong",
            },
            product = { itemId = 21873, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 4 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
                { name = "Primal Life", itemId = 21886, quantity = 8 },
            },
            levels = { 355, 365, 370, 375 },
            phase = 1
        },
        {
            id = 26779,
            name = "Soulcloth Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_17",
            source = {
                type = "Item",
                id = 21902,
                location = "Vendor",
            },
            product = { itemId = 21863, },
            materials = {
                { name = "Bolt of Soulcloth", itemId = 21844, quantity = 5 },
                { name = "Knothide Leather", itemId = 21887, quantity = 6 },
                { name = "Rune Thread", itemId = 14341, quantity = 4 },
            },
            levels = { 355, 365, 370, 375 },
            phase = 1
        },
    },
    [360] = {
        {
            id = 26777,
            name = "Imbued Netherweave Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_12",
            source = {
                type = "Item",
                id = 21900,
                location = "Arrond",
            },
            product = { itemId = 21861, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 6 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 360, 370, 375, 380 },
            phase = 1
        },
        {
            id = 26778,
            name = "Imbued Netherweave Tunic",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_45",
            source = {
                type = "Item",
                id = 21901,
                location = "Arrond - Shattrath City",
            },
            product = { itemId = 21862, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 6 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
                { name = "Rune Thread", itemId = 14341, },
            },
            levels = { 360, 370, 375, 380 },
            phase = 1
        },
        {
            id = 26783,
            name = "Arcanoweave Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_07",
            source = {
                type = "Item",
                id = 21906,
                location = "Sunseeker Astromage",
            },
            product = { itemId = 21867, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 8 },
                { name = "Arcane Dust", itemId = 22445, quantity = 16 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 360, 370, 375, 380 },
            phase = 1
        },
        {
            id = 37883,
            name = "Flameheart Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_19",
            source = {
                type = "Item",
                id = 30843,
                location = "Quartermaster Endarin, Shattrath City",
            },
            product = { itemId = 30838, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 7 },
                { name = "Primal Fire", itemId = 21884, quantity = 7 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 360, 370, 375, 380 },
            phase = 1
        },
    },
    [365] = {
        {
            id = 46128,
            name = "Sunfire Handwraps",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_49",
            source = {
                type = "Item",
                id = 35204,
                location = "Shadowmoon Valley",
            },
            product = { itemId = 34366, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 10 },
                { name = "Shadowcloth", itemId = 24272, quantity = 10 },
                { name = "Sunmote", itemId = 34664, quantity = 6 },
            },
            levels = { 365, 375, 392, 410 },
            phase = 1
        },
        {
            id = 46129,
            name = "Hands of Eternal Light",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_63",
            source = {
                type = "Item",
                id = 35205,
                location = "Vendor",
            },
            product = { itemId = 34367, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 18 },
                { name = "Primal Life", itemId = 21886, quantity = 12 },
                { name = "Primal Water", itemId = 21885, quantity = 12 },
                { name = "Sunmote", itemId = 34664, quantity = 6 },
            },
            levels = { 365, 375, 392, 410 },
            phase = 1
        },
        {
            id = 46130,
            name = "Sunfire Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_02",
            source = {
                type = "Item",
                id = 35206,
                location = "Sunwell Plateau",
            },
            product = { itemId = 34364, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 12 },
                { name = "Shadowcloth", itemId = 24272, quantity = 12 },
                { name = "Primal Nether", itemId = 23572, quantity = 2 },
            },
            levels = { 365, 375, 392, 410 },
            phase = 1
        },
        {
            id = 46131,
            name = "Robe of Eternal Light",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_51",
            source = {
                type = "Item",
                id = 35207,
                location = "Vendor",
            },
            product = { itemId = 34365, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 20 },
                { name = "Primal Nether", itemId = 23572, quantity = 2 },
            },
            levels = { 365, 375, 392, 410 },
            phase = 1
        },
        {
            id = 26753,
            name = "Spellfire Gloves",
            category = "Hands",
            texture = "Interface/ICONS/inv_gauntlets_19",
            source = {
                type = "Item",
                id = 21909,
                location = "Gidge Spellweaver",
            },
            product = { itemId = 21847, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 8 },
                { name = "Primal Fire", itemId = 21884, quantity = 12 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 4 },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 26757,
            name = "Frozen Shadoweave Boots",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_cloth_03",
            source = {
                type = "Item",
                id = 21914,
                location = "Andrion Darkspinne, Shadowmoon Valley",
            },
            product = { itemId = 21870, },
            materials = {
                { name = "Shadowcloth", itemId = 24272, quantity = 8 },
                { name = "Primal Water", itemId = 21885, quantity = 12 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 26761,
            name = "Primal Mooncloth Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_02",
            source = {
                type = "Item",
                id = 21918,
                cost = 60000,
                location = "Nasmara Moonsong",
            },
            product = { itemId = 21874, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 8 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 2 },
                { name = "Primal Life", itemId = 21886, quantity = 8 },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 26780,
            name = "Soulcloth Shoulders",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_02",
            source = {
                type = "Item",
                id = 21903,
                location = "Phantom Attendant",
            },
            product = { itemId = 21864, },
            materials = {
                { name = "Bolt of Soulcloth", itemId = 21844, quantity = 6 },
                { name = "Rune Thread", itemId = 14341, quantity = 4 },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 31442,
            name = "Unyielding Girdle",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_03",
            source = {
                type = "Item",
                id = 35309,
                location = "World Drop or Kael'thas Sunstrider, Magisters' Terrace",
            },
            product = { itemId = 24255, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 8 },
                { name = "Primal Earth", itemId = 22452, quantity = 16 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 31443,
            name = "Girdle of Ruination",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_13",
            source = {
                type = "Item",
                id = 24303, -- Pattern: Girdle of Ruination
                location = "World Drop",
            },
            product = { itemId = 24256, },
            materials = {
                { name = "Shadowcloth", itemId = 24272, quantity = 10 },
                { name = "Primal Fire", itemId = 21884, quantity = 16 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 31444,
            name = "Black Belt of Knowledge",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_26",
            source = {
                type = "Item",
                id = 24304,
                location = "World Drop",
            },
            product = { itemId = 24257, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 6 },
                { name = "Primal Mana", itemId = 22457, quantity = 14 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 31448,
            name = "Resolute Cape",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_16",
            source = {
                type = "Item",
                id = 24305,
                location = "World Drop",
            },
            product = { itemId = 24258, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 10 },
                { name = "Primal Earth", itemId = 22452, quantity = 12 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 31449,
            name = "Vengeance Wrap",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_18",
            source = {
                type = "Item",
                id = 24306,
                location = "World Drop",
            },
            product = { itemId = 24259, },
            materials = {
                { name = "Shadowcloth", itemId = 24272, quantity = 10 },
                { name = "Primal Air", itemId = 22451, quantity = 14 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
        {
            id = 31450,
            name = "Manaweave Cloak",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_16",
            source = {
                type = "Item",
                id = 24307,
                location = "World Drop",
            },
            product = { itemId = 24260, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 10 },
                { name = "Primal Mana", itemId = 22457, quantity = 12 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 365, 375, 380, 385 },
            phase = 1
        },
    },
    [370] = {
        {
            id = 26784,
            name = "Arcanoweave Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_01",
            source = {
                type = "Item",
                id = 21907,
                location = "Pathaleon the Calculator, The Mechanar",
            },
            product = { itemId = 21868, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 12 },
                { name = "Arcane Dust", itemId = 22445, quantity = 20 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 370, 380, 385, 390 },
            phase = 1
        },
        {
            id = 37884,
            name = "Flameheart Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_07",
            source = {
                type = "Item",
                id = 30844,
                location = "Quartermaster Endarin, Shattrath City",
            },
            product = { itemId = 30839, },
            materials = {
                { name = "Bolt of Netherweave", itemId = 21840, quantity = 9 },
                { name = "Primal Fire", itemId = 21884, quantity = 9 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 370, 380, 385, 390 },
            phase = 1
        },
    },
    [375] = {
        {
            id = 26754,
            name = "Spellfire Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_02",
            source = {
                type = "Item",
                id = 21910,
                location = "Gidge Spellweaver, Shattrath City",
            },
            product = { itemId = 21848, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 14 },
                { name = "Primal Fire", itemId = 21884, quantity = 16 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 26763,
            name = "Primal Mooncloth Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_25_mooncloth",
            source = {
                type = "Item",
                id = 21919,
                location = "Drop, Vendor",
            },
            product = { itemId = 21876, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 8 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 26755,
            name = "Spellfire Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_26_spellfire",
            source = {
                type = "Item",
                id = 21911,
                location = "Drop, Vendor",
            },
            product = { itemId = 21858, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 6 },
                { name = "Greater Planar Essence", itemId = 22446, quantity = 4 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 26758,
            name = "Frozen Shadoweave Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_08",
            source = {
                type = "Item",
                id = 21913,
                location = "Andrion Darkspinner, Shattrath City",
            },
            product = { itemId = 21871, },
            materials = {
                { name = "Shadowcloth", itemId = 24272, quantity = 14 },
                { name = "Primal Water", itemId = 21885, quantity = 16 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 26759,
            name = "Ebon Shadowbag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_felclothbag",
            source = {
                type = "Item",
                id = 21915,
                location = "Andrion Darkspinner, Shattrath City",
            },
            product = { itemId = 21872, },
            materials = {
                { name = "Shadowcloth", itemId = 24272, quantity = 6 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 26762,
            name = "Primal Mooncloth Robe",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_04",
            source = {
                type = "Item",
                id = 21917,
                location = "Nasmara Moonsong, Shattrath City",
            },
            product = { itemId = 21875, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 14 },
                { name = "Primal Mana", itemId = 22457, quantity = 12 },
                { name = "Netherweb Spider Silk", itemId = 21881, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 26781,
            name = "Soulcloth Vest",
            category = "Chest",
            texture = "Interface/ICONS/inv_chest_cloth_12",
            source = {
                type = "Item",
                id = 21904,
                location = "Phantom Valet, Karazhan",
            },
            product = { itemId = 21865, },
            materials = {
                { name = "Bolt of Soulcloth", itemId = 21844, quantity = 8 },
                { name = "Rune Thread", itemId = 14341, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 31432,
            name = "Runic Spellthread",
            category = "Enhancement",
            texture = "Interface/ICONS/spell_nature_astralrecalgroup",
            source = {
                type = "Item",
                id = 24294,
                location = "Quartermaster Enuril, Shattrath City",
            },
            product = { itemId = 24274, },
            materials = {
                { name = "Rune Thread", itemId = 14341, },
                { name = "Primal Mana", itemId = 22457, quantity = 10 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 31433,
            name = "Golden Spellthread",
            category = "Enhancement",
            texture = "Interface/ICONS/spell_holy_restoration",
            source = {
                type = "Item",
                id = 24295,
                location = "Quartermaster Endarin, Shattrath City",
            },
            product = { itemId = 24276, },
            materials = {
                { name = "Rune Thread", itemId = 14341, },
                { name = "Primal Life", itemId = 21886, quantity = 10 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 31451,
            name = "Whitemend Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_cloth_07",
            source = {
                type = "Item",
                id = 24308,
                location = "Dalliah the Doomsayer, The Arcatraz",
            },
            product = { itemId = 24261, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 10 },
                { name = "Primal Might", itemId = 23571, quantity = 5 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 31452,
            name = "Spellstrike Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_cloth_14",
            source = {
                type = "Item",
                id = 24309,
                location = "Murmur, Shadow Labyrinth",
            },
            product = { itemId = 24262, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 10 },
                { name = "Primal Might", itemId = 23571, quantity = 5 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 31453,
            name = "Battlecast Pants",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_cloth_12",
            source = {
                type = "Item",
                id = 24310,
                location = "Thorngrin the Tender, The Botanica",
            },
            product = { itemId = 24263, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 12 },
                { name = "Primal Might", itemId = 23571, quantity = 8 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 31454,
            name = "Whitemend Hood",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_53",
            source = {
                type = "Item",
                id = 24311,
                location = "Warp Splinter, The Botanica",
            },
            product = { itemId = 24264, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 10 },
                { name = "Primal Might", itemId = 23571, quantity = 5 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 31455,
            name = "Spellstrike Hood",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_27",
            source = {
                type = "Item",
                id = 24312,
                location = "Grand Warlock Nethekurse, The Shattered Halls",
            },
            product = { itemId = 24266, },
            materials = {
                { name = "Spellcloth", itemId = 24271, quantity = 10 },
                { name = "Primal Might", itemId = 23571, quantity = 5 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 31456,
            name = "Battlecast Hood",
            category = "Head",
            texture = "Interface/ICONS/inv_helmet_70",
            source = {
                type = "Item",
                id = 24313,
                location = "Warlord Kalithresh, The Steamvault",
            },
            product = { itemId = 24267, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 12 },
                { name = "Primal Might", itemId = 23571, quantity = 8 },
                { name = "Primal Nether", itemId = 23572, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 50194,
            name = "Mycah's Botanical Bag",
            category = "Bag",
            texture = "Interface/ICONS/inv_misc_bag_27",
            source = {
                type = "Item",
                id = 38229,
                location = "Mycah, Zangarmarsh",
            },
            product = { itemId = 38225, },
            materials = {
                { name = "Primal Mooncloth", itemId = 21845, quantity = 4 },
                { name = "Fel Lotus", itemId = 22794, quantity = 2 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 36315,
            name = "Belt of Blasting",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_13",
            source = {
                type = "Item",
                id = 30280,
                location = "Drop",
            },
            product = { itemId = 30038, },
            materials = {
                { name = "Nether Vortex", itemId = 30183, quantity = 2 },
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Primal Fire", itemId = 21884, quantity = 15 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 2
        },
        {
            id = 36317,
            name = "Boots of Blasting",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_cloth_05",
            source = {
                type = "Item",
                id = 30282,
                location = "Drop",
            },
            product = { itemId = 30037, },
            materials = {
                { name = "Primal Nether", itemId = 23572, quantity = 2 },
                { name = "Shadowcloth", itemId = 24272, quantity = 4 },
                { name = "Spellcloth", itemId = 24271, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 1
        },
        {
            id = 36316,
            name = "Belt of the Long Road",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_05",
            source = {
                type = "Item",
                id = 30281,
                location = "Drop",
            },
            product = { itemId = 30036, },
            materials = {
                { name = "Nether Vortex", itemId = 30183, quantity = 2 },
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Primal Life", itemId = 21886, quantity = 10 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
                { name = "Primal Water", itemId = 21885, quantity = 10 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 2
        },
        {
            id = 36318,
            name = "Boots of the Long Road",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_cloth_14",
            source = {
                type = "Item",
                id = 30283,
                location = "Drop",
            },
            product = { itemId = 30035, },
            materials = {
                { name = "Primal Nether", itemId = 23572, quantity = 2 },
                { name = "Primal Mooncloth", itemId = 21845, quantity = 4 },
                { name = "Spellcloth", itemId = 24271, quantity = 4 },
                { name = "Rune Thread", itemId = 14341, quantity = 2 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 2
        },
        {
            id = 40020,
            name = "Soulguard Slippers",
            category = "Feet",
            texture = "Interface/ICONS/inv_boots_cloth_10",
            source = {
                type = "Item",
                id = 32437,
                location = "Okuno, Black Temple",
            },
            product = { itemId = 32391, },
            materials = {
                { name = "Heart of Darkness", itemId = 32428, quantity = 2 },
                { name = "Void Crystal", itemId = 22450, },
                { name = "Primal Life", itemId = 21886, quantity = 2 },
                { name = "Primal Shadow", itemId = 22456, quantity = 4 },
                { name = "Bolt of Imbued Netherweave", itemId = 21842, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
        {
            id = 40021,
            name = "Soulguard Bracers",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_09",
            source = {
                type = "Item",
                id = 32438,
                location = "Okuno, Black Temple",
            },
            product = { itemId = 32392, },
            materials = {
                { name = "Heart of Darkness", itemId = 32428, },
                { name = "Void Crystal", itemId = 22450, },
                { name = "Primal Life", itemId = 21886, quantity = 2 },
                { name = "Primal Shadow", itemId = 22456, quantity = 2 },
                { name = "Bolt of Imbued Netherweave", itemId = 21842, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
        {
            id = 40023,
            name = "Soulguard Leggings",
            category = "Legs",
            texture = "Interface/ICONS/inv_pants_cloth_09",
            source = {
                type = "Item",
                id = 32439,
                location = "Okuno, Black Temple",
            },
            product = { itemId = 32389, },
            materials = {
                { name = "Heart of Darkness", itemId = 32428, quantity = 3 },
                { name = "Void Crystal", itemId = 22450, },
                { name = "Primal Life", itemId = 21886, quantity = 4 },
                { name = "Primal Shadow", itemId = 22456, quantity = 6 },
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 2 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
        {
            id = 40024,
            name = "Soulguard Girdle",
            category = "Waist",
            texture = "Interface/ICONS/inv_belt_07",
            source = {
                type = "Item",
                id = 32440,
                location = "Okuno, Black Temple",
            },
            product = { itemId = 32390, },
            materials = {
                { name = "Heart of Darkness", itemId = 32428, quantity = 2 },
                { name = "Void Crystal", itemId = 22450, },
                { name = "Primal Life", itemId = 21886, quantity = 3 },
                { name = "Primal Shadow", itemId = 22456, quantity = 4 },
                { name = "Bolt of Imbued Netherweave", itemId = 21842, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
        {
            id = 40060,
            name = "Night's End",
            category = "Back",
            texture = "Interface/ICONS/inv_misc_cape_20",
            source = {
                type = "Item",
                id = 32447,
                location = "Okuno, Black Temple",
            },
            product = { itemId = 32420, },
            materials = {
                { name = "Heart of Darkness", itemId = 32428, },
                { name = "Void Crystal", itemId = 22450, },
                { name = "Primal Life", itemId = 21886, quantity = 2 },
                { name = "Primal Shadow", itemId = 22456, quantity = 2 },
                { name = "Bolt of Imbued Netherweave", itemId = 21842, },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
        {
            id = 41205,
            name = "Bracers of Nimble Thought",
            category = "Wrist",
            texture = "Interface/ICONS/inv_bracer_13",
            source = {
                type = "Item",
                id = 32754,
                location = "Drop",
            },
            product = { itemId = 32586, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 3 },
                { name = "Spellcloth", itemId = 24271, quantity = 4 },
                { name = "Primal Mana", itemId = 22457, quantity = 8 },
                { name = "Heart of Darkness", itemId = 32428, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
        {
            id = 41206,
            name = "Mantle of Nimble Thought",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_02",
            source = {
                type = "Item",
                id = 32755,
                location = "Drop",
            },
            product = { itemId = 32587, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Spellcloth", itemId = 24271, quantity = 2 },
                { name = "Primal Mana", itemId = 22457, quantity = 6 },
                { name = "Heart of Darkness", itemId = 32428, quantity = 2 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
        {
            id = 41207,
            name = "Swiftheal Wraps",
            category = "Hands",
            texture = "Interface/ICONS/inv_bracer_13",
            source = {
                type = "Item",
                id = 32752,
                location = "Drop",
            },
            product = { itemId = 32584, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 3 },
                { name = "Primal Mooncloth", itemId = 21845, quantity = 4 },
                { name = "Primal Life", itemId = 21886, quantity = 8 },
                { name = "Heart of Darkness", itemId = 32428, quantity = 4 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
        {
            id = 41208,
            name = "Swiftheal Mantle",
            category = "Shoulder",
            texture = "Interface/ICONS/inv_shoulder_25",
            source = {
                type = "Item",
                id = 32753,
                location = "Drop",
            },
            product = { itemId = 32585, },
            materials = {
                { name = "Bolt of Imbued Netherweave", itemId = 21842, quantity = 4 },
                { name = "Primal Mooncloth", itemId = 21845, quantity = 2 },
                { name = "Primal Life", itemId = 21886, quantity = 6 },
                { name = "Heart of Darkness", itemId = 32428, quantity = 2 },
            },
            levels = { 375, 385, 390, 395 },
            phase = 3
        },
    },
}

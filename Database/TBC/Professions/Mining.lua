local _, TFG = ...

TFG.MINING_TBC = {
    [1] = {
        {
            spell_id = 2575,
            name = "Mining",
            icon = "trade_mining",
            source = {
                type = "Trainer",
                cost = 10,
            },
        },
        {
            spell_id = 2580,
            name = "Find Minerals",
            icon = "spell_nature_earthquake",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 2656,
            name = "Smelting",
            icon = "spell_fire_flameblades",
            source = {
                type = "Trainer",
            },
        },
        {
            item_id = 2770,
            name = "Copper Vein",
            icon = "inv_ore_copper_01",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 22967,
            name = "Smelt Elementium",
            icon = "inv_ingot_thorium",
            source = {
                type = "Trainer",
            },
            product = { item_id = 17771, qty = 1 },
            materials = {
                { item_id = 18562, qty = 1 },
                { item_id = 12360, qty = 10 },
                { item_id = 17010, qty = 1 },
                { item_id = 18567, qty = 3 },
            },
            levels = { 1, 350, 362, 375 },
        },
    },
    [25] = {
        {
            spell_id = 2657,
            name = "Smelt Copper",
            icon = "inv_ingot_02",
            source = {
                type = "Trainer",
            },
            product = { item_id = 2840, qty = 1 },
            materials = {
                { item_id = 2770, qty = 1 },
            },
            levels = { 1, 25, 47, 70 },
        },
    },
    [50] = {
        {
            spell_id = 2576,
            name = "Mining",
            icon = "trade_mining",
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
    },
    [65] = {
        {
            item_id = 2771,
            name = "Tin Vein",
            icon = "inv_ore_tin_01",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 2659,
            name = "Smelt Bronze",
            icon = "inv_ingot_bronze",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { item_id = 2841, qty = 2 },
            materials = {
                { item_id = 2840, qty = 1 },
                { item_id = 3576, qty = 1 },
            },
            levels = { 65, 65, 90, 115 },
        },
        {
            spell_id = 3304,
            name = "Smelt Tin",
            icon = "inv_ingot_05",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { item_id = 3576, qty = 1 },
            materials = {
                { item_id = 2771, qty = 1 },
            },
            levels = { 65, 65, 70, 75 },
        },
    },
    [75] = {
        {
            item_id = 2775,
            name = "Silver Vein",
            icon = "inv_stone_16",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 2658,
            name = "Smelt Silver",
            icon = "inv_ingot_01",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { item_id = 2842, qty = 1 },
            materials = {
                { item_id = 2775, qty = 1 },
            },
            levels = { 75, 115, 122, 130 },
        },
    },
    [125] = {
        {
            spell_id = 3564,
            name = "Mining",
            icon = "trade_mining",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            item_id = 2772,
            name = "Iron Deposit",
            icon = "inv_ore_iron_01",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 3307,
            name = "Smelt Iron",
            icon = "inv_ingot_iron",
            source = {
                type = "Trainer",
                cost = 500,
            },
            product = { item_id = 3575, qty = 1 },
            materials = {
                { item_id = 2772, qty = 1 },
            },
            levels = { 125, 130, 145, 160 },
        },
    },
    [155] = {
        {
            item_id = 2776,
            name = "Gold Vein",
            icon = "inv_ore_copper_01",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 3308,
            name = "Smelt Gold",
            icon = "inv_ingot_03",
            source = {
                type = "Trainer",
                cost = 2500,
            },
            product = { item_id = 3577, qty = 1 },
            materials = {
                { item_id = 2776, qty = 1 },
            },
            levels = { 155, 170, 177, 185 },
        },
    },
    [165] = {
        {
            spell_id = 3569,
            name = "Smelt Steel",
            icon = "inv_ingot_steel",
            source = {
                type = "Trainer",
                cost = 2500,
            },
            product = { item_id = 3859, qty = 1 },
            materials = {
                { item_id = 3575, qty = 1 },
                { item_id = 3857, qty = 1 },
            },
            levels = { 165, 165, 165, 165 },
        },
    },
    [175] = {
        {
            item_id = 3858,
            name = "Mithril Deposit",
            icon = "inv_ore_mithril_02",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 10097,
            name = "Smelt Mithril",
            icon = "inv_ingot_06",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { item_id = 3860, qty = 1 },
            materials = {
                { item_id = 3858, qty = 1 },
            },
            levels = { 175, 175, 202, 230 },
        },
    },
    [200] = {
        {
            spell_id = 10248,
            name = "Mining",
            icon = "trade_mining",
            source = {
                type = "Trainer",
                cost = 50000,
            },
        },
    },
    [230] = {
        {
            item_id = 11370,
            name = "Dark Iron Deposit",
            icon = "inv_ore_mithril_01",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 14891,
            name = "Smelt Dark Iron",
            icon = "inv_ingot_mithril",
            source = {
                type = "Quest",
                quest_ids = { 4083 },
            },
            product = { item_id = 11371, qty = 1 },
            materials = {
                { item_id = 11370, qty = 8 },
            },
            levels = { 230, 300, 305, 310 },
        },
        {
            item_id = 7911,
            name = "Truesilver Deposit",
            icon = "inv_ore_truesilver_01",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 10098,
            name = "Smelt Truesilver",
            icon = "inv_ingot_08",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 6037, qty = 1 },
            materials = {
                { item_id = 7911, qty = 1 },
            },
            levels = { 230, 250, 270, 290 },
        },
    },
    [245] = {
        {
            item_id = 10620,
            name = "Small Thorium Vein",
            icon = "inv_ore_thorium_02",
            source = {
                type = "Trainer",
            },
        },
    },
    [250] = {
        {
            spell_id = 16153,
            name = "Smelt Thorium",
            icon = "inv_ingot_07",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { item_id = 12359, qty = 1 },
            materials = {
                { item_id = 10620, qty = 1 },
            },
            levels = { 250, 250, 270, 290 },
        },
    },
    [275] = {
        {
            spell_id = 29354,
            name = "Mining",
            icon = "trade_mining",
            source = {
                type = "Trainer",
                cost = 100000,
            },
        },
        {
            item_id = 10620,
            name = "Rich Thorium Vein",
            icon = "inv_ore_thorium_02",
            source = {
                type = "Trainer",
            },
        },
    },
    [300] = {
        {
            item_id = 23424,
            name = "Fel Iron Deposit",
            icon = "inv_ore_feliron",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 29356,
            name = "Smelt Fel Iron",
            icon = "inv_ingot_feliron",
            source = {
                type = "Trainer",
                cost = 40000,
            },
            product = { item_id = 23445, qty = 1 },
            materials = {
                { item_id = 23424, qty = 2 },
            },
            levels = { 300, 300, 307, 315 },
        },
        {
            spell_id = 35750,
            name = "Earth Shatter",
            icon = "inv_elemental_mote_earth01",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 22573, qty = 10 },
            materials = {
                { item_id = 22452, qty = 1 },
            },
            levels = { 300, 300, 300, 300 },
        },
        {
            spell_id = 35751,
            name = "Fire Sunder",
            icon = "inv_elemental_mote_fire01",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 22574, qty = 10 },
            materials = {
                { item_id = 21884, qty = 1 },
            },
            levels = { 300, 300, 300, 300 },
        },
    },
    [305] = {
        {
            item_id = 22203,
            name = "Obsidian Chunk",
            icon = "inv_stone_15",
            source = {
                type = "Trainer",
            },
        },
    },
    [325] = {
        {
            item_id = 23425,
            name = "Adamantite Deposit",
            icon = "inv_ore_adamantium",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 29358,
            name = "Smelt Adamantite",
            icon = "inv_ingot_10",
            source = {
                type = "Trainer",
                cost = 40000,
            },
            product = { item_id = 23446, qty = 1 },
            materials = {
                { item_id = 23425, qty = 2 },
            },
            levels = { 325, 325, 332, 340 },
        },
    },
    [350] = {
        {
            item_id = 23425,
            name = "Rich Adamantite Deposit",
            icon = "inv_ore_adamantium",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 29360,
            name = "Smelt Felsteel",
            icon = "inv_ingot_felsteel",
            source = {
                type = "Trainer",
                cost = 40000,
            },
            product = { item_id = 23448, qty = 1 },
            materials = {
                { item_id = 23445, qty = 3 },
                { item_id = 23447, qty = 2 },
            },
            levels = { 350, 355, 367, 380 },
        },
        {
            spell_id = 29359,
            name = "Smelt Eternium",
            icon = "inv_ingot_11",
            source = {
                type = "Trainer",
                cost = 40000,
            },
            product = { item_id = 23447, qty = 1 },
            materials = {
                { item_id = 23427, qty = 2 },
            },
            levels = { 350, 350, 357, 365 },
        },
    },
    [375] = {
        {
            item_id = 23426,
            name = "Khorium Vein",
            icon = "inv_ore_khorium",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 29361,
            name = "Smelt Khorium",
            icon = "inv_ingot_09",
            source = {
                type = "Trainer",
                cost = 100000,
            },
            product = { item_id = 23449, qty = 1 },
            materials = {
                { item_id = 23426, qty = 2 },
            },
            levels = { 375, 375, 375, 375 },
        },
        {
            spell_id = 29686,
            name = "Smelt Hardened Adamantite",
            icon = "inv_ingot_adamantite",
            source = {
                type = "Trainer",
                cost = 100000,
            },
            product = { item_id = 23573, qty = 1 },
            materials = {
                { item_id = 23446, qty = 10 },
            },
            levels = { 375, 375, 375, 375 },
        },
        {
            spell_id = 46353,
            name = "Smelt Hardened Khorium",
            icon = "inv_ingot_thorium",
            source = {
                type = "Item",
                recipe_item_ids = { 35273 },
            },
            product = { item_id = 35128, qty = 1 },
            materials = {
                { item_id = 23449, qty = 3 },
                { item_id = 23573, qty = 1 },
            },
            levels = { 375, 375, 375, 375 },
        },
    },
}

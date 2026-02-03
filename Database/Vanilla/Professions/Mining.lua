local _, TFG = ...

TFG.MINING_VANILLA = {
    [1] = {
        {
            spell_id = 2580,
            name = "Find Minerals",
            icon = "spell_nature_earthquake",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 2575,
            name = "Mining",
            icon = "trade_mining",
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
            },
        },
    },
    [65] = {
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
                { item_id = 2771, qty = 1 },
            },
            levels = { 65, 65, 62, 75 },
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
                { item_id = 2840, qty = 1 },
                { item_id = 3576, qty = 1 },
            },
            levels = { 65, 65, 90, 115 },
        },
    },
    [75] = {
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
                { item_id = 2775, qty = 1 },
            },
            levels = { 75, 100, 112, 125 },
        },
    },
    [125] = {
        {
            spell_id = 3564,
            name = "Mining",
            icon = "trade_mining",
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
                { item_id = 2772, qty = 1 },
            },
            levels = { 125, 130, 135, 140 },
        },
    },
    [155] = {
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
                { item_id = 3575, qty = 1 },
                { item_id = 3857, qty = 1 },
            },
            levels = { 165, 165, 165, 165 },
        },
    },
    [175] = {
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
                { item_id = 3858, qty = 1 },
            },
            levels = { 175, 175, 175, 175 },
        },
    },
    [200] = {
        {
            spell_id = 10248,
            name = "Mining",
            icon = "trade_mining",
            source = {
                type = "Trainer",
            },
        },
    },
    [230] = {
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
                { item_id = 7911, qty = 1 },
            },
            levels = { 230, 230, 230, 230 },
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
                { item_id = 11370, qty = 8 },
            },
            levels = { 230, 230, 230, 230 },
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
                { item_id = 10620, qty = 1 },
            },
            levels = { 250, 250, 250, 250 },
        },
    },
    [310] = {
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
                { item_id = 18562, qty = 1 },
                { item_id = 12360, qty = 10 },
                { item_id = 17010, qty = 1 },
                { item_id = 18567, qty = 3 },
            },
            levels = { 300, 310, 315, 320 },
        },
    },
}

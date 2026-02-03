local _, TFG = ...

TFG.FIRSTAID_VANILLA = {
    [1] = {
        {
            spell_id = 3275,
            name = "Linen Bandage",
            icon = "inv_misc_bandage_15",
            source = {
                type = "Trainer",
            },
            product = { item_id = 1251, qty = 1 },
            materials = {
                { item_id = 2589, qty = 1 },
            },
            levels = { 1, 30, 45, 60 },
        },
        {
            spell_id = 3273,
            name = "First Aid",
            icon = "spell_holy_sealofsacrifice",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 10846,
            name = "First Aid",
            icon = "spell_holy_sealofsacrifice",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 7924,
            name = "First Aid",
            icon = "spell_holy_sealofsacrifice",
            source = {
                type = "Trainer",
            },
        },
    },
    [40] = {
        {
            spell_id = 3276,
            name = "Heavy Linen Bandage",
            icon = "inv_misc_bandage_18",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { item_id = 2581, qty = 1 },
            materials = {
                { item_id = 2589, qty = 2 },
            },
            levels = { 40, 50, 75, 100 },
        },
    },
    [50] = {
        {
            spell_id = 3274,
            name = "First Aid",
            icon = "spell_holy_sealofsacrifice",
            source = {
                type = "Trainer",
            },
        },
    },
    [80] = {
        {
            spell_id = 7934,
            name = "Anti-Venom",
            icon = "inv_misc_slime_01",
            source = {
                type = "Trainer",
                cost = 250,
            },
            product = { item_id = 6452, qty = 3 },
            materials = {
                { item_id = 1475, qty = 1 },
            },
            levels = { 80, 80, 115, 150 },
        },
        {
            spell_id = 3277,
            name = "Wool Bandage",
            icon = "inv_misc_bandage_14",
            source = {
                type = "Trainer",
                cost = 250,
            },
            product = { item_id = 3530, qty = 1 },
            materials = {
                { item_id = 2592, qty = 1 },
            },
            levels = { 80, 80, 115, 150 },
        },
    },
    [115] = {
        {
            spell_id = 3278,
            name = "Heavy Wool Bandage",
            icon = "inv_misc_bandage_17",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { item_id = 3531, qty = 1 },
            materials = {
                { item_id = 2592, qty = 2 },
            },
            levels = { 115, 115, 150, 185 },
        },
    },
    [130] = {
        {
            spell_id = 7935,
            name = "Strong Anti-Venom",
            icon = "inv_misc_slime_01",
            source = {
                type = "Item",
                recipe_item_ids = { 6454 },
            },
            product = { item_id = 6453, qty = 3 },
            materials = {
                { item_id = 1288, qty = 1 },
            },
            levels = { 130, 130, 165, 200 },
        },
    },
    [150] = {
        {
            spell_id = 7928,
            name = "Silk Bandage",
            icon = "inv_misc_bandage_01",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { item_id = 6450, qty = 1 },
            materials = {
                { item_id = 4306, qty = 1 },
            },
            levels = { 150, 150, 180, 210 },
        },
    },
    [180] = {
        {
            spell_id = 7929,
            name = "Heavy Silk Bandage",
            icon = "inv_misc_bandage_02",
            source = {
                type = "Item",
                recipe_item_ids = { 16112 },
            },
            product = { item_id = 6451, qty = 1 },
            materials = {
                { item_id = 4306, qty = 2 },
            },
            levels = { 180, 180, 210, 240 },
        },
    },
    [210] = {
        {
            spell_id = 10840,
            name = "Mageweave Bandage",
            icon = "inv_misc_bandage_19",
            source = {
                type = "Item",
                recipe_item_ids = { 16113 },
            },
            product = { item_id = 8544, qty = 1 },
            materials = {
                { item_id = 4338, qty = 1 },
            },
            levels = { 210, 210, 240, 270 },
        },
    },
    [240] = {
        {
            spell_id = 10841,
            name = "Heavy Mageweave Bandage",
            icon = "inv_misc_bandage_20",
            source = {
                type = "Trainer",
            },
            product = { item_id = 8545, qty = 1 },
            materials = {
                { item_id = 4338, qty = 2 },
            },
            levels = { 240, 240, 270, 300 },
        },
    },
    [260] = {
        {
            spell_id = 18629,
            name = "Runecloth Bandage",
            icon = "inv_misc_bandage_11",
            source = {
                type = "Trainer",
            },
            product = { item_id = 14529, qty = 1 },
            materials = {
                { item_id = 14047, qty = 1 },
            },
            levels = { 260, 260, 290, 320 },
        },
    },
    [290] = {
        {
            spell_id = 18630,
            name = "Heavy Runecloth Bandage",
            icon = "inv_misc_bandage_12",
            source = {
                type = "Trainer",
            },
            product = { item_id = 14530, qty = 1 },
            materials = {
                { item_id = 14047, qty = 2 },
            },
            levels = { 290, 290, 320, 350 },
        },
    },
    [300] = {
        {
            spell_id = 23787,
            name = "Powerful Anti-Venom",
            icon = "inv_drink_14",
            source = {
                type = "Item",
                recipe_item_ids = { 19442 },
            },
            product = { item_id = 19440, qty = 1 },
            materials = {
                { item_id = 19441, qty = 1 },
            },
            levels = { 300, 300, 330, 360 },
        },
    },
}

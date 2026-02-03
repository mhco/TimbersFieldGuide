local _, TFG = ...

TFG.ALCHEMY_VANILLA = {
    [1] = {
        {
            spell_id = 2329,
            name = "Elixir of Lion's Strength",
            icon = "inv_potion_56",
            source = {
                type = "Trainer",
            },
            product = { item_id = 2454, qty = 1 },
            materials = {
                { item_id = 2449, qty = 1 },
                { item_id = 765, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 1, 55, 75, 95 },
        },
        {
            spell_id = 7183,
            name = "Elixir of Minor Defense",
            icon = "inv_potion_63",
            source = {
                type = "Trainer",
            },
            product = { item_id = 5997, qty = 1 },
            materials = {
                { item_id = 765, qty = 2 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 1, 55, 75, 95 },
        },
        {
            spell_id = 2330,
            name = "Minor Healing Potion",
            icon = "inv_potion_49",
            source = {
                type = "Trainer",
            },
            product = { item_id = 118, qty = 1 },
            materials = {
                { item_id = 2447, qty = 1 },
                { item_id = 765, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 1, 55, 75, 95 },
        },
        {
            spell_id = 2259,
            name = "Alchemy",
            icon = "trade_alchemy",
            source = {
                type = "Trainer",
            },
        },
    },
    [15] = {
        {
            spell_id = 3170,
            name = "Weak Troll's Blood Potion",
            icon = "inv_potion_77",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { item_id = 3382, qty = 1 },
            materials = {
                { item_id = 2447, qty = 1 },
                { item_id = 2449, qty = 2 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 15, 60, 80, 100 },
        },
    },
    [25] = {
        {
            spell_id = 2331,
            name = "Minor Mana Potion",
            icon = "inv_potion_70",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { item_id = 2455, qty = 1 },
            materials = {
                { item_id = 785, qty = 1 },
                { item_id = 765, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 25, 65, 85, 105 },
        },
    },
    [40] = {
        {
            spell_id = 2332,
            name = "Minor Rejuvenation Potion",
            icon = "inv_potion_02",
            source = {
                type = "Trainer",
                cost = 150,
            },
            product = { item_id = 2456, qty = 1 },
            materials = {
                { item_id = 785, qty = 2 },
                { item_id = 2447, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 40, 70, 90, 110 },
        },
    },
    [50] = {
        {
            spell_id = 3101,
            name = "Alchemy",
            icon = "trade_alchemy",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 4508,
            name = "Discolored Healing Potion",
            icon = "inv_potion_35",
            source = {
                type = "Item",
                recipe_item_ids = { 4597 },
            },
            product = { item_id = 4596, qty = 1 },
            materials = {
                { item_id = 3164, qty = 1 },
                { item_id = 2447, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 50, 80, 100, 120 },
        },
        {
            spell_id = 3230,
            name = "Elixir of Minor Agility",
            icon = "inv_potion_91",
            source = {
                type = "Item",
                recipe_item_ids = { 2553 },
            },
            product = { item_id = 2457, qty = 1 },
            materials = {
                { item_id = 2452, qty = 1 },
                { item_id = 765, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 50, 80, 100, 120 },
        },
        {
            spell_id = 2334,
            name = "Elixir of Minor Fortitude",
            icon = "inv_potion_42",
            source = {
                type = "Trainer",
                cost = 250,
            },
            product = { item_id = 2458, qty = 1 },
            materials = {
                { item_id = 2449, qty = 2 },
                { item_id = 2447, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 50, 80, 100, 120 },
        },
    },
    [55] = {
        {
            spell_id = 2337,
            name = "Lesser Healing Potion",
            icon = "inv_potion_50",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { item_id = 858, qty = 1 },
            materials = {
                { item_id = 118, qty = 1 },
                { item_id = 2450, qty = 1 },
            },
            levels = { 55, 85, 105, 125 },
        },
    },
    [60] = {
        {
            spell_id = 6617,
            name = "Rage Potion",
            icon = "inv_potion_24",
            source = {
                type = "Item",
                recipe_item_ids = { 5640 },
            },
            product = { item_id = 5631, qty = 1 },
            materials = {
                { item_id = 5635, qty = 1 },
                { item_id = 2450, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 60, 90, 110, 130 },
        },
        {
            spell_id = 2335,
            name = "Swiftness Potion",
            icon = "inv_potion_95",
            source = {
                type = "Item",
                recipe_item_ids = { 2555 },
            },
            product = { item_id = 2459, qty = 1 },
            materials = {
                { item_id = 2452, qty = 1 },
                { item_id = 2450, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 60, 90, 110, 130 },
        },
    },
    [80] = {
        {
            spell_id = 7836,
            name = "Blackmouth Oil",
            icon = "inv_drink_12",
            source = {
                type = "Trainer",
                cost = 250,
            },
            product = { item_id = 6370, qty = 1 },
            materials = {
                { item_id = 6358, qty = 2 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 80, 80, 90, 100 },
        },
    },
    [90] = {
        {
            spell_id = 8240,
            name = "Elixir of Giant Growth",
            icon = "inv_potion_10",
            source = {
                type = "Item",
                recipe_item_ids = { 6663 },
            },
            product = { item_id = 6662, qty = 1 },
            materials = {
                { item_id = 6522, qty = 1 },
                { item_id = 2449, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 90, 120, 140, 160 },
        },
        {
            spell_id = 7179,
            name = "Elixir of Water Breathing",
            icon = "inv_potion_17",
            source = {
                type = "Trainer",
                cost = 450,
            },
            product = { item_id = 5996, qty = 1 },
            materials = {
                { item_id = 3820, qty = 1 },
                { item_id = 6370, qty = 2 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 90, 120, 140, 160 },
        },
        {
            spell_id = 3171,
            name = "Elixir of Wisdom",
            icon = "inv_potion_06",
            source = {
                type = "Trainer",
                cost = 500,
            },
            product = { item_id = 3383, qty = 1 },
            materials = {
                { item_id = 785, qty = 1 },
                { item_id = 2450, qty = 2 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 90, 120, 140, 160 },
        },
    },
    [100] = {
        {
            spell_id = 7255,
            name = "Holy Protection Potion",
            icon = "inv_potion_09",
            source = {
                type = "Item",
                recipe_item_ids = { 6053 },
            },
            product = { item_id = 6051, qty = 1 },
            materials = {
                { item_id = 2453, qty = 1 },
                { item_id = 2452, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 100, 130, 150, 170 },
        },
        {
            spell_id = 7841,
            name = "Swim Speed Potion",
            icon = "inv_potion_13",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { item_id = 6372, qty = 1 },
            materials = {
                { item_id = 2452, qty = 1 },
                { item_id = 6370, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 100, 130, 150, 170 },
        },
    },
    [110] = {
        {
            spell_id = 3447,
            name = "Healing Potion",
            icon = "inv_potion_51",
            source = {
                type = "Trainer",
                cost = 4000,
            },
            product = { item_id = 929, qty = 1 },
            materials = {
                { item_id = 2453, qty = 1 },
                { item_id = 2450, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 110, 135, 155, 175 },
        },
        {
            spell_id = 3172,
            name = "Minor Magic Resistance Potion",
            icon = "inv_potion_08",
            source = {
                type = "Item",
                recipe_item_ids = { 3393 },
            },
            product = { item_id = 3384, qty = 1 },
            materials = {
                { item_id = 785, qty = 3 },
                { item_id = 3355, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 110, 135, 155, 175 },
        },
    },
    [120] = {
        {
            spell_id = 3174,
            name = "Elixir of Poison Resistance",
            icon = "inv_potion_12",
            source = {
                type = "Item",
                recipe_item_ids = { 3394 },
            },
            product = { item_id = 3386, qty = 1 },
            materials = {
                { item_id = 1288, qty = 1 },
                { item_id = 2453, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 120, 145, 165, 185 },
        },
        {
            spell_id = 3173,
            name = "Lesser Mana Potion",
            icon = "inv_potion_71",
            source = {
                type = "Trainer",
                cost = 1500,
            },
            product = { item_id = 3385, qty = 1 },
            materials = {
                { item_id = 785, qty = 1 },
                { item_id = 3820, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 120, 145, 165, 185 },
        },
    },
    [125] = {
        {
            spell_id = 3464,
            name = "Alchemy",
            icon = "trade_alchemy",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 3176,
            name = "Strong Troll's Blood Potion",
            icon = "inv_potion_78",
            source = {
                type = "Trainer",
                cost = 1500,
            },
            product = { item_id = 3388, qty = 1 },
            materials = {
                { item_id = 2453, qty = 2 },
                { item_id = 2450, qty = 2 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 125, 150, 170, 190 },
        },
    },
    [130] = {
        {
            spell_id = 7837,
            name = "Fire Oil",
            icon = "inv_potion_38",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { item_id = 6371, qty = 1 },
            materials = {
                { item_id = 6359, qty = 2 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 130, 150, 160, 170 },
        },
        {
            spell_id = 3177,
            name = "Elixir of Defense",
            icon = "inv_potion_64",
            source = {
                type = "Trainer",
                cost = 2000,
            },
            product = { item_id = 3389, qty = 1 },
            materials = {
                { item_id = 3355, qty = 1 },
                { item_id = 3820, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 130, 155, 175, 195 },
        },
    },
    [135] = {
        {
            spell_id = 7256,
            name = "Shadow Protection Potion",
            icon = "inv_potion_44",
            source = {
                type = "Item",
                recipe_item_ids = { 6054 },
            },
            product = { item_id = 6048, qty = 1 },
            materials = {
                { item_id = 3369, qty = 1 },
                { item_id = 3356, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 135, 160, 180, 200 },
        },
    },
    [140] = {
        {
            spell_id = 7845,
            name = "Elixir of Firepower",
            icon = "inv_potion_33",
            source = {
                type = "Trainer",
                cost = 3000,
            },
            product = { item_id = 6373, qty = 1 },
            materials = {
                { item_id = 6371, qty = 2 },
                { item_id = 3356, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 140, 165, 185, 205 },
        },
        {
            spell_id = 2333,
            name = "Elixir of Lesser Agility",
            icon = "inv_potion_92",
            source = {
                type = "Item",
                recipe_item_ids = { 3396 },
            },
            product = { item_id = 3390, qty = 1 },
            materials = {
                { item_id = 3355, qty = 1 },
                { item_id = 2452, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 140, 165, 185, 205 },
        },
    },
    [150] = {
        {
            spell_id = 3188,
            name = "Elixir of Ogre's Strength",
            icon = "inv_potion_57",
            source = {
                type = "Item",
                recipe_item_ids = { 6211 },
            },
            product = { item_id = 3391, qty = 1 },
            materials = {
                { item_id = 2449, qty = 1 },
                { item_id = 3356, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 150, 175, 195, 215 },
        },
        {
            spell_id = 6624,
            name = "Free Action Potion",
            icon = "inv_potion_04",
            source = {
                type = "Item",
                recipe_item_ids = { 5642 },
            },
            product = { item_id = 5634, qty = 1 },
            materials = {
                { item_id = 6370, qty = 2 },
                { item_id = 3820, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 150, 175, 195, 215 },
        },
    },
    [155] = {
        {
            spell_id = 7181,
            name = "Greater Healing Potion",
            icon = "inv_potion_52",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { item_id = 1710, qty = 1 },
            materials = {
                { item_id = 3357, qty = 1 },
                { item_id = 3356, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 155, 175, 195, 215 },
        },
    },
    [160] = {
        {
            spell_id = 3452,
            name = "Mana Potion",
            icon = "inv_potion_72",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { item_id = 3827, qty = 1 },
            materials = {
                { item_id = 3820, qty = 1 },
                { item_id = 3356, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 160, 180, 200, 220 },
        },
    },
    [165] = {
        {
            spell_id = 3448,
            name = "Lesser Invisibility Potion",
            icon = "inv_potion_18",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { item_id = 3823, qty = 1 },
            materials = {
                { item_id = 3818, qty = 1 },
                { item_id = 3355, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 165, 185, 205, 225 },
        },
        {
            spell_id = 3449,
            name = "Shadow Oil",
            icon = "inv_potion_23",
            source = {
                type = "Item",
                recipe_item_ids = { 6068 },
            },
            product = { item_id = 3824, qty = 1 },
            materials = {
                { item_id = 3818, qty = 4 },
                { item_id = 3369, qty = 4 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 165, 190, 210, 230 },
        },
        {
            spell_id = 7257,
            name = "Fire Protection Potion",
            icon = "inv_potion_16",
            source = {
                type = "Item",
                recipe_item_ids = { 6055 },
            },
            product = { item_id = 6049, qty = 1 },
            materials = {
                { item_id = 4402, qty = 1 },
                { item_id = 6371, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 165, 210, 230, 250 },
        },
    },
    [175] = {
        {
            spell_id = 3450,
            name = "Elixir of Fortitude",
            icon = "inv_potion_43",
            source = {
                type = "Item",
                recipe_item_ids = { 3830 },
                cost = 6000,
            },
            product = { item_id = 3825, qty = 1 },
            materials = {
                { item_id = 3355, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
        {
            spell_id = 6618,
            name = "Great Rage Potion",
            icon = "inv_potion_21",
            source = {
                type = "Item",
                recipe_item_ids = { 5643 },
            },
            product = { item_id = 5633, qty = 1 },
            materials = {
                { item_id = 5637, qty = 1 },
                { item_id = 3356, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
    },
    [180] = {
        {
            spell_id = 3451,
            name = "Mighty Troll's Blood Potion",
            icon = "inv_potion_79",
            source = {
                type = "Item",
                recipe_item_ids = { 3831 },
            },
            product = { item_id = 3826, qty = 1 },
            materials = {
                { item_id = 3357, qty = 1 },
                { item_id = 2453, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 180, 200, 220, 240 },
        },
    },
    [185] = {
        {
            spell_id = 11449,
            name = "Elixir of Agility",
            icon = "inv_potion_93",
            source = {
                type = "Trainer",
                cost = 6500,
            },
            product = { item_id = 8949, qty = 1 },
            materials = {
                { item_id = 3820, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 185, 205, 225, 245 },
        },
    },
    [190] = {
        {
            spell_id = 7258,
            name = "Frost Protection Potion",
            icon = "inv_potion_13",
            source = {
                type = "Item",
                recipe_item_ids = { 6056 },
            },
            product = { item_id = 6050, qty = 1 },
            materials = {
                { item_id = 3819, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 190, 205, 225, 245 },
        },
        {
            spell_id = 21923,
            name = "Elixir of Frost Power",
            icon = "inv_potion_03",
            source = {
                type = "Item",
                recipe_item_ids = { 17709 },
            },
            product = { item_id = 17708, qty = 1 },
            materials = {
                { item_id = 3819, qty = 2 },
                { item_id = 3358, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 190, 210, 230, 250 },
        },
        {
            spell_id = 7259,
            name = "Nature Protection Potion",
            icon = "inv_potion_06",
            source = {
                type = "Item",
                recipe_item_ids = { 6057 },
            },
            product = { item_id = 6052, qty = 1 },
            materials = {
                { item_id = 3357, qty = 1 },
                { item_id = 3820, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 190, 210, 230, 250 },
        },
    },
    [195] = {
        {
            spell_id = 3453,
            name = "Elixir of Detect Lesser Invisibility",
            icon = "inv_potion_01",
            source = {
                type = "Item",
                recipe_item_ids = { 3832 },
            },
            product = { item_id = 3828, qty = 1 },
            materials = {
                { item_id = 3358, qty = 1 },
                { item_id = 3818, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 195, 215, 235, 255 },
        },
        {
            spell_id = 11450,
            name = "Elixir of Greater Defense",
            icon = "inv_potion_65",
            source = {
                type = "Trainer",
                cost = 7500,
            },
            product = { item_id = 8951, qty = 1 },
            materials = {
                { item_id = 3355, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 195, 215, 235, 255 },
        },
    },
    [200] = {
        {
            spell_id = 11611,
            name = "Alchemy",
            icon = "trade_alchemy",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 12609,
            name = "Catseye Elixir",
            icon = "inv_potion_36",
            source = {
                type = "Trainer",
                cost = 8000,
            },
            product = { item_id = 10592, qty = 1 },
            materials = {
                { item_id = 3821, qty = 1 },
                { item_id = 3818, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 3454,
            name = "Frost Oil",
            icon = "inv_potion_20",
            source = {
                type = "Item",
                recipe_item_ids = { 14634 },
            },
            product = { item_id = 3829, qty = 1 },
            materials = {
                { item_id = 3358, qty = 4 },
                { item_id = 3819, qty = 2 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
    },
    [205] = {
        {
            spell_id = 11448,
            name = "Greater Mana Potion",
            icon = "inv_potion_73",
            source = {
                type = "Trainer",
                cost = 9000,
            },
            product = { item_id = 6149, qty = 1 },
            materials = {
                { item_id = 3358, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 205, 220, 240, 260 },
        },
        {
            spell_id = 11451,
            name = "Oil of Immolation",
            icon = "inv_potion_11",
            source = {
                type = "Trainer",
                cost = 8000,
            },
            product = { item_id = 8956, qty = 1 },
            materials = {
                { item_id = 4625, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 205, 220, 240, 260 },
        },
    },
    [210] = {
        {
            spell_id = 11456,
            name = "Goblin Rocket Fuel",
            icon = "inv_cask_02",
            source = {
                type = "Item",
                recipe_item_ids = { 10644 },
            },
            product = { item_id = 9061, qty = 1 },
            materials = {
                { item_id = 4625, qty = 1 },
                { item_id = 9260, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 11453,
            name = "Magic Resistance Potion",
            icon = "inv_potion_16",
            source = {
                type = "Item",
                recipe_item_ids = { 9293 },
            },
            product = { item_id = 9036, qty = 1 },
            materials = {
                { item_id = 3358, qty = 1 },
                { item_id = 8831, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 210, 225, 245, 265 },
        },
    },
    [215] = {
        {
            spell_id = 11452,
            name = "Restorative Potion",
            icon = "inv_potion_01",
            source = {
                type = "Quest",
                quest_ids = { 2203, 2501 },
            },
            product = { item_id = 9030, qty = 1 },
            materials = {
                { item_id = 7067, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 210, 225, 245, 265 },
        },
        {
            spell_id = 22808,
            name = "Elixir of Greater Water Breathing",
            icon = "inv_potion_05",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 18294, qty = 1 },
            materials = {
                { item_id = 7972, qty = 1 },
                { item_id = 8831, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 215, 230, 250, 270 },
        },
        {
            spell_id = 4942,
            name = "Lesser Stoneshield Potion",
            icon = "inv_potion_67",
            source = {
                type = "Item",
                recipe_item_ids = { 4624 },
            },
            product = { item_id = 4623, qty = 1 },
            materials = {
                { item_id = 3858, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 215, 230, 250, 270 },
        },
        {
            spell_id = 11457,
            name = "Superior Healing Potion",
            icon = "inv_potion_53",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 3928, qty = 1 },
            materials = {
                { item_id = 8838, qty = 1 },
                { item_id = 3358, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 215, 230, 250, 270 },
        },
    },
    [225] = {
        {
            spell_id = 11479,
            name = "Transmute: Iron to Gold",
            icon = "inv_ingot_03",
            source = {
                type = "Item",
                recipe_item_ids = { 9304 },
            },
            product = { item_id = 3577, qty = 1 },
            materials = {
                { item_id = 3575, qty = 1 },
            },
            levels = { 225, 240, 260, 280 },
        },
        {
            spell_id = 11480,
            name = "Transmute: Mithril to Truesilver",
            icon = "inv_ingot_08",
            source = {
                type = "Item",
                recipe_item_ids = { 9305 },
            },
            product = { item_id = 6037, qty = 1 },
            materials = {
                { item_id = 3860, qty = 1 },
            },
            levels = { 225, 240, 260, 280 },
        },
        {
            spell_id = 11459,
            name = "Philosophers' Stone",
            icon = "inv_misc_orb_01",
            source = {
                type = "Item",
                recipe_item_ids = { 9303 },
            },
            product = { item_id = 9149, qty = 1 },
            materials = {
                { item_id = 3575, qty = 4 },
                { item_id = 9262, qty = 1 },
                { item_id = 8831, qty = 4 },
                { item_id = 4625, qty = 4 },
            },
            levels = { 225, 240, 260, 280 },
        },
        {
            spell_id = 11458,
            name = "Wildvine Potion",
            icon = "inv_potion_34",
            source = {
                type = "Item",
                recipe_item_ids = { 9294 },
            },
            product = { item_id = 9144, qty = 1 },
            materials = {
                { item_id = 8153, qty = 1 },
                { item_id = 8831, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 225, 240, 260, 280 },
        },
    },
    [230] = {
        {
            spell_id = 15833,
            name = "Dreamless Sleep Potion",
            icon = "inv_potion_83",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 12190, qty = 1 },
            materials = {
                { item_id = 8831, qty = 3 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 230, 245, 265, 285 },
        },
        {
            spell_id = 11460,
            name = "Elixir of Detect Undead",
            icon = "inv_potion_53",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { item_id = 9154, qty = 1 },
            materials = {
                { item_id = 8836, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 230, 245, 265, 285 },
        },
    },
    [235] = {
        {
            spell_id = 11461,
            name = "Arcane Elixir",
            icon = "inv_potion_30",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 9155, qty = 1 },
            materials = {
                { item_id = 8839, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 235, 250, 270, 290 },
        },
        {
            spell_id = 11465,
            name = "Elixir of Greater Intellect",
            icon = "inv_potion_10",
            source = {
                type = "Trainer",
                cost = 12000,
            },
            product = { item_id = 9179, qty = 1 },
            materials = {
                { item_id = 8839, qty = 1 },
                { item_id = 3358, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 235, 250, 270, 290 },
        },
        {
            spell_id = 11464,
            name = "Invisibility Potion",
            icon = "inv_potion_25",
            source = {
                type = "Item",
                recipe_item_ids = { 9295 },
            },
            product = { item_id = 9172, qty = 1 },
            materials = {
                { item_id = 8845, qty = 1 },
                { item_id = 8838, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 235, 250, 270, 290 },
        },
    },
    [240] = {
        {
            spell_id = 11468,
            name = "Elixir of Dream Vision",
            icon = "inv_potion_14",
            source = {
                type = "Item",
                recipe_item_ids = { 9297 },
            },
            product = { item_id = 9197, qty = 1 },
            materials = {
                { item_id = 8831, qty = 3 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 240, 255, 275, 295 },
        },
        {
            spell_id = 11467,
            name = "Elixir of Greater Agility",
            icon = "inv_potion_94",
            source = {
                type = "Trainer",
                cost = 12000,
            },
            product = { item_id = 9187, qty = 1 },
            materials = {
                { item_id = 8838, qty = 1 },
                { item_id = 3821, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 240, 255, 275, 295 },
        },
        {
            spell_id = 11466,
            name = "Gift of Arthas",
            icon = "inv_potion_28",
            source = {
                type = "Item",
                recipe_item_ids = { 9296 },
            },
            product = { item_id = 9088, qty = 1 },
            materials = {
                { item_id = 8836, qty = 1 },
                { item_id = 8839, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 240, 255, 275, 295 },
        },
    },
    [245] = {
        {
            spell_id = 11472,
            name = "Elixir of Giants",
            icon = "inv_potion_61",
            source = {
                type = "Item",
                recipe_item_ids = { 9298 },
            },
            product = { item_id = 9206, qty = 1 },
            materials = {
                { item_id = 8838, qty = 1 },
                { item_id = 8846, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 245, 260, 280, 300 },
        },
        {
            spell_id = 11473,
            name = "Ghost Dye",
            icon = "inv_poison_mindnumbing",
            source = {
                type = "Item",
                recipe_item_ids = { 9302 },
            },
            product = { item_id = 9210, qty = 1 },
            materials = {
                { item_id = 8845, qty = 2 },
                { item_id = 4342, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 245, 260, 280, 300 },
        },
    },
    [250] = {
        {
            spell_id = 17551,
            name = "Stonescale Oil",
            icon = "inv_potion_68",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { item_id = 13423, qty = 1 },
            materials = {
                { item_id = 13422, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 250, 250, 255, 260 },
        },
        {
            spell_id = 11477,
            name = "Elixir of Demonslaying",
            icon = "inv_potion_27",
            source = {
                type = "Item",
                recipe_item_ids = { 9300 },
            },
            product = { item_id = 9224, qty = 1 },
            materials = {
                { item_id = 8846, qty = 1 },
                { item_id = 8845, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 250, 265, 285, 305 },
        },
        {
            spell_id = 11478,
            name = "Elixir of Detect Demon",
            icon = "inv_potion_53",
            source = {
                type = "Trainer",
                cost = 14000,
            },
            product = { item_id = 9233, qty = 1 },
            materials = {
                { item_id = 8846, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 250, 265, 285, 305 },
        },
        {
            spell_id = 26277,
            name = "Elixir of Greater Firepower",
            icon = "inv_potion_60",
            source = {
                type = "Item",
                recipe_item_ids = { 21547 },
            },
            product = { item_id = 21546, qty = 1 },
            materials = {
                { item_id = 6371, qty = 3 },
                { item_id = 4625, qty = 3 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 250, 265, 285, 305 },
        },
        {
            spell_id = 11476,
            name = "Elixir of Shadow Power",
            icon = "inv_potion_46",
            source = {
                type = "Item",
                recipe_item_ids = { 9301 },
            },
            product = { item_id = 9264, qty = 1 },
            materials = {
                { item_id = 8845, qty = 3 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 250, 265, 285, 305 },
        },
        {
            spell_id = 3175,
            name = "Limited Invulnerability Potion",
            icon = "inv_potion_62",
            source = {
                type = "Item",
                recipe_item_ids = { 3395 },
            },
            product = { item_id = 3387, qty = 1 },
            materials = {
                { item_id = 8839, qty = 2 },
                { item_id = 8845, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 250, 275, 295, 315 },
        },
    },
    [255] = {
        {
            spell_id = 17552,
            name = "Mighty Rage Potion",
            icon = "inv_potion_41",
            source = {
                type = "Item",
                recipe_item_ids = { 13476 },
            },
            product = { item_id = 13442, qty = 1 },
            materials = {
                { item_id = 8846, qty = 3 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 255, 270, 290, 310 },
        },
    },
    [260] = {
        {
            spell_id = 17553,
            name = "Superior Mana Potion",
            icon = "inv_potion_74",
            source = {
                type = "Item",
                recipe_item_ids = { 13477 },
            },
            product = { item_id = 13443, qty = 1 },
            materials = {
                { item_id = 8838, qty = 2 },
                { item_id = 8839, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 260, 275, 295, 315 },
        },
    },
    [265] = {
        {
            spell_id = 17554,
            name = "Elixir of Superior Defense",
            icon = "inv_potion_66",
            source = {
                type = "Item",
                recipe_item_ids = { 13478 },
            },
            product = { item_id = 13445, qty = 1 },
            materials = {
                { item_id = 13423, qty = 2 },
                { item_id = 8838, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 265, 280, 300, 320 },
        },
    },
    [270] = {
        {
            spell_id = 17555,
            name = "Elixir of the Sages",
            icon = "inv_potion_29",
            source = {
                type = "Item",
                recipe_item_ids = { 13479 },
            },
            product = { item_id = 13447, qty = 1 },
            materials = {
                { item_id = 13463, qty = 1 },
                { item_id = 13466, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 270, 285, 305, 325 },
        },
    },
    [275] = {
        {
            spell_id = 17559,
            name = "Transmute: Air to Fire",
            icon = "spell_fire_volcano",
            source = {
                type = "Item",
                recipe_item_ids = { 13482 },
            },
            product = { item_id = 7078, qty = 1 },
            materials = {
                { item_id = 7082, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17187,
            name = "Transmute: Arcanite",
            icon = "inv_misc_stonetablet_05",
            source = {
                type = "Item",
                recipe_item_ids = { 12958 },
            },
            product = { item_id = 12360, qty = 1 },
            materials = {
                { item_id = 12359, qty = 1 },
                { item_id = 12363, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17566,
            name = "Transmute: Earth to Life",
            icon = "spell_nature_abolishmagic",
            source = {
                type = "Item",
                recipe_item_ids = { 13489 },
            },
            product = { item_id = 12803, qty = 1 },
            materials = {
                { item_id = 7076, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17561,
            name = "Transmute: Earth to Water",
            icon = "spell_nature_acid_01",
            source = {
                type = "Item",
                recipe_item_ids = { 13484 },
            },
            product = { item_id = 7080, qty = 1 },
            materials = {
                { item_id = 7076, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17560,
            name = "Transmute: Fire to Earth",
            icon = "spell_nature_strengthofearthtotem02",
            source = {
                type = "Item",
                recipe_item_ids = { 13483 },
            },
            product = { item_id = 7076, qty = 1 },
            materials = {
                { item_id = 7078, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17565,
            name = "Transmute: Life to Earth",
            icon = "spell_nature_strengthofearthtotem02",
            source = {
                type = "Item",
                recipe_item_ids = { 13488 },
            },
            product = { item_id = 7076, qty = 1 },
            materials = {
                { item_id = 12803, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17563,
            name = "Transmute: Undeath to Water",
            icon = "spell_nature_acid_01",
            source = {
                type = "Item",
                recipe_item_ids = { 13486 },
            },
            product = { item_id = 7080, qty = 1 },
            materials = {
                { item_id = 12808, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17562,
            name = "Transmute: Water to Air",
            icon = "spell_nature_earthbind",
            source = {
                type = "Item",
                recipe_item_ids = { 13485 },
            },
            product = { item_id = 7082, qty = 1 },
            materials = {
                { item_id = 7080, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17564,
            name = "Transmute: Water to Undeath",
            icon = "spell_shadow_shadetruesight",
            source = {
                type = "Item",
                recipe_item_ids = { 13487 },
            },
            product = { item_id = 12808, qty = 1 },
            materials = {
                { item_id = 7080, qty = 1 },
            },
            levels = { 275, 275, 282, 290 },
        },
        {
            spell_id = 17557,
            name = "Elixir of Brute Force",
            icon = "inv_potion_40",
            source = {
                type = "Item",
                recipe_item_ids = { 13481 },
            },
            product = { item_id = 13453, qty = 1 },
            materials = {
                { item_id = 8846, qty = 2 },
                { item_id = 13466, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 275, 290, 310, 330 },
        },
        {
            spell_id = 24366,
            name = "Greater Dreamless Sleep Potion",
            icon = "inv_potion_83",
            source = {
                type = "Item",
                recipe_item_ids = { 20012 },
            },
            product = { item_id = 20002, qty = 1 },
            materials = {
                { item_id = 13463, qty = 2 },
                { item_id = 13464, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 275, 290, 310, 330 },
        },
        {
            spell_id = 24365,
            name = "Mageblood Potion",
            icon = "inv_potion_45",
            source = {
                type = "Item",
                recipe_item_ids = { 20011 },
            },
            product = { item_id = 20007, qty = 1 },
            materials = {
                { item_id = 13463, qty = 1 },
                { item_id = 13466, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 275, 290, 310, 330 },
        },
        {
            spell_id = 17556,
            name = "Major Healing Potion",
            icon = "inv_potion_54",
            source = {
                type = "Item",
                recipe_item_ids = { 13480 },
            },
            product = { item_id = 13446, qty = 1 },
            materials = {
                { item_id = 13464, qty = 2 },
                { item_id = 13465, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 275, 290, 310, 330 },
        },
    },
    [280] = {
        {
            spell_id = 17571,
            name = "Elixir of the Mongoose",
            icon = "inv_potion_32",
            source = {
                type = "Item",
                recipe_item_ids = { 13491 },
            },
            product = { item_id = 13452, qty = 1 },
            materials = {
                { item_id = 13465, qty = 2 },
                { item_id = 13466, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 280, 295, 315, 335 },
        },
        {
            spell_id = 17570,
            name = "Greater Stoneshield Potion",
            icon = "inv_potion_69",
            source = {
                type = "Item",
                recipe_item_ids = { 13490 },
            },
            product = { item_id = 13455, qty = 1 },
            materials = {
                { item_id = 13423, qty = 3 },
                { item_id = 10620, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 280, 295, 315, 335 },
        },
    },
    [285] = {
        {
            spell_id = 17573,
            name = "Greater Arcane Elixir",
            icon = "inv_potion_25",
            source = {
                type = "Item",
                recipe_item_ids = { 13493 },
            },
            product = { item_id = 13454, qty = 1 },
            materials = {
                { item_id = 13463, qty = 3 },
                { item_id = 13465, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 285, 300, 320, 340 },
        },
        {
            spell_id = 24367,
            name = "Living Action Potion",
            icon = "inv_potion_07",
            source = {
                type = "Item",
                recipe_item_ids = { 20013 },
            },
            product = { item_id = 20008, qty = 1 },
            materials = {
                { item_id = 13467, qty = 2 },
                { item_id = 13465, qty = 2 },
                { item_id = 10286, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 285, 300, 320, 340 },
        },
        {
            spell_id = 17572,
            name = "Purification Potion",
            icon = "inv_potion_31",
            source = {
                type = "Item",
                recipe_item_ids = { 13492 },
            },
            product = { item_id = 13462, qty = 1 },
            materials = {
                { item_id = 13467, qty = 2 },
                { item_id = 13466, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 285, 300, 320, 340 },
        },
    },
    [290] = {
        {
            spell_id = 17577,
            name = "Greater Arcane Protection Potion",
            icon = "inv_potion_83",
            source = {
                type = "Item",
                recipe_item_ids = { 13497 },
            },
            product = { item_id = 13461, qty = 1 },
            materials = {
                { item_id = 11176, qty = 1 },
                { item_id = 13463, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 290, 305, 325, 345 },
        },
        {
            spell_id = 17574,
            name = "Greater Fire Protection Potion",
            icon = "inv_potion_24",
            source = {
                type = "Item",
                recipe_item_ids = { 13494 },
            },
            product = { item_id = 13457, qty = 1 },
            materials = {
                { item_id = 7068, qty = 1 },
                { item_id = 13463, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 290, 305, 325, 345 },
        },
        {
            spell_id = 17575,
            name = "Greater Frost Protection Potion",
            icon = "inv_potion_20",
            source = {
                type = "Item",
                recipe_item_ids = { 13495 },
            },
            product = { item_id = 13456, qty = 1 },
            materials = {
                { item_id = 7070, qty = 1 },
                { item_id = 13463, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 290, 305, 325, 345 },
        },
        {
            spell_id = 17576,
            name = "Greater Nature Protection Potion",
            icon = "inv_potion_22",
            source = {
                type = "Item",
                recipe_item_ids = { 13496 },
            },
            product = { item_id = 13458, qty = 1 },
            materials = {
                { item_id = 7067, qty = 1 },
                { item_id = 13463, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 290, 305, 325, 345 },
        },
        {
            spell_id = 17578,
            name = "Greater Shadow Protection Potion",
            icon = "inv_potion_23",
            source = {
                type = "Item",
                recipe_item_ids = { 13499 },
            },
            product = { item_id = 13459, qty = 1 },
            materials = {
                { item_id = 3824, qty = 1 },
                { item_id = 13463, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 290, 305, 325, 345 },
        },
        {
            spell_id = 24368,
            name = "Major Troll's Blood Potion",
            icon = "inv_potion_80",
            source = {
                type = "Item",
                recipe_item_ids = { 20014 },
            },
            product = { item_id = 20004, qty = 1 },
            materials = {
                { item_id = 8846, qty = 1 },
                { item_id = 13466, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 290, 305, 325, 345 },
        },
    },
    [295] = {
        {
            spell_id = 17580,
            name = "Major Mana Potion",
            icon = "inv_potion_76",
            source = {
                type = "Item",
                recipe_item_ids = { 13501 },
            },
            product = { item_id = 13444, qty = 1 },
            materials = {
                { item_id = 13463, qty = 3 },
                { item_id = 13467, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 295, 310, 330, 350 },
        },
    },
    [300] = {
        {
            spell_id = 25146,
            name = "Transmute: Elemental Fire",
            icon = "spell_fire_fire",
            source = {
                type = "Item",
                recipe_item_ids = { 20761 },
            },
            product = { item_id = 7068, qty = 3 },
            materials = {
                { item_id = 7077, qty = 1 },
            },
            levels = { 300, 301, 305, 310 },
        },
        {
            spell_id = 22732,
            name = "Major Rejuvenation Potion",
            icon = "inv_potion_47",
            source = {
                type = "Item",
                recipe_item_ids = { 18257 },
            },
            product = { item_id = 18253, qty = 1 },
            materials = {
                { item_id = 10286, qty = 1 },
                { item_id = 13464, qty = 4 },
                { item_id = 13463, qty = 4 },
                { item_id = 18256, qty = 1 },
            },
            levels = { 300, 310, 320, 330 },
        },
        {
            spell_id = 17632,
            name = "Alchemist's Stone",
            icon = "inv_misc_orb_02",
            source = {
                type = "Trainer",
            },
            product = { item_id = 13503, qty = 1 },
            materials = {
                { item_id = 7078, qty = 8 },
                { item_id = 7076, qty = 8 },
                { item_id = 7082, qty = 8 },
                { item_id = 7080, qty = 8 },
                { item_id = 12803, qty = 8 },
                { item_id = 9262, qty = 2 },
                { item_id = 13468, qty = 4 },
            },
            levels = { 300, 315, 322, 330 },
        },
        {
            spell_id = 17638,
            name = "Flask of Chromatic Resistance",
            icon = "inv_potion_48",
            source = {
                type = "Item",
                recipe_item_ids = { 13522 },
            },
            product = { item_id = 13513, qty = 1 },
            materials = {
                { item_id = 13467, qty = 30 },
                { item_id = 13465, qty = 10 },
                { item_id = 13468, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 300, 315, 322, 330 },
        },
        {
            spell_id = 17636,
            name = "Flask of Distilled Wisdom",
            icon = "inv_potion_97",
            source = {
                type = "Item",
                recipe_item_ids = { 13520 },
            },
            product = { item_id = 13511, qty = 1 },
            materials = {
                { item_id = 13463, qty = 30 },
                { item_id = 13467, qty = 10 },
                { item_id = 13468, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 300, 315, 322, 330 },
        },
        {
            spell_id = 17634,
            name = "Flask of Petrification",
            icon = "inv_potion_26",
            source = {
                type = "Item",
                recipe_item_ids = { 13518 },
            },
            product = { item_id = 13506, qty = 1 },
            materials = {
                { item_id = 13423, qty = 30 },
                { item_id = 13465, qty = 10 },
                { item_id = 13468, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 300, 315, 322, 330 },
        },
        {
            spell_id = 17637,
            name = "Flask of Supreme Power",
            icon = "inv_potion_41",
            source = {
                type = "Item",
                recipe_item_ids = { 13521 },
            },
            product = { item_id = 13512, qty = 1 },
            materials = {
                { item_id = 13463, qty = 30 },
                { item_id = 13465, qty = 10 },
                { item_id = 13468, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 300, 315, 322, 330 },
        },
        {
            spell_id = 17635,
            name = "Flask of the Titans",
            icon = "inv_potion_62",
            source = {
                type = "Item",
                recipe_item_ids = { 13519 },
            },
            product = { item_id = 13510, qty = 1 },
            materials = {
                { item_id = 8846, qty = 30 },
                { item_id = 13423, qty = 10 },
                { item_id = 13468, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 300, 315, 322, 330 },
        },
        {
            spell_id = 24266,
            name = "Gurubashi Mojo Madness",
            icon = "inv_poison_mindnumbing",
            source = {
                type = "Trainer",
            },
            product = { item_id = 19931, qty = 3 },
            materials = {
                { item_id = 12938, qty = 1 },
                { item_id = 19943, qty = 1 },
                { item_id = 12804, qty = 6 },
                { item_id = 13468, qty = 1 },
            },
            levels = { 300, 315, 322, 330 },
        },
    },
}

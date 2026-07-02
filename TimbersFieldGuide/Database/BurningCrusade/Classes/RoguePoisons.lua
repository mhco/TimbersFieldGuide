local _, TFG = ...

TFG.ROGUE_POISONS_BURNING_CRUSADE = {
    [20] = {
        {
            spell_id = 2842,
            name = "Poisons",
            rank = 1,
            icon = "trade_brewpoison",
            source = {
                {
                    type = "Trainer",
                    cost = 10,
                },
            },
        },
        {
            spell_id = 3420,
            name = "Crippling Poison",
            rank = 1,
            icon = "ability_poisonsting",
            group = "crippling_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 3000,
                },
            },
            product = { item_id = 3775, qty = 1 },
            materials = {
                { item_id = 2930, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 1, 125, 150, 175 },
        },
        {
            spell_id = 8681,
            name = "Instant Poison",
            rank = 1,
            icon = "ability_poisons",
            group = "instant_poison",
            source = {
                {
                    type = "Trainer",
                },
            },
            product = { item_id = 6947, qty = 1 },
            materials = {
                { item_id = 2928, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 1, 125, 150, 175 },
        },
    },
    [24] = {
        {
            spell_id = 5763,
            name = "Mind-numbing Poison",
            rank = 1,
            icon = "spell_nature_nullifydisease",
            group = "mind_numbing_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 5000,
                },
            },
            product = { item_id = 5237, qty = 1 },
            materials = {
                { item_id = 2928, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 100, 150, 175, 200 },
        },
    },
    [28] = {
        {
            spell_id = 8687,
            name = "Instant Poison II",
            rank = 2,
            icon = "ability_poisons",
            group = "instant_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 8000,
                },
            },
            product = { item_id = 6949, qty = 1 },
            materials = {
                { item_id = 2928, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 120, 165, 190, 215 },
        },
    },
    [30] = {
        {
            spell_id = 2835,
            name = "Deadly Poison",
            rank = 1,
            icon = "ability_rogue_dualweild",
            group = "deadly_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 10000,
                },
            },
            product = { item_id = 2892, qty = 1 },
            materials = {
                { item_id = 5173, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 130, 175, 200, 225 },
        },
    },
    [32] = {
        {
            spell_id = 13220,
            name = "Wound Poison",
            rank = 1,
            icon = "inv_misc_herb_16",
            group = "wound_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 12000,
                },
            },
            product = { item_id = 10918, qty = 1 },
            materials = {
                { item_id = 2930, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 140, 185, 210, 235 },
        },
    },
    [36] = {
        {
            spell_id = 8691,
            name = "Instant Poison III",
            rank = 3,
            icon = "ability_poisons",
            group = "instant_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 16000,
                },
            },
            product = { item_id = 6950, qty = 1 },
            materials = {
                { item_id = 8924, qty = 2 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 160, 205, 230, 255 },
        },
    },
    [38] = {
        {
            spell_id = 2837,
            name = "Deadly Poison II",
            rank = 2,
            icon = "ability_rogue_dualweild",
            group = "deadly_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 18000,
                },
            },
            product = { item_id = 2893, qty = 1 },
            materials = {
                { item_id = 5173, qty = 2 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 170, 215, 240, 265 },
        },
        {
            spell_id = 8694,
            name = "Mind-numbing Poison II",
            rank = 2,
            icon = "spell_nature_nullifydisease",
            group = "mind_numbing_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 18000,
                },
            },
            product = { item_id = 6951, qty = 1 },
            materials = {
                { item_id = 8923, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 170, 215, 240, 265 },
        },
    },
    [40] = {
        {
            spell_id = 13228,
            name = "Wound Poison II",
            rank = 2,
            icon = "inv_misc_herb_16",
            group = "wound_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 20000,
                },
            },
            product = { item_id = 10920, qty = 1 },
            materials = {
                { item_id = 2930, qty = 1 },
                { item_id = 5173, qty = 1 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 180, 225, 250, 275 },
        },
    },
    [44] = {
        {
            spell_id = 11341,
            name = "Instant Poison IV",
            rank = 4,
            icon = "ability_poisons",
            group = "instant_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 29000,
                },
            },
            product = { item_id = 8926, qty = 1 },
            materials = {
                { item_id = 8924, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 200, 245, 270, 295 },
        },
    },
    [46] = {
        {
            spell_id = 11357,
            name = "Deadly Poison III",
            rank = 3,
            icon = "ability_rogue_dualweild",
            group = "deadly_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 31000,
                },
            },
            product = { item_id = 8984, qty = 1 },
            materials = {
                { item_id = 5173, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 210, 255, 280, 305 },
        },
    },
    [48] = {
        {
            spell_id = 13229,
            name = "Wound Poison III",
            rank = 3,
            icon = "inv_misc_herb_16",
            group = "wound_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 33000,
                },
            },
            product = { item_id = 10921, qty = 1 },
            materials = {
                { item_id = 8923, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 220, 265, 290, 315 },
        },
    },
    [50] = {
        {
            spell_id = 3421,
            name = "Crippling Poison II",
            rank = 2,
            icon = "ability_poisonsting",
            group = "crippling_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 35000,
                },
            },
            product = { item_id = 3776, qty = 1 },
            materials = {
                { item_id = 8923, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 230, 275, 300, 325 },
        },
    },
    [52] = {
        {
            spell_id = 11342,
            name = "Instant Poison V",
            rank = 5,
            icon = "ability_poisons",
            group = "instant_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 46000,
                },
            },
            product = { item_id = 8927, qty = 1 },
            materials = {
                { item_id = 8924, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 240, 285, 310, 335 },
        },
        {
            spell_id = 11400,
            name = "Mind-numbing Poison III",
            rank = 3,
            icon = "spell_nature_nullifydisease",
            group = "mind_numbing_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 46000,
                },
            },
            product = { item_id = 9186, qty = 1 },
            materials = {
                { item_id = 8923, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 240, 285, 310, 335 },
        },
    },
    [54] = {
        {
            spell_id = 11358,
            name = "Deadly Poison IV",
            rank = 4,
            icon = "ability_rogue_dualweild",
            group = "deadly_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 48000,
                },
            },
            product = { item_id = 8985, qty = 1 },
            materials = {
                { item_id = 5173, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 250, 295, 320, 345 },
        },
    },
    [56] = {
        {
            spell_id = 13230,
            name = "Wound Poison IV",
            rank = 4,
            icon = "inv_misc_herb_16",
            group = "wound_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 50000,
                },
            },
            product = { item_id = 10922, qty = 1 },
            materials = {
                { item_id = 8923, qty = 1 },
                { item_id = 5173, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 260, 305, 330, 355 },
        },
    },
    [60] = {
        {
            spell_id = 25347,
            name = "Deadly Poison V",
            rank = 5,
            icon = "ability_rogue_dualweild",
            group = "deadly_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 54000,
                },
            },
            product = { item_id = 20844, qty = 1 },
            materials = {
                { item_id = 5173, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 280, 300, 325, 350 },
        },
        {
            spell_id = 11343,
            name = "Instant Poison VI",
            rank = 6,
            icon = "ability_poisons",
            group = "instant_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 54000,
                },
            },
            product = { item_id = 8928, qty = 1 },
            materials = {
                { item_id = 8924, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 280, 325, 350, 375 },
        },
    },
    [62] = {
        {
            spell_id = 26969,
            name = "Deadly Poison VI",
            rank = 6,
            icon = "ability_rogue_dualweild",
            group = "deadly_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 65000,
                },
            },
            product = { item_id = 22053, qty = 1 },
            materials = {
                { item_id = 2931, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 290, 345, 365, 385 },
        },
    },
    [64] = {
        {
            spell_id = 27283,
            name = "Wound Poison V",
            rank = 5,
            icon = "inv_misc_herb_16",
            group = "wound_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 80000,
                },
            },
            product = { item_id = 22055, qty = 1 },
            materials = {
                { item_id = 8923, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 300, 345, 370, 395 },
        },
    },
    [68] = {
        {
            spell_id = 26786,
            name = "Anesthetic Poison",
            rank = 1,
            icon = "spell_nature_slowpoison",
            group = "anesthetic_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 110000,
                },
            },
            product = { item_id = 21835, qty = 1 },
            materials = {
                { item_id = 2931, qty = 1 },
                { item_id = 5173, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 340, 340, 355, 370 },
        },
        {
            spell_id = 26892,
            name = "Instant Poison VII",
            rank = 7,
            icon = "ability_poisons",
            group = "instant_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 110000,
                },
            },
            product = { item_id = 21927, qty = 1 },
            materials = {
                { item_id = 2931, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 320, 365, 390, 415 },
        },
    },
    [70] = {
        {
            spell_id = 27282,
            name = "Deadly Poison VII",
            rank = 7,
            icon = "ability_rogue_dualweild",
            group = "deadly_poison",
            source = {
                {
                    type = "Trainer",
                    cost = 140000,
                },
            },
            product = { item_id = 22054, qty = 1 },
            materials = {
                { item_id = 2931, qty = 1 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 330, 385, 405, 425 },
        },
    },
}

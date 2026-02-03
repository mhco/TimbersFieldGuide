local _, TFG = ...

TFG.JEWELCRAFTING_TBC = {
    [1] = {
        {
            spell_id = 25229,
            name = "Jewelcrafting",
            categories = { "Profession Training" },
            icon = "inv_misc_gem_01",
            source = {
                type = "Trainer",
            },
        },
    },
    [5] = {
        {
            spell_id = 26926,
            name = "Heavy Copper Ring",
            icon = "inv_jewelry_ring_12",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { item_id = 21932, qty = 1 },
            materials = {
                { item_id = 2840, qty = 4 },
                { item_id = 20816, qty = 2 },
            },
            levels = { 5, 35, 50, 65 },
        },
    },
    [20] = {
        {
            spell_id = 31252,
            name = "Prospecting",
            icon = "inv_misc_gem_bloodgem_01",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 32178,
            name = "Malachite Pendant",
            icon = "inv_jewelry_necklace_01",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { item_id = 25438, qty = 1 },
            materials = {
                { item_id = 774, qty = 1 },
                { item_id = 20816, qty = 1 },
            },
            levels = { 20, 50, 65, 80 },
        },
        {
            spell_id = 32179,
            name = "Tigerseye Band",
            icon = "inv_jewelry_ring_21",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { item_id = 25439, qty = 1 },
            materials = {
                { item_id = 818, qty = 1 },
                { item_id = 20816, qty = 1 },
            },
            levels = { 20, 50, 65, 80 },
        },
        {
            spell_id = 25255,
            name = "Delicate Copper Wire",
            icon = "inv_jewelcrafting_delicatecopperwire",
            source = {
                type = "Trainer",
            },
            product = { item_id = 20816, qty = 1 },
            materials = {
                { item_id = 2840, qty = 2 },
            },
            levels = { 1, 20, 35, 50 },
        },
    },
    [30] = {
        {
            spell_id = 25283,
            name = "Inlaid Malachite Ring",
            icon = "inv_jewelry_ring_23",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { item_id = 20821, qty = 1 },
            materials = {
                { item_id = 774, qty = 2 },
                { item_id = 2840, qty = 2 },
            },
            levels = { 30, 60, 75, 90 },
        },
        {
            spell_id = 26928,
            name = "Ornate Tigerseye Necklace",
            icon = "inv_jewelry_necklace_02",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { item_id = 21934, qty = 1 },
            materials = {
                { item_id = 818, qty = 2 },
                { item_id = 2840, qty = 2 },
                { item_id = 20816, qty = 1 },
            },
            levels = { 30, 60, 75, 90 },
        },
        {
            spell_id = 25493,
            name = "Braided Copper Ring",
            icon = "inv_jewelry_ring_13",
            source = {
                type = "Trainer",
            },
            product = { item_id = 20906, qty = 1 },
            materials = {
                { item_id = 20816, qty = 2 },
            },
            levels = { 1, 30, 45, 60 },
        },
        {
            spell_id = 26925,
            name = "Woven Copper Ring",
            icon = "inv_jewelry_ring_12",
            source = {
                type = "Trainer",
            },
            product = { item_id = 21931, qty = 1 },
            materials = {
                { item_id = 20816, qty = 2 },
                { item_id = 2840, qty = 1 },
            },
            levels = { 1, 30, 45, 60 },
        },
        {
            spell_id = 32259,
            name = "Rough Stone Statue",
            icon = "inv_misc_statue_08",
            source = {
                type = "Trainer",
            },
            product = { item_id = 25498, qty = 1 },
            materials = {
                { item_id = 2835, qty = 8 },
            },
            levels = { 1, 30, 40, 50 },
        },
    },
    [50] = {
        {
            spell_id = 25230,
            name = "Jewelcrafting",
            categories = { "Profession Training" },
            icon = "inv_misc_gem_02",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 25280,
            name = "Elegant Silver Ring",
            icon = "inv_jewelry_ring_01",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { item_id = 20818, qty = 1 },
            materials = {
                { item_id = 2842, qty = 1 },
            },
            levels = { 50, 80, 95, 110 },
        },
        {
            spell_id = 25490,
            name = "Solid Bronze Ring",
            icon = "inv_jewelry_ring_14",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { item_id = 20907, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
            },
            levels = { 50, 80, 95, 110 },
        },
        {
            spell_id = 26927,
            name = "Thick Bronze Necklace",
            icon = "inv_belt_19",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { item_id = 21933, qty = 1 },
            materials = {
                { item_id = 2841, qty = 2 },
                { item_id = 1210, qty = 1 },
                { item_id = 20816, qty = 1 },
            },
            levels = { 50, 80, 95, 110 },
        },
        {
            spell_id = 25278,
            name = "Bronze Setting",
            icon = "inv_jewelcrafting_bronzesetting",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { item_id = 20817, qty = 1 },
            materials = {
                { item_id = 2841, qty = 2 },
            },
            levels = { 50, 70, 80, 90 },
        },
        {
            spell_id = 32801,
            name = "Coarse Stone Statue",
            icon = "inv_misc_statue_05",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { item_id = 25880, qty = 1 },
            materials = {
                { item_id = 2836, qty = 8 },
            },
            levels = { 50, 70, 80, 90 },
        },
    },
    [60] = {
        {
            spell_id = 25284,
            name = "Simple Pearl Ring",
            icon = "inv_jewelry_ring_28",
            source = {
                type = "Trainer",
                cost = 400,
            },
            product = { item_id = 20820, qty = 1 },
            materials = {
                { item_id = 5498, qty = 1 },
                { item_id = 20817, qty = 1 },
                { item_id = 2840, qty = 2 },
            },
            levels = { 60, 90, 105, 120 },
        },
    },
    [65] = {
        {
            spell_id = 37818,
            name = "Bronze Band of Force",
            icon = "inv_jewelry_ring_34",
            source = {
                type = "Trainer",
                cost = 500,
            },
            product = { item_id = 30804, qty = 1 },
            materials = {
                { item_id = 2841, qty = 2 },
                { item_id = 20817, qty = 1 },
                { item_id = 774, qty = 3 },
                { item_id = 818, qty = 3 },
                { item_id = 1210, qty = 2 },
            },
            levels = { 65, 95, 110, 125 },
        },
    },
    [70] = {
        {
            spell_id = 25287,
            name = "Gloom Band",
            icon = "inv_jewelry_ring_16",
            source = {
                type = "Trainer",
                cost = 400,
            },
            product = { item_id = 20823, qty = 1 },
            materials = {
                { item_id = 1210, qty = 2 },
                { item_id = 20817, qty = 1 },
                { item_id = 20816, qty = 2 },
            },
            levels = { 70, 100, 115, 130 },
        },
    },
    [75] = {
        {
            spell_id = 36523,
            name = "Brilliant Necklace",
            icon = "inv_jewelry_necklace_01",
            source = {
                type = "Trainer",
                cost = 600,
            },
            product = { item_id = 30419, qty = 1 },
            materials = {
                { item_id = 2841, qty = 4 },
                { item_id = 20817, qty = 1 },
                { item_id = 1206, qty = 1 },
            },
            levels = { 75, 105, 120, 135 },
        },
    },
    [80] = {
        {
            spell_id = 25317,
            name = "Ring of Silver Might",
            icon = "inv_jewelry_ring_05",
            source = {
                type = "Trainer",
                cost = 600,
            },
            product = { item_id = 20827, qty = 1 },
            materials = {
                { item_id = 2842, qty = 2 },
            },
            levels = { 80, 110, 125, 140 },
        },
        {
            spell_id = 38175,
            name = "Bronze Torc",
            icon = "inv_jewelry_necklace_29naxxramas",
            source = {
                type = "Trainer",
                cost = 650,
            },
            product = { item_id = 31154, qty = 1 },
            materials = {
                { item_id = 2841, qty = 6 },
                { item_id = 20817, qty = 1 },
                { item_id = 1705, qty = 1 },
            },
            levels = { 80, 110, 125, 140 },
        },
    },
    [90] = {
        {
            spell_id = 25305,
            name = "Heavy Silver Ring",
            icon = "inv_jewelry_ring_26",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { item_id = 20826, qty = 1 },
            materials = {
                { item_id = 2842, qty = 2 },
                { item_id = 20817, qty = 1 },
                { item_id = 1206, qty = 1 },
                { item_id = 1705, qty = 1 },
            },
            levels = { 90, 120, 135, 150 },
        },
    },
    [100] = {
        {
            spell_id = 25318,
            name = "Ring of Twilight Shadows",
            icon = "inv_jewelry_ring_34",
            source = {
                type = "Trainer",
                cost = 800,
            },
            product = { item_id = 20828, qty = 1 },
            materials = {
                { item_id = 1210, qty = 2 },
                { item_id = 2841, qty = 2 },
            },
            levels = { 100, 130, 145, 160 },
        },
    },
    [105] = {
        {
            spell_id = 36524,
            name = "Heavy Jade Ring",
            icon = "inv_jewelry_ring_11",
            source = {
                type = "Trainer",
                cost = 800,
            },
            product = { item_id = 30420, qty = 1 },
            materials = {
                { item_id = 1529, qty = 1 },
                { item_id = 20817, qty = 1 },
                { item_id = 3575, qty = 2 },
            },
            levels = { 105, 135, 150, 165 },
        },
    },
    [110] = {
        {
            spell_id = 25339,
            name = "Amulet of the Moon",
            icon = "inv_jewelry_necklace_11",
            source = {
                type = "Item",
                recipe_item_ids = { 20854 },
            },
            product = { item_id = 20830, qty = 1 },
            materials = {
                { item_id = 1705, qty = 2 },
                { item_id = 20817, qty = 1 },
            },
            levels = { 110, 140, 155, 170 },
        },
        {
            spell_id = 25498,
            name = "Barbaric Iron Collar",
            icon = "inv_jewelry_necklace_22",
            source = {
                type = "Trainer",
                cost = 600,
            },
            product = { item_id = 20909, qty = 1 },
            materials = {
                { item_id = 3575, qty = 8 },
                { item_id = 5637, qty = 2 },
                { item_id = 20817, qty = 2 },
            },
            levels = { 110, 140, 155, 170 },
        },
        {
            spell_id = 32807,
            name = "Heavy Stone Statue",
            icon = "inv_misc_statue_09",
            source = {
                type = "Trainer",
                cost = 600,
            },
            product = { item_id = 25881, qty = 1 },
            materials = {
                { item_id = 2838, qty = 8 },
            },
            levels = { 110, 120, 130, 140 },
        },
    },
    [120] = {
        {
            spell_id = 25321,
            name = "Moonsoul Crown",
            icon = "inv_crown_15",
            source = {
                type = "Trainer",
                cost = 1500,
            },
            product = { item_id = 20832, qty = 1 },
            materials = {
                { item_id = 1705, qty = 3 },
                { item_id = 5498, qty = 3 },
                { item_id = 11083, qty = 4 },
                { item_id = 2842, qty = 4 },
                { item_id = 3827, qty = 2 },
            },
            levels = { 120, 150, 165, 180 },
        },
        {
            spell_id = 25610,
            name = "Pendant of the Agate Shield",
            icon = "inv_shield_21",
            source = {
                type = "Item",
                recipe_item_ids = { 20970 },
            },
            product = { item_id = 20950, qty = 1 },
            materials = {
                { item_id = 1206, qty = 1 },
                { item_id = 20817, qty = 1 },
            },
            levels = { 120, 150, 165, 180 },
        },
    },
    [125] = {
        {
            spell_id = 25323,
            name = "Wicked Moonstone Ring",
            icon = "inv_jewelry_ring_02",
            source = {
                type = "Item",
                recipe_item_ids = { 20855 },
            },
            product = { item_id = 20833, qty = 1 },
            materials = {
                { item_id = 1705, qty = 1 },
                { item_id = 3824, qty = 1 },
                { item_id = 3575, qty = 4 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 25612,
            name = "Heavy Iron Knuckles",
            icon = "inv_gauntlets_04",
            source = {
                type = "Item",
                recipe_item_ids = { 20971 },
            },
            product = { item_id = 20954, qty = 1 },
            materials = {
                { item_id = 3575, qty = 8 },
                { item_id = 3391, qty = 2 },
            },
            levels = { 125, 155, 170, 185 },
        },
        {
            spell_id = 28894,
            name = "Jewelcrafting",
            categories = { "Profession Training" },
            icon = "inv_misc_gem_02",
            source = {
                type = "Trainer",
            },
        },
    },
    [135] = {
        {
            spell_id = 25613,
            name = "Golden Dragon Ring",
            icon = "inv_jewelry_ring_40",
            source = {
                type = "Trainer",
                cost = 1200,
            },
            product = { item_id = 20955, qty = 1 },
            materials = {
                { item_id = 1529, qty = 1 },
                { item_id = 3577, qty = 2 },
                { item_id = 20816, qty = 2 },
            },
            levels = { 135, 165, 180, 195 },
        },
    },
    [150] = {
        {
            spell_id = 25320,
            name = "Heavy Golden Necklace of Battle",
            icon = "inv_jewelry_necklace_08",
            source = {
                type = "Item",
                recipe_item_ids = { 20856 },
            },
            product = { item_id = 20831, qty = 1 },
            materials = {
                { item_id = 3577, qty = 1 },
                { item_id = 1206, qty = 2 },
                { item_id = 3391, qty = 1 },
            },
            levels = { 150, 180, 195, 210 },
        },
        {
            spell_id = 25617,
            name = "Blazing Citrine Ring",
            icon = "inv_jewelry_ring_20",
            source = {
                type = "Item",
                recipe_item_ids = { 20973 },
            },
            product = { item_id = 20958, qty = 1 },
            materials = {
                { item_id = 3864, qty = 1 },
                { item_id = 20963, qty = 1 },
            },
            levels = { 150, 180, 195, 210 },
        },
        {
            spell_id = 25615,
            name = "Mithril Filigree",
            icon = "inv_jewelcrafting_mithrilfiligree",
            source = {
                type = "Trainer",
                cost = 1500,
            },
            product = { item_id = 20963, qty = 1 },
            materials = {
                { item_id = 3860, qty = 2 },
            },
            levels = { 150, 170, 180, 190 },
        },
    },
    [160] = {
        {
            spell_id = 25618,
            name = "Jade Pendant of Blasting",
            icon = "inv_jewelry_necklace_01",
            source = {
                type = "Item",
                recipe_item_ids = { 20974 },
            },
            product = { item_id = 20966, qty = 1 },
            materials = {
                { item_id = 1529, qty = 1 },
                { item_id = 20963, qty = 2 },
            },
            levels = { 160, 190, 205, 220 },
        },
    },
    [170] = {
        {
            spell_id = 25619,
            name = "The Jade Eye",
            icon = "inv_jewelry_ring_11",
            source = {
                type = "Item",
                recipe_item_ids = { 20975 },
            },
            product = { item_id = 20959, qty = 1 },
            materials = {
                { item_id = 1529, qty = 1 },
                { item_id = 7067, qty = 2 },
            },
            levels = { 170, 200, 215, 230 },
        },
        {
            spell_id = 25620,
            name = "Engraved Truesilver Ring",
            icon = "inv_jewelry_ring_35",
            source = {
                type = "Trainer",
                cost = 2000,
            },
            product = { item_id = 20960, qty = 1 },
            materials = {
                { item_id = 6037, qty = 1 },
                { item_id = 20963, qty = 2 },
            },
            levels = { 170, 200, 215, 230 },
        },
    },
    [175] = {
        {
            spell_id = 32808,
            name = "Solid Stone Statue",
            icon = "inv_misc_statue_06",
            source = {
                type = "Trainer",
                cost = 2000,
            },
            product = { item_id = 25882, qty = 1 },
            materials = {
                { item_id = 7912, qty = 10 },
            },
            levels = { 175, 175, 185, 195 },
        },
    },
    [180] = {
        {
            spell_id = 25621,
            name = "Citrine Ring of Rapid Healing",
            icon = "inv_jewelry_ring_29",
            source = {
                type = "Trainer",
                cost = 2000,
            },
            product = { item_id = 20961, qty = 1 },
            materials = {
                { item_id = 3864, qty = 1 },
                { item_id = 7070, qty = 2 },
                { item_id = 3860, qty = 2 },
            },
            levels = { 180, 210, 225, 240 },
        },
        {
            spell_id = 34955,
            name = "Golden Ring of Power",
            icon = "inv_jewelry_ring_46",
            source = {
                type = "Trainer",
                cost = 2500,
            },
            product = { item_id = 29157, qty = 1 },
            materials = {
                { item_id = 3577, qty = 4 },
                { item_id = 1705, qty = 1 },
                { item_id = 1529, qty = 1 },
                { item_id = 3864, qty = 1 },
            },
            levels = { 180, 190, 200, 210 },
        },
    },
    [190] = {
        {
            spell_id = 25622,
            name = "Citrine Pendant of Golden Healing",
            icon = "inv_jewelry_necklace_06",
            source = {
                type = "Item",
                recipe_item_ids = { 20976 },
            },
            product = { item_id = 20967, qty = 1 },
            materials = {
                { item_id = 3864, qty = 1 },
                { item_id = 7070, qty = 2 },
                { item_id = 3577, qty = 2 },
                { item_id = 20817, qty = 1 },
            },
            levels = { 190, 220, 235, 250 },
        },
    },
    [200] = {
        {
            spell_id = 26872,
            name = "Figurine - Jade Owl",
            icon = "inv_jewelcrafting_jadeowl",
            source = {
                type = "Trainer",
                cost = 2500,
            },
            product = { item_id = 21748, qty = 1 },
            materials = {
                { item_id = 1529, qty = 4 },
                { item_id = 6037, qty = 2 },
                { item_id = 11137, qty = 4 },
                { item_id = 20963, qty = 4 },
            },
            levels = { 200, 225, 240, 255 },
        },
        {
            spell_id = 26873,
            name = "Figurine - Golden Hare",
            icon = "inv_jewelcrafting_goldenhare",
            source = {
                type = "Item",
                recipe_item_ids = { 21940 },
            },
            product = { item_id = 21756, qty = 1 },
            materials = {
                { item_id = 3577, qty = 6 },
                { item_id = 3864, qty = 2 },
            },
            levels = { 200, 225, 240, 255 },
        },
        {
            spell_id = 34959,
            name = "Truesilver Commander's Ring",
            icon = "inv_jewelry_ring_30",
            source = {
                type = "Trainer",
                cost = 3000,
            },
            product = { item_id = 29158, qty = 1 },
            materials = {
                { item_id = 6037, qty = 3 },
                { item_id = 7910, qty = 2 },
                { item_id = 3864, qty = 2 },
            },
            levels = { 200, 210, 220, 230 },
        },
    },
    [210] = {
        {
            spell_id = 26874,
            name = "Aquamarine Signet",
            icon = "inv_jewelry_ring_05",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { item_id = 20964, qty = 1 },
            materials = {
                { item_id = 7909, qty = 3 },
                { item_id = 8151, qty = 4 },
            },
            levels = { 210, 235, 250, 265 },
        },
    },
    [215] = {
        {
            spell_id = 26875,
            name = "Figurine - Black Pearl Panther",
            icon = "inv_jewelcrafting_blackpearlpanther",
            source = {
                type = "Item",
                recipe_item_ids = { 21941 },
            },
            product = { item_id = 21758, qty = 1 },
            materials = {
                { item_id = 7971, qty = 4 },
                { item_id = 8151, qty = 4 },
            },
            levels = { 215, 240, 255, 270 },
        },
    },
    [220] = {
        {
            spell_id = 26876,
            name = "Aquamarine Pendant of the Warrior",
            icon = "inv_jewelry_necklace_16",
            source = {
                type = "Trainer",
                cost = 3000,
            },
            product = { item_id = 21755, qty = 1 },
            materials = {
                { item_id = 7909, qty = 1 },
                { item_id = 20963, qty = 3 },
            },
            levels = { 220, 245, 260, 275 },
        },
    },
    [225] = {
        {
            spell_id = 26878,
            name = "Ruby Crown of Restoration",
            icon = "inv_crown_13",
            source = {
                type = "Item",
                recipe_item_ids = { 21942 },
            },
            product = { item_id = 20969, qty = 1 },
            materials = {
                { item_id = 7910, qty = 2 },
                { item_id = 7971, qty = 2 },
                { item_id = 6037, qty = 4 },
                { item_id = 21752, qty = 4 },
                { item_id = 6149, qty = 4 },
            },
            levels = { 225, 250, 265, 280 },
        },
        {
            spell_id = 26881,
            name = "Figurine - Truesilver Crab",
            icon = "inv_jewelcrafting_truesilvercrab",
            source = {
                type = "Item",
                recipe_item_ids = { 21943 },
            },
            product = { item_id = 21760, qty = 1 },
            materials = {
                { item_id = 7909, qty = 2 },
                { item_id = 6037, qty = 4 },
                { item_id = 7075, qty = 2 },
                { item_id = 7079, qty = 2 },
                { item_id = 8151, qty = 4 },
            },
            levels = { 225, 250, 265, 280 },
        },
        {
            spell_id = 26880,
            name = "Thorium Setting",
            icon = "inv_jewelcrafting_thoriumsetting",
            source = {
                type = "Trainer",
                cost = 3500,
            },
            product = { item_id = 21752, qty = 1 },
            materials = {
                { item_id = 12359, qty = 1 },
            },
            levels = { 225, 235, 245, 255 },
        },
        {
            spell_id = 32809,
            name = "Dense Stone Statue",
            icon = "inv_misc_statue_10",
            source = {
                type = "Trainer",
                cost = 3500,
            },
            product = { item_id = 25883, qty = 1 },
            materials = {
                { item_id = 12365, qty = 10 },
            },
            levels = { 225, 225, 235, 245 },
        },
        {
            spell_id = 28895,
            name = "Jewelcrafting",
            categories = { "Profession Training" },
            icon = "inv_misc_gem_02",
            source = {
                type = "Trainer",
            },
        },
    },
    [230] = {
        {
            spell_id = 36525,
            name = "Red Ring of Destruction",
            icon = "inv_jewelry_ring_25",
            source = {
                type = "Trainer",
                cost = 4000,
            },
            product = { item_id = 30421, qty = 1 },
            materials = {
                { item_id = 7910, qty = 1 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 230, 255, 270, 285 },
        },
    },
    [235] = {
        {
            spell_id = 26882,
            name = "Figurine - Truesilver Boar",
            icon = "inv_jewelcrafting_truesilverboar",
            source = {
                type = "Item",
                recipe_item_ids = { 21944 },
            },
            product = { item_id = 21763, qty = 1 },
            materials = {
                { item_id = 7910, qty = 2 },
                { item_id = 6037, qty = 4 },
                { item_id = 7077, qty = 2 },
                { item_id = 7081, qty = 2 },
                { item_id = 8151, qty = 4 },
            },
            levels = { 235, 260, 275, 290 },
        },
        {
            spell_id = 26883,
            name = "Ruby Pendant of Fire",
            icon = "inv_jewelry_necklace_15",
            source = {
                type = "Trainer",
                cost = 4000,
            },
            product = { item_id = 21764, qty = 1 },
            materials = {
                { item_id = 7910, qty = 1 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 235, 260, 275, 290 },
        },
    },
    [240] = {
        {
            spell_id = 26885,
            name = "Truesilver Healing Ring",
            icon = "inv_jewelry_ring_26",
            source = {
                type = "Trainer",
                cost = 5000,
            },
            product = { item_id = 21765, qty = 1 },
            materials = {
                { item_id = 6037, qty = 2 },
                { item_id = 10286, qty = 2 },
            },
            levels = { 240, 265, 280, 295 },
        },
    },
    [245] = {
        {
            spell_id = 26887,
            name = "The Aquamarine Ward",
            icon = "inv_jewelry_ring_29",
            source = {
                type = "Item",
                recipe_item_ids = { 21945 },
            },
            product = { item_id = 21754, qty = 1 },
            materials = {
                { item_id = 7909, qty = 1 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 245, 270, 285, 300 },
        },
    },
    [250] = {
        {
            spell_id = 26896,
            name = "Gem Studded Band",
            icon = "inv_jewelry_ring_37",
            source = {
                type = "Item",
                recipe_item_ids = { 21947 },
            },
            product = { item_id = 21753, qty = 1 },
            materials = {
                { item_id = 7909, qty = 2 },
                { item_id = 3864, qty = 2 },
                { item_id = 21752, qty = 4 },
                { item_id = 6037, qty = 2 },
            },
            levels = { 250, 275, 290, 305 },
        },
        {
            spell_id = 26897,
            name = "Opal Necklace of Impact",
            icon = "inv_jewelry_necklace_14",
            source = {
                type = "Item",
                recipe_item_ids = { 21948 },
            },
            product = { item_id = 21766, qty = 1 },
            materials = {
                { item_id = 12799, qty = 2 },
                { item_id = 21752, qty = 2 },
                { item_id = 6037, qty = 4 },
                { item_id = 11178, qty = 2 },
                { item_id = 20963, qty = 2 },
            },
            levels = { 250, 275, 290, 305 },
        },
    },
    [260] = {
        {
            spell_id = 26900,
            name = "Figurine - Ruby Serpent",
            icon = "inv_jewelcrafting_rubyserpent",
            source = {
                type = "Item",
                recipe_item_ids = { 21949 },
            },
            product = { item_id = 21769, qty = 1 },
            materials = {
                { item_id = 7910, qty = 2 },
                { item_id = 7078, qty = 2 },
                { item_id = 8152, qty = 4 },
                { item_id = 6037, qty = 2 },
            },
            levels = { 260, 280, 290, 300 },
        },
        {
            spell_id = 26902,
            name = "Simple Opal Ring",
            icon = "inv_jewelry_ring_17",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 21767, qty = 1 },
            materials = {
                { item_id = 12799, qty = 1 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 260, 280, 290, 300 },
        },
    },
    [265] = {
        {
            spell_id = 36526,
            name = "Diamond Focus Ring",
            icon = "inv_jewelry_ring_42",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 30422, qty = 1 },
            materials = {
                { item_id = 12800, qty = 1 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 265, 285, 295, 305 },
        },
    },
    [275] = {
        {
            spell_id = 26903,
            name = "Sapphire Signet",
            icon = "inv_jewelry_ring_29",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 21768, qty = 1 },
            materials = {
                { item_id = 12361, qty = 4 },
                { item_id = 6037, qty = 2 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 275, 285, 295, 305 },
        },
        {
            spell_id = 26906,
            name = "Emerald Crown of Destruction",
            icon = "inv_crown_14",
            source = {
                type = "Item",
                recipe_item_ids = { 21952 },
            },
            product = { item_id = 21774, qty = 1 },
            materials = {
                { item_id = 12364, qty = 2 },
                { item_id = 12799, qty = 2 },
                { item_id = 12361, qty = 2 },
                { item_id = 12360, qty = 2 },
                { item_id = 12359, qty = 2 },
            },
            levels = { 275, 285, 295, 305 },
        },
        {
            spell_id = 28897,
            name = "Jewelcrafting",
            categories = { "Profession Training" },
            icon = "inv_misc_gem_02",
            source = {
                type = "Trainer",
            },
        },
    },
    [280] = {
        {
            spell_id = 26907,
            name = "Onslaught Ring",
            icon = "inv_jewelry_ring_27",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 21775, qty = 1 },
            materials = {
                { item_id = 21752, qty = 1 },
                { item_id = 12804, qty = 1 },
                { item_id = 7076, qty = 1 },
            },
            levels = { 280, 290, 300, 310 },
        },
        {
            spell_id = 26908,
            name = "Sapphire Pendant of Winter Night",
            icon = "inv_jewelry_necklace_11",
            source = {
                type = "Trainer",
                cost = 12000,
            },
            product = { item_id = 21790, qty = 1 },
            materials = {
                { item_id = 12361, qty = 1 },
                { item_id = 12808, qty = 1 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 280, 290, 300, 310 },
        },
        {
            spell_id = 34960,
            name = "Glowing Thorium Band",
            icon = "inv_jewelry_ring_35",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 29159, qty = 1 },
            materials = {
                { item_id = 12800, qty = 2 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 280, 290, 300, 310 },
        },
    },
    [285] = {
        {
            spell_id = 26909,
            name = "Figurine - Emerald Owl",
            icon = "inv_jewelcrafting_jadeowl",
            source = {
                type = "Item",
                recipe_item_ids = { 21953 },
            },
            product = { item_id = 21777, qty = 1 },
            materials = {
                { item_id = 12364, qty = 2 },
                { item_id = 12360, qty = 2 },
                { item_id = 12359, qty = 2 },
                { item_id = 12804, qty = 4 },
            },
            levels = { 285, 295, 305, 315 },
        },
        {
            spell_id = 26910,
            name = "Ring of Bitter Shadows",
            icon = "inv_jewelry_ring_ahnqiraj_01",
            source = {
                type = "Item",
                recipe_item_ids = { 21954 },
            },
            product = { item_id = 21778, qty = 1 },
            materials = {
                { item_id = 12363, qty = 1 },
                { item_id = 12808, qty = 2 },
                { item_id = 12662, qty = 1 },
            },
            levels = { 285, 295, 305, 315 },
        },
    },
    [290] = {
        {
            spell_id = 26911,
            name = "Living Emerald Pendant",
            icon = "inv_jewelry_necklace_01",
            source = {
                type = "Trainer",
                cost = 15000,
            },
            product = { item_id = 21791, qty = 1 },
            materials = {
                { item_id = 12364, qty = 2 },
                { item_id = 12803, qty = 4 },
                { item_id = 12804, qty = 4 },
            },
            levels = { 290, 300, 310, 320 },
        },
        {
            spell_id = 34961,
            name = "Emerald Lion Ring",
            icon = "inv_jewelry_ring_18",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 29160, qty = 1 },
            materials = {
                { item_id = 12364, qty = 2 },
                { item_id = 21752, qty = 1 },
            },
            levels = { 290, 300, 310, 320 },
        },
    },
    [300] = {
        {
            spell_id = 26912,
            name = "Figurine - Black Diamond Crab",
            icon = "inv_jewelcrafting_truesilvercrab",
            source = {
                type = "Item",
                recipe_item_ids = { 21955 },
            },
            product = { item_id = 21784, qty = 1 },
            materials = {
                { item_id = 18335, qty = 4 },
                { item_id = 11754, qty = 4 },
                { item_id = 12800, qty = 2 },
                { item_id = 12360, qty = 2 },
                { item_id = 12359, qty = 4 },
            },
            levels = { 300, 310, 320, 330 },
        },
        {
            spell_id = 26914,
            name = "Figurine - Dark Iron Scorpid",
            icon = "ability_hunter_pet_crab",
            source = {
                type = "Item",
                recipe_item_ids = { 21956 },
            },
            product = { item_id = 21789, qty = 1 },
            materials = {
                { item_id = 11371, qty = 4 },
                { item_id = 12360, qty = 2 },
                { item_id = 7910, qty = 2 },
            },
            levels = { 300, 310, 320, 330 },
        },
        {
            spell_id = 28903,
            name = "Teardrop Blood Garnet",
            icon = "inv_misc_gem_bloodgem_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23130 },
            },
            product = { item_id = 23094, qty = 1 },
            materials = {
                { item_id = 23077, qty = 1 },
            },
            levels = { 300, 300, 320, 340 },
        },
        {
            spell_id = 28910,
            name = "Inscribed Flame Spessarite",
            icon = "inv_misc_gem_flamespessarite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23135 },
            },
            product = { item_id = 23098, qty = 1 },
            materials = {
                { item_id = 21929, qty = 1 },
            },
            levels = { 300, 300, 320, 340 },
        },
        {
            spell_id = 28916,
            name = "Radiant Deep Peridot",
            icon = "inv_misc_gem_deepperidot_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23140 },
            },
            product = { item_id = 23103, qty = 1 },
            materials = {
                { item_id = 23079, qty = 1 },
            },
            levels = { 300, 300, 320, 340 },
        },
        {
            spell_id = 28925,
            name = "Glowing Shadow Draenite",
            icon = "inv_misc_gem_ebondraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23144 },
            },
            product = { item_id = 23108, qty = 1 },
            materials = {
                { item_id = 23107, qty = 1 },
            },
            levels = { 300, 300, 320, 340 },
        },
        {
            spell_id = 28938,
            name = "Brilliant Golden Draenite",
            icon = "inv_misc_gem_goldendraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23148 },
            },
            product = { item_id = 23113, qty = 1 },
            materials = {
                { item_id = 23112, qty = 1 },
            },
            levels = { 300, 300, 320, 340 },
        },
        {
            spell_id = 28950,
            name = "Solid Azure Moonstone",
            icon = "inv_misc_gem_azuredraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23152 },
            },
            product = { item_id = 23118, qty = 1 },
            materials = {
                { item_id = 23117, qty = 1 },
            },
            levels = { 300, 300, 320, 340 },
        },
    },
    [305] = {
        {
            spell_id = 26915,
            name = "Necklace of the Diamond Tower",
            icon = "inv_jewelry_necklace_35",
            source = {
                type = "Item",
                recipe_item_ids = { 21957 },
            },
            product = { item_id = 21792, qty = 1 },
            materials = {
                { item_id = 12800, qty = 2 },
                { item_id = 21752, qty = 2 },
                { item_id = 12360, qty = 2 },
            },
            levels = { 305, 315, 325, 335 },
        },
        {
            spell_id = 28905,
            name = "Bold Blood Garnet",
            icon = "inv_misc_gem_bloodgem_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23131 },
            },
            product = { item_id = 23095, qty = 1 },
            materials = {
                { item_id = 23077, qty = 1 },
            },
            levels = { 305, 305, 325, 345 },
        },
        {
            spell_id = 28912,
            name = "Luminous Flame Spessarite",
            icon = "inv_misc_gem_flamespessarite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23136 },
            },
            product = { item_id = 23099, qty = 1 },
            materials = {
                { item_id = 21929, qty = 1 },
            },
            levels = { 305, 305, 325, 345 },
        },
        {
            spell_id = 28917,
            name = "Jagged Deep Peridot",
            icon = "inv_misc_gem_deepperidot_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23141 },
            },
            product = { item_id = 23104, qty = 1 },
            materials = {
                { item_id = 23079, qty = 1 },
            },
            levels = { 305, 305, 325, 345 },
        },
        {
            spell_id = 28927,
            name = "Royal Shadow Draenite",
            icon = "inv_misc_gem_ebondraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23145 },
            },
            product = { item_id = 23109, qty = 1 },
            materials = {
                { item_id = 23107, qty = 1 },
            },
            levels = { 305, 305, 325, 345 },
        },
        {
            spell_id = 28944,
            name = "Gleaming Golden Draenite",
            icon = "inv_misc_gem_goldendraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23149 },
            },
            product = { item_id = 23114, qty = 1 },
            materials = {
                { item_id = 23112, qty = 1 },
            },
            levels = { 305, 305, 325, 345 },
        },
        {
            spell_id = 28953,
            name = "Sparkling Azure Moonstone",
            icon = "inv_misc_gem_azuredraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23153 },
            },
            product = { item_id = 23119, qty = 1 },
            materials = {
                { item_id = 23117, qty = 1 },
            },
            levels = { 305, 305, 325, 345 },
        },
        {
            spell_id = 34590,
            name = "Bright Blood Garnet",
            icon = "inv_misc_gem_bloodgem_02",
            source = {
                type = "Item",
                recipe_item_ids = { 28596 },
            },
            product = { item_id = 28595, qty = 1 },
            materials = {
                { item_id = 23077, qty = 1 },
            },
            levels = { 305, 305, 325, 345 },
        },
    },
    [310] = {
        {
            spell_id = 31049,
            name = "Golden Draenite Ring",
            icon = "inv_jewelry_ring_60",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { item_id = 24075, qty = 1 },
            materials = {
                { item_id = 23445, qty = 1 },
                { item_id = 23112, qty = 2 },
            },
            levels = { 310, 320, 335, 350 },
        },
        {
            spell_id = 26916,
            name = "Band of Natural Fire",
            icon = "inv_jewelry_ring_41",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { item_id = 21779, qty = 1 },
            materials = {
                { item_id = 21929, qty = 1 },
                { item_id = 7078, qty = 4 },
                { item_id = 12803, qty = 4 },
            },
            levels = { 310, 320, 330, 340 },
        },
        {
            spell_id = 31048,
            name = "Fel Iron Blood Ring",
            icon = "inv_jewelry_ring_39",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { item_id = 24074, qty = 1 },
            materials = {
                { item_id = 23445, qty = 1 },
                { item_id = 23077, qty = 2 },
            },
            levels = { 310, 320, 330, 340 },
        },
    },
    [315] = {
        {
            spell_id = 26918,
            name = "Arcanite Sword Pendant",
            icon = "inv_weapon_shortblade_06",
            source = {
                type = "Item",
                recipe_item_ids = { 21958 },
            },
            product = { item_id = 21793, qty = 1 },
            materials = {
                { item_id = 12360, qty = 4 },
                { item_id = 7076, qty = 4 },
                { item_id = 7082, qty = 4 },
            },
            levels = { 315, 325, 335, 345 },
        },
        {
            spell_id = 28906,
            name = "Runed Blood Garnet",
            icon = "inv_misc_gem_bloodgem_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23133 },
            },
            product = { item_id = 23096, qty = 1 },
            materials = {
                { item_id = 23077, qty = 1 },
            },
            levels = { 315, 315, 335, 355 },
        },
        {
            spell_id = 28914,
            name = "Glinting Flame Spessarite",
            icon = "inv_misc_gem_flamespessarite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23137 },
            },
            product = { item_id = 23100, qty = 1 },
            materials = {
                { item_id = 21929, qty = 1 },
            },
            levels = { 315, 315, 335, 355 },
        },
        {
            spell_id = 28918,
            name = "Enduring Deep Peridot",
            icon = "inv_misc_gem_deepperidot_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23142, 31359 },
            },
            product = { item_id = 23105, qty = 1 },
            materials = {
                { item_id = 23079, qty = 1 },
            },
            levels = { 315, 315, 335, 355 },
        },
        {
            spell_id = 28933,
            name = "Shifting Shadow Draenite",
            icon = "inv_misc_gem_ebondraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23146 },
            },
            product = { item_id = 23110, qty = 1 },
            materials = {
                { item_id = 23107, qty = 1 },
            },
            levels = { 315, 315, 335, 355 },
        },
        {
            spell_id = 28947,
            name = "Thick Golden Draenite",
            icon = "inv_misc_gem_goldendraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23150 },
            },
            product = { item_id = 23115, qty = 1 },
            materials = {
                { item_id = 23112, qty = 1 },
            },
            levels = { 315, 315, 335, 355 },
        },
        {
            spell_id = 28955,
            name = "Stormy Azure Moonstone",
            icon = "inv_misc_gem_azuredraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23154 },
            },
            product = { item_id = 23120, qty = 1 },
            materials = {
                { item_id = 23117, qty = 1 },
            },
            levels = { 315, 315, 335, 355 },
        },
    },
    [320] = {
        {
            spell_id = 31050,
            name = "Azure Moonstone Ring",
            icon = "inv_jewelry_ring_50naxxramas",
            source = {
                type = "Trainer",
                cost = 25000,
            },
            product = { item_id = 24076, qty = 1 },
            materials = {
                { item_id = 23445, qty = 1 },
                { item_id = 23117, qty = 2 },
                { item_id = 23079, qty = 1 },
            },
            levels = { 320, 330, 340, 350 },
        },
    },
    [325] = {
        {
            spell_id = 26920,
            name = "Blood Crown",
            icon = "inv_crown_13",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 41414,
            name = "Brilliant Pearl Band",
            icon = "inv_jewelry_ring_05",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 32772, qty = 1 },
            materials = {
                { item_id = 24478, qty = 8 },
                { item_id = 23447, qty = 2 },
            },
            levels = { 325, 335, 345, 355 },
        },
        {
            spell_id = 28907,
            name = "Delicate Blood Garnet",
            icon = "inv_misc_gem_bloodgem_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23134 },
            },
            product = { item_id = 23097, qty = 1 },
            materials = {
                { item_id = 23077, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 28915,
            name = "Potent Flame Spessarite",
            icon = "inv_misc_gem_flamespessarite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23138 },
            },
            product = { item_id = 23101, qty = 1 },
            materials = {
                { item_id = 21929, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 28924,
            name = "Dazzling Deep Peridot",
            icon = "inv_misc_gem_deepperidot_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23143 },
            },
            product = { item_id = 23106, qty = 1 },
            materials = {
                { item_id = 23079, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 28936,
            name = "Sovereign Shadow Draenite",
            icon = "inv_misc_gem_ebondraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23147 },
            },
            product = { item_id = 23111, qty = 1 },
            materials = {
                { item_id = 23107, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 28948,
            name = "Rigid Golden Draenite",
            icon = "inv_misc_gem_goldendraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23151 },
            },
            product = { item_id = 23116, qty = 1 },
            materials = {
                { item_id = 23112, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 28957,
            name = "Lustrous Azure Moonstone",
            icon = "inv_misc_gem_azuredraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 23155 },
            },
            product = { item_id = 23121, qty = 1 },
            materials = {
                { item_id = 23117, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 34069,
            name = "Smooth Golden Draenite",
            icon = "inv_misc_gem_goldendraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 28291 },
            },
            product = { item_id = 28290, qty = 1 },
            materials = {
                { item_id = 23112, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 39451,
            name = "Great Golden Draenite",
            icon = "inv_misc_gem_goldendraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 31870 },
            },
            product = { item_id = 31860, qty = 1 },
            materials = {
                { item_id = 23112, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 39455,
            name = "Balanced Shadow Draenite",
            icon = "inv_misc_gem_ebondraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 31871 },
            },
            product = { item_id = 31862, qty = 1 },
            materials = {
                { item_id = 23107, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 39458,
            name = "Infused Shadow Draenite",
            icon = "inv_misc_gem_ebondraenite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 31872 },
            },
            product = { item_id = 31864, qty = 1 },
            materials = {
                { item_id = 23107, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 39466,
            name = "Veiled Flame Spessarite",
            icon = "inv_misc_gem_flamespessarite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 31873 },
            },
            product = { item_id = 31866, qty = 1 },
            materials = {
                { item_id = 21929, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 39467,
            name = "Wicked Flame Spessarite",
            icon = "inv_misc_gem_flamespessarite_02",
            source = {
                type = "Item",
                recipe_item_ids = { 31874 },
            },
            product = { item_id = 31869, qty = 1 },
            materials = {
                { item_id = 21929, qty = 1 },
            },
            levels = { 325, 325, 340, 355 },
        },
        {
            spell_id = 38068,
            name = "Mercurial Adamantite",
            icon = "spell_arcane_arcanepotency",
            source = {
                type = "Trainer",
                cost = 20000,
            },
            product = { item_id = 31079, qty = 1 },
            materials = {
                { item_id = 24243, qty = 4 },
                { item_id = 22452, qty = 1 },
            },
            levels = { 325, 325, 335, 345 },
        },
        {
            spell_id = 41420,
            name = "Purified Jaggal Pearl",
            icon = "inv_misc_gem_pearl_08",
            source = {
                type = "Trainer",
                cost = 8500,
            },
            product = { item_id = 32833, qty = 1 },
            materials = {
                { item_id = 24478, qty = 1 },
                { item_id = 27860, qty = 1 },
            },
            levels = { 325, 325, 332, 340 },
        },
    },
    [330] = {
        {
            spell_id = 41415,
            name = "The Black Pearl",
            icon = "inv_jewelry_ring_16",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 32774, qty = 1 },
            materials = {
                { item_id = 24479, qty = 1 },
                { item_id = 31079, qty = 4 },
            },
            levels = { 330, 340, 350, 360 },
        },
    },
    [335] = {
        {
            spell_id = 31051,
            name = "Thick Adamantite Necklace",
            icon = "inv_jewelry_necklace_29naxxramas",
            source = {
                type = "Trainer",
                cost = 30000,
            },
            product = { item_id = 24077, qty = 1 },
            materials = {
                { item_id = 23446, qty = 2 },
                { item_id = 31079, qty = 1 },
            },
            levels = { 335, 345, 355, 365 },
        },
        {
            spell_id = 31052,
            name = "Heavy Adamantite Ring",
            icon = "inv_jewelry_ring_59",
            source = {
                type = "Trainer",
                cost = 30000,
            },
            product = { item_id = 24078, qty = 1 },
            materials = {
                { item_id = 23446, qty = 1 },
                { item_id = 31079, qty = 1 },
            },
            levels = { 335, 345, 355, 365 },
        },
    },
    [340] = {
        {
            spell_id = 40514,
            name = "Necklace of the Deep",
            icon = "inv_jewelry_necklace_03",
            source = {
                type = "Trainer",
                cost = 8500,
            },
            product = { item_id = 32508, qty = 1 },
            materials = {
                { item_id = 22578, qty = 3 },
                { item_id = 24478, qty = 10 },
                { item_id = 24479, qty = 1 },
            },
            levels = { 340, 340, 355, 370 },
        },
    },
    [345] = {
        {
            spell_id = 31058,
            name = "Heavy Felsteel Ring",
            icon = "inv_jewelry_ring_64",
            source = {
                type = "Item",
                recipe_item_ids = { 24163 },
            },
            product = { item_id = 24087, qty = 1 },
            materials = {
                { item_id = 23448, qty = 2 },
                { item_id = 31079, qty = 4 },
            },
            levels = { 345, 355, 365, 375 },
        },
    },
    [350] = {
        {
            spell_id = 31053,
            name = "Khorium Band of Shadows",
            icon = "inv_jewelry_ring_62",
            source = {
                type = "Item",
                recipe_item_ids = { 24158 },
            },
            product = { item_id = 24079, qty = 1 },
            materials = {
                { item_id = 23449, qty = 2 },
                { item_id = 31079, qty = 3 },
                { item_id = 22456, qty = 3 },
            },
            levels = { 350, 360, 370, 380 },
        },
        {
            spell_id = 31084,
            name = "Bold Living Ruby",
            icon = "inv_jewelcrafting_livingruby_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24193 },
            },
            product = { item_id = 24027, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31085,
            name = "Delicate Living Ruby",
            icon = "inv_jewelcrafting_livingruby_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24194 },
            },
            product = { item_id = 24028, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31087,
            name = "Teardrop Living Ruby",
            icon = "inv_jewelcrafting_livingruby_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24195 },
            },
            product = { item_id = 24029, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31088,
            name = "Runed Living Ruby",
            icon = "inv_jewelcrafting_livingruby_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24196 },
            },
            product = { item_id = 24030, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31089,
            name = "Bright Living Ruby",
            icon = "inv_jewelcrafting_livingruby_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24192 },
            },
            product = { item_id = 24031, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31090,
            name = "Subtle Living Ruby",
            icon = "inv_jewelcrafting_livingruby_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24197 },
            },
            product = { item_id = 24032, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31091,
            name = "Flashing Living Ruby",
            icon = "inv_jewelcrafting_livingruby_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24198 },
            },
            product = { item_id = 24036, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31092,
            name = "Solid Star of Elune",
            icon = "inv_jewelcrafting_starofelune_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24199, 35304 },
            },
            product = { item_id = 24033, qty = 1 },
            materials = {
                { item_id = 23438, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31094,
            name = "Lustrous Star of Elune",
            icon = "inv_jewelcrafting_starofelune_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24201 },
            },
            product = { item_id = 24037, qty = 1 },
            materials = {
                { item_id = 23438, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31095,
            name = "Stormy Star of Elune",
            icon = "inv_jewelcrafting_starofelune_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24202 },
            },
            product = { item_id = 24039, qty = 1 },
            materials = {
                { item_id = 23438, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31096,
            name = "Brilliant Dawnstone",
            icon = "inv_jewelcrafting_dawnstone_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24203 },
            },
            product = { item_id = 24047, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31097,
            name = "Smooth Dawnstone",
            icon = "inv_jewelcrafting_dawnstone_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24204 },
            },
            product = { item_id = 24048, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31098,
            name = "Rigid Dawnstone",
            icon = "inv_jewelcrafting_dawnstone_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24205 },
            },
            product = { item_id = 24051, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31099,
            name = "Gleaming Dawnstone",
            icon = "inv_jewelcrafting_dawnstone_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24206 },
            },
            product = { item_id = 24050, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31100,
            name = "Thick Dawnstone",
            icon = "inv_jewelcrafting_dawnstone_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24207 },
            },
            product = { item_id = 24052, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31101,
            name = "Mystic Dawnstone",
            icon = "inv_jewelcrafting_dawnstone_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24208 },
            },
            product = { item_id = 24053, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31102,
            name = "Sovereign Nightseye",
            icon = "inv_jewelcrafting_nightseye_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24209 },
            },
            product = { item_id = 24054, qty = 1 },
            materials = {
                { item_id = 23441, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31103,
            name = "Shifting Nightseye",
            icon = "inv_jewelcrafting_nightseye_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24210 },
            },
            product = { item_id = 24055, qty = 1 },
            materials = {
                { item_id = 23441, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31104,
            name = "Glowing Nightseye",
            icon = "inv_jewelcrafting_nightseye_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24211 },
            },
            product = { item_id = 24056, qty = 1 },
            materials = {
                { item_id = 23441, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31105,
            name = "Royal Nightseye",
            icon = "inv_jewelcrafting_nightseye_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24212 },
            },
            product = { item_id = 24057, qty = 1 },
            materials = {
                { item_id = 23441, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31106,
            name = "Inscribed Noble Topaz",
            icon = "inv_jewelcrafting_nobletopaz_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24213 },
            },
            product = { item_id = 24058, qty = 1 },
            materials = {
                { item_id = 23439, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31107,
            name = "Potent Noble Topaz",
            icon = "inv_jewelcrafting_nobletopaz_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24214 },
            },
            product = { item_id = 24059, qty = 1 },
            materials = {
                { item_id = 23439, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31108,
            name = "Luminous Noble Topaz",
            icon = "inv_jewelcrafting_nobletopaz_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24215 },
            },
            product = { item_id = 24060, qty = 1 },
            materials = {
                { item_id = 23439, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31109,
            name = "Glinting Noble Topaz",
            icon = "inv_jewelcrafting_nobletopaz_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24216 },
            },
            product = { item_id = 24061, qty = 1 },
            materials = {
                { item_id = 23439, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31110,
            name = "Enduring Talasite",
            icon = "inv_jewelcrafting_talasite_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24217 },
            },
            product = { item_id = 24062, qty = 1 },
            materials = {
                { item_id = 23437, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31111,
            name = "Radiant Talasite",
            icon = "inv_jewelcrafting_talasite_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24218 },
            },
            product = { item_id = 24066, qty = 1 },
            materials = {
                { item_id = 23437, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31112,
            name = "Dazzling Talasite",
            icon = "inv_jewelcrafting_talasite_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24219 },
            },
            product = { item_id = 24065, qty = 1 },
            materials = {
                { item_id = 23437, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31113,
            name = "Jagged Talasite",
            icon = "inv_jewelcrafting_talasite_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24220 },
            },
            product = { item_id = 24067, qty = 1 },
            materials = {
                { item_id = 23437, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 31149,
            name = "Sparkling Star of Elune",
            icon = "inv_jewelcrafting_starofelune_03",
            source = {
                type = "Item",
                recipe_item_ids = { 24200 },
            },
            product = { item_id = 24035, qty = 1 },
            materials = {
                { item_id = 23438, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 39452,
            name = "Great Dawnstone",
            icon = "inv_jewelcrafting_dawnstone_03",
            source = {
                type = "Item",
                recipe_item_ids = { 31875 },
            },
            product = { item_id = 31861, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 39462,
            name = "Infused Nightseye",
            icon = "inv_jewelcrafting_nightseye_03",
            source = {
                type = "Item",
                recipe_item_ids = { 31877 },
            },
            product = { item_id = 31865, qty = 1 },
            materials = {
                { item_id = 23441, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 39463,
            name = "Balanced Nightseye",
            icon = "inv_jewelcrafting_nightseye_03",
            source = {
                type = "Item",
                recipe_item_ids = { 31876 },
            },
            product = { item_id = 31863, qty = 1 },
            materials = {
                { item_id = 23441, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 39470,
            name = "Veiled Noble Topaz",
            icon = "inv_jewelcrafting_nobletopaz_03",
            source = {
                type = "Item",
                recipe_item_ids = { 31878 },
            },
            product = { item_id = 31867, qty = 1 },
            materials = {
                { item_id = 23439, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 39471,
            name = "Wicked Noble Topaz",
            icon = "inv_jewelcrafting_nobletopaz_03",
            source = {
                type = "Item",
                recipe_item_ids = { 31879 },
            },
            product = { item_id = 31868, qty = 1 },
            materials = {
                { item_id = 23439, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 41429,
            name = "Purified Shadow Pearl",
            icon = "inv_misc_gem_pearl_07",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 32836, qty = 1 },
            materials = {
                { item_id = 24479, qty = 1 },
                { item_id = 27860, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 43493,
            name = "Steady Talasite",
            icon = "inv_jewelcrafting_talasite_03",
            source = {
                type = "Item",
                recipe_item_ids = { 33783 },
            },
            product = { item_id = 33782, qty = 1 },
            materials = {
                { item_id = 23437, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 46403,
            name = "Quick Dawnstone",
            icon = "inv_jewelcrafting_dawnstone_03",
            source = {
                type = "Item",
                recipe_item_ids = { 35322 },
            },
            product = { item_id = 35315, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 46404,
            name = "Reckless Noble Topaz",
            icon = "inv_jewelcrafting_nobletopaz_03",
            source = {
                type = "Item",
                recipe_item_ids = { 35323 },
            },
            product = { item_id = 35316, qty = 1 },
            materials = {
                { item_id = 23439, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 46405,
            name = "Forceful Talasite",
            icon = "inv_jewelcrafting_talasite_03",
            source = {
                type = "Item",
                recipe_item_ids = { 35325 },
            },
            product = { item_id = 35318, qty = 1 },
            materials = {
                { item_id = 23437, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 46803,
            name = "Regal Nightseye",
            icon = "inv_jewelcrafting_nightseye_03",
            source = {
                type = "Item",
                recipe_item_ids = { 35708 },
            },
            product = { item_id = 35707, qty = 1 },
            materials = {
                { item_id = 23441, qty = 1 },
            },
            levels = { 350, 350, 365, 380 },
        },
        {
            spell_id = 47280,
            name = "Brilliant Glass",
            icon = "inv_misc_gem_diamond_03",
            source = {
                type = "Trainer",
                cost = 30000,
            },
            product = { item_id = 35945, qty = 1 },
            materials = {
                { item_id = 23117, qty = 3 },
                { item_id = 23077, qty = 3 },
                { item_id = 23079, qty = 3 },
                { item_id = 21929, qty = 3 },
                { item_id = 23112, qty = 3 },
                { item_id = 23107, qty = 3 },
            },
            levels = { 350, 350, 365, 380 },
        },
    },
    [355] = {
        {
            spell_id = 31054,
            name = "Khorium Band of Frost",
            icon = "inv_jewelry_ring_57",
            source = {
                type = "Item",
                recipe_item_ids = { 24159 },
            },
            product = { item_id = 24080, qty = 1 },
            materials = {
                { item_id = 23449, qty = 2 },
                { item_id = 31079, qty = 4 },
                { item_id = 21885, qty = 3 },
            },
            levels = { 355, 365, 372, 380 },
        },
        {
            spell_id = 31055,
            name = "Khorium Inferno Band",
            icon = "inv_jewelry_ring_61",
            source = {
                type = "Item",
                recipe_item_ids = { 24160 },
            },
            product = { item_id = 24082, qty = 1 },
            materials = {
                { item_id = 23449, qty = 2 },
                { item_id = 31079, qty = 4 },
                { item_id = 21884, qty = 3 },
            },
            levels = { 355, 365, 372, 380 },
        },
        {
            spell_id = 31060,
            name = "Delicate Eternium Ring",
            icon = "inv_jewelry_ring_65",
            source = {
                type = "Item",
                recipe_item_ids = { 24164 },
            },
            product = { item_id = 24088, qty = 1 },
            materials = {
                { item_id = 23447, qty = 1 },
                { item_id = 31079, qty = 5 },
            },
            levels = { 355, 365, 375, 385 },
        },
        {
            spell_id = 31067,
            name = "Thick Felsteel Necklace",
            icon = "inv_jewelry_necklace_17",
            source = {
                type = "Item",
                recipe_item_ids = { 24166 },
            },
            product = { item_id = 24106, qty = 1 },
            materials = {
                { item_id = 23448, qty = 2 },
                { item_id = 31079, qty = 3 },
            },
            levels = { 355, 365, 375, 385 },
        },
        {
            spell_id = 31068,
            name = "Living Ruby Pendant",
            icon = "inv_jewelry_necklace_15",
            source = {
                type = "Item",
                recipe_item_ids = { 24167 },
            },
            product = { item_id = 24110, qty = 1 },
            materials = {
                { item_id = 23449, qty = 4 },
                { item_id = 31079, qty = 1 },
                { item_id = 23436, qty = 1 },
            },
            levels = { 355, 365, 375, 385 },
        },
    },
    [360] = {
        {
            spell_id = 31056,
            name = "Khorium Band of Leaves",
            icon = "inv_jewelry_ring_56",
            source = {
                type = "Item",
                recipe_item_ids = { 24161 },
            },
            product = { item_id = 24085, qty = 1 },
            materials = {
                { item_id = 23449, qty = 2 },
                { item_id = 31079, qty = 4 },
                { item_id = 21886, qty = 3 },
            },
            levels = { 360, 370, 375, 380 },
        },
        {
            spell_id = 31062,
            name = "Pendant of Frozen Flame",
            icon = "inv_jewelry_necklace_36",
            source = {
                type = "Item",
                recipe_item_ids = { 24174 },
            },
            product = { item_id = 24092, qty = 1 },
            materials = {
                { item_id = 23448, qty = 2 },
                { item_id = 21885, qty = 6 },
                { item_id = 21884, qty = 4 },
                { item_id = 31079, qty = 1 },
            },
            levels = { 360, 370, 375, 380 },
        },
        {
            spell_id = 31063,
            name = "Pendant of Thawing",
            icon = "inv_jewelry_necklace_34",
            source = {
                type = "Item",
                recipe_item_ids = { 24175 },
            },
            product = { item_id = 24093, qty = 1 },
            materials = {
                { item_id = 23448, qty = 2 },
                { item_id = 21884, qty = 6 },
                { item_id = 21885, qty = 4 },
                { item_id = 31079, qty = 1 },
            },
            levels = { 360, 370, 375, 380 },
        },
        {
            spell_id = 31064,
            name = "Pendant of Withering",
            icon = "inv_jewelry_necklace_31",
            source = {
                type = "Item",
                recipe_item_ids = { 24176 },
            },
            product = { item_id = 24095, qty = 1 },
            materials = {
                { item_id = 23448, qty = 2 },
                { item_id = 22456, qty = 6 },
                { item_id = 21886, qty = 4 },
                { item_id = 31079, qty = 1 },
            },
            levels = { 360, 370, 375, 380 },
        },
        {
            spell_id = 31065,
            name = "Pendant of Shadow's End",
            icon = "inv_jewelry_necklace_33",
            source = {
                type = "Item",
                recipe_item_ids = { 24177 },
            },
            product = { item_id = 24097, qty = 1 },
            materials = {
                { item_id = 23448, qty = 2 },
                { item_id = 21886, qty = 6 },
                { item_id = 22456, qty = 4 },
                { item_id = 31079, qty = 1 },
            },
            levels = { 360, 370, 375, 380 },
        },
        {
            spell_id = 31066,
            name = "Pendant of the Null Rune",
            icon = "inv_jewelry_necklace_32",
            source = {
                type = "Item",
                recipe_item_ids = { 24178 },
            },
            product = { item_id = 24098, qty = 1 },
            materials = {
                { item_id = 23448, qty = 2 },
                { item_id = 22457, qty = 8 },
                { item_id = 31079, qty = 1 },
            },
            levels = { 360, 370, 375, 380 },
        },
        {
            spell_id = 31070,
            name = "Braided Eternium Chain",
            icon = "inv_jewelry_necklace_07",
            source = {
                type = "Item",
                recipe_item_ids = { 24168 },
            },
            product = { item_id = 24114, qty = 1 },
            materials = {
                { item_id = 23447, qty = 2 },
                { item_id = 31079, qty = 3 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 31071,
            name = "Eye of the Night",
            icon = "inv_jewelry_necklace_28",
            source = {
                type = "Item",
                recipe_item_ids = { 24169 },
            },
            product = { item_id = 24116, qty = 1 },
            materials = {
                { item_id = 23573, qty = 2 },
                { item_id = 31079, qty = 2 },
                { item_id = 23441, qty = 1 },
            },
            levels = { 360, 370, 375, 380 },
        },
        {
            spell_id = 37855,
            name = "Ring of Arcane Shielding",
            icon = "inv_jewelry_ring_68",
            source = {
                type = "Item",
                recipe_item_ids = { 30826 },
            },
            product = { item_id = 30825, qty = 1 },
            materials = {
                { item_id = 23447, qty = 2 },
                { item_id = 22457, qty = 8 },
            },
            levels = { 360, 370, 375, 380 },
        },
        {
            spell_id = 42558,
            name = "Don Julio's Heart",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 33305 },
            },
            product = { item_id = 33133, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 360, 365, 370, 375 },
        },
        {
            spell_id = 42588,
            name = "Kailee's Rose",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 33155 },
            },
            product = { item_id = 33134, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 360, 365, 370, 375 },
        },
        {
            spell_id = 42589,
            name = "Crimson Sun",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 33156 },
            },
            product = { item_id = 33131, qty = 1 },
            materials = {
                { item_id = 23436, qty = 1 },
            },
            levels = { 360, 365, 370, 375 },
        },
        {
            spell_id = 42590,
            name = "Falling Star",
            icon = "inv_jewelcrafting_empyreansapphire_02",
            source = {
                type = "Item",
                recipe_item_ids = { 33157 },
            },
            product = { item_id = 33135, qty = 1 },
            materials = {
                { item_id = 23438, qty = 1 },
            },
            levels = { 360, 365, 370, 375 },
        },
        {
            spell_id = 42591,
            name = "Stone of Blades",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 33158 },
            },
            product = { item_id = 33143, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 360, 365, 370, 375 },
        },
        {
            spell_id = 42592,
            name = "Blood of Amber",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 33159 },
            },
            product = { item_id = 33140, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 360, 365, 370, 375 },
        },
        {
            spell_id = 42593,
            name = "Facet of Eternity",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 33160 },
            },
            product = { item_id = 33144, qty = 1 },
            materials = {
                { item_id = 23440, qty = 1 },
            },
            levels = { 360, 365, 370, 375 },
        },
    },
    [365] = {
        {
            spell_id = 46122,
            name = "Loop of Forged Power",
            icon = "inv_jewelry_ring_35",
            source = {
                type = "Item",
                recipe_item_ids = { 35198 },
            },
            product = { item_id = 34362, qty = 1 },
            materials = {
                { item_id = 35128, qty = 4 },
                { item_id = 23571, qty = 4 },
                { item_id = 31079, qty = 12 },
                { item_id = 34664, qty = 5 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 46123,
            name = "Ring of Flowing Life",
            icon = "inv_jewelry_ring_35",
            source = {
                type = "Item",
                recipe_item_ids = { 35199 },
            },
            product = { item_id = 34363, qty = 1 },
            materials = {
                { item_id = 35128, qty = 4 },
                { item_id = 21886, qty = 20 },
                { item_id = 31079, qty = 12 },
                { item_id = 34664, qty = 5 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 46124,
            name = "Hard Khorium Band",
            icon = "inv_jewelry_ring_55",
            source = {
                type = "Item",
                recipe_item_ids = { 35200 },
            },
            product = { item_id = 34361, qty = 1 },
            materials = {
                { item_id = 35128, qty = 4 },
                { item_id = 22451, qty = 20 },
                { item_id = 31079, qty = 12 },
                { item_id = 34664, qty = 5 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 46125,
            name = "Pendant of Sunfire",
            icon = "inv_jewelry_necklace_30",
            source = {
                type = "Item",
                recipe_item_ids = { 35201 },
            },
            product = { item_id = 34359, qty = 1 },
            materials = {
                { item_id = 31079, qty = 12 },
                { item_id = 32227, qty = 3 },
                { item_id = 32228, qty = 3 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 46126,
            name = "Amulet of Flowing Life",
            icon = "inv_jewelry_necklace_30",
            source = {
                type = "Item",
                recipe_item_ids = { 35202 },
            },
            product = { item_id = 34360, qty = 1 },
            materials = {
                { item_id = 31079, qty = 6 },
                { item_id = 32249, qty = 6 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 46127,
            name = "Hard Khorium Choker",
            icon = "inv_jewelry_necklace_35",
            source = {
                type = "Item",
                recipe_item_ids = { 35203 },
            },
            product = { item_id = 34358, qty = 1 },
            materials = {
                { item_id = 35128, qty = 6 },
                { item_id = 23572, qty = 9 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 31057,
            name = "Arcane Khorium Band",
            icon = "inv_jewelry_ring_63",
            source = {
                type = "Item",
                recipe_item_ids = { 24162 },
            },
            product = { item_id = 24086, qty = 1 },
            materials = {
                { item_id = 23449, qty = 2 },
                { item_id = 31079, qty = 4 },
                { item_id = 22457, qty = 3 },
            },
            levels = { 365, 370, 375, 380 },
        },
        {
            spell_id = 31061,
            name = "Blazing Eternium Band",
            icon = "inv_jewelry_ring_55",
            source = {
                type = "Item",
                recipe_item_ids = { 24165 },
            },
            product = { item_id = 24089, qty = 1 },
            materials = {
                { item_id = 23447, qty = 2 },
                { item_id = 31079, qty = 4 },
                { item_id = 21884, qty = 4 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 31072,
            name = "Embrace of the Dawn",
            icon = "inv_jewelry_necklace_29naxxramas",
            source = {
                type = "Item",
                recipe_item_ids = { 24170 },
            },
            product = { item_id = 24117, qty = 1 },
            materials = {
                { item_id = 23447, qty = 2 },
                { item_id = 31079, qty = 4 },
                { item_id = 23112, qty = 2 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 31076,
            name = "Chain of the Twilight Owl",
            icon = "inv_jewelry_necklace_ahnqiraj_02",
            source = {
                type = "Item",
                recipe_item_ids = { 24171 },
            },
            product = { item_id = 24121, qty = 1 },
            materials = {
                { item_id = 23449, qty = 2 },
                { item_id = 31079, qty = 4 },
                { item_id = 23117, qty = 2 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 32866,
            name = "Powerful Earthstorm Diamond",
            icon = "inv_misc_gem_diamond_06",
            source = {
                type = "Item",
                recipe_item_ids = { 25902 },
            },
            product = { item_id = 25896, qty = 1 },
            materials = {
                { item_id = 25867, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 32867,
            name = "Bracing Earthstorm Diamond",
            icon = "inv_misc_gem_diamond_06",
            source = {
                type = "Item",
                recipe_item_ids = { 25903 },
            },
            product = { item_id = 25897, qty = 1 },
            materials = {
                { item_id = 25867, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 32868,
            name = "Tenacious Earthstorm Diamond",
            icon = "inv_misc_gem_diamond_06",
            source = {
                type = "Item",
                recipe_item_ids = { 25905 },
            },
            product = { item_id = 25898, qty = 1 },
            materials = {
                { item_id = 25867, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 32869,
            name = "Brutal Earthstorm Diamond",
            icon = "inv_misc_gem_diamond_06",
            source = {
                type = "Item",
                recipe_item_ids = { 25906 },
            },
            product = { item_id = 25899, qty = 1 },
            materials = {
                { item_id = 25867, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 32870,
            name = "Insightful Earthstorm Diamond",
            icon = "inv_misc_gem_diamond_06",
            source = {
                type = "Item",
                recipe_item_ids = { 25904 },
            },
            product = { item_id = 25901, qty = 1 },
            materials = {
                { item_id = 25867, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 32871,
            name = "Destructive Skyfire Diamond",
            icon = "inv_misc_gem_diamond_07",
            source = {
                type = "Item",
                recipe_item_ids = { 25907 },
            },
            product = { item_id = 25890, qty = 1 },
            materials = {
                { item_id = 25868, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 32872,
            name = "Mystical Skyfire Diamond",
            icon = "inv_misc_gem_diamond_07",
            source = {
                type = "Item",
                recipe_item_ids = { 25909 },
            },
            product = { item_id = 25893, qty = 1 },
            materials = {
                { item_id = 25868, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 32873,
            name = "Swift Skyfire Diamond",
            icon = "inv_misc_gem_diamond_07",
            source = {
                type = "Item",
                recipe_item_ids = { 25908 },
            },
            product = { item_id = 25894, qty = 1 },
            materials = {
                { item_id = 25868, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 32874,
            name = "Enigmatic Skyfire Diamond",
            icon = "inv_misc_gem_diamond_07",
            source = {
                type = "Item",
                recipe_item_ids = { 25910 },
            },
            product = { item_id = 25895, qty = 1 },
            materials = {
                { item_id = 25868, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 39961,
            name = "Relentless Earthstorm Diamond",
            icon = "inv_misc_gem_diamond_06",
            source = {
                type = "Item",
                recipe_item_ids = { 32412 },
            },
            product = { item_id = 32409, qty = 1 },
            materials = {
                { item_id = 25867, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 39963,
            name = "Thundering Skyfire Diamond",
            icon = "inv_misc_gem_diamond_07",
            source = {
                type = "Item",
                recipe_item_ids = { 32411 },
            },
            product = { item_id = 32410, qty = 1 },
            materials = {
                { item_id = 25868, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
        {
            spell_id = 41418,
            name = "Crown of the Sea Witch",
            icon = "inv_crown_01",
            source = {
                type = "Trainer",
                cost = 30000,
            },
            product = { item_id = 32776, qty = 1 },
            materials = {
                { item_id = 23449, qty = 12 },
                { item_id = 31079, qty = 4 },
                { item_id = 24478, qty = 20 },
                { item_id = 24479, qty = 3 },
            },
            levels = { 365, 375, 380, 385 },
        },
        {
            spell_id = 44794,
            name = "Chaotic Skyfire Diamond",
            icon = "inv_misc_gem_diamond_07",
            source = {
                type = "Item",
                recipe_item_ids = { 34689 },
            },
            product = { item_id = 34220, qty = 1 },
            materials = {
                { item_id = 25868, qty = 1 },
            },
            levels = { 365, 375, 377, 380 },
        },
    },
    [370] = {
        {
            spell_id = 31077,
            name = "Coronet of the Verdant Flame",
            icon = "inv_crown_01",
            source = {
                type = "Item",
                recipe_item_ids = { 24172 },
            },
            product = { item_id = 24122, qty = 1 },
            materials = {
                { item_id = 23449, qty = 20 },
                { item_id = 21886, qty = 20 },
                { item_id = 23437, qty = 2 },
                { item_id = 31079, qty = 5 },
            },
            levels = { 370, 375, 380, 385 },
        },
        {
            spell_id = 31078,
            name = "Circlet of Arcane Might",
            icon = "inv_crown_02",
            source = {
                type = "Item",
                recipe_item_ids = { 24173 },
            },
            product = { item_id = 24123, qty = 1 },
            materials = {
                { item_id = 23448, qty = 20 },
                { item_id = 22457, qty = 20 },
                { item_id = 23438, qty = 2 },
                { item_id = 31079, qty = 5 },
            },
            levels = { 370, 375, 380, 385 },
        },
        {
            spell_id = 31079,
            name = "Figurine - Felsteel Boar",
            icon = "inv_jewelcrafting_truesilverboar",
            source = {
                type = "Item",
                recipe_item_ids = { 24179 },
            },
            product = { item_id = 24124, qty = 1 },
            materials = {
                { item_id = 23448, qty = 8 },
                { item_id = 23077, qty = 2 },
                { item_id = 22452, qty = 4 },
            },
            levels = { 370, 375, 380, 385 },
        },
        {
            spell_id = 31080,
            name = "Figurine - Dawnstone Crab",
            icon = "inv_jewelcrafting_truesilvercrab",
            source = {
                type = "Item",
                recipe_item_ids = { 24180, 31358 },
            },
            product = { item_id = 24125, qty = 1 },
            materials = {
                { item_id = 23449, qty = 4 },
                { item_id = 23440, qty = 2 },
                { item_id = 23112, qty = 4 },
            },
            levels = { 370, 375, 380, 385 },
        },
        {
            spell_id = 31081,
            name = "Figurine - Living Ruby Serpent",
            icon = "inv_jewelcrafting_rubyserpent",
            source = {
                type = "Item",
                recipe_item_ids = { 24181 },
            },
            product = { item_id = 24126, qty = 1 },
            materials = {
                { item_id = 23448, qty = 2 },
                { item_id = 23436, qty = 2 },
                { item_id = 21884, qty = 4 },
            },
            levels = { 370, 375, 380, 385 },
        },
        {
            spell_id = 31082,
            name = "Figurine - Talasite Owl",
            icon = "inv_jewelcrafting_jadeowl",
            source = {
                type = "Item",
                recipe_item_ids = { 24182 },
            },
            product = { item_id = 24127, qty = 1 },
            materials = {
                { item_id = 23447, qty = 2 },
                { item_id = 23437, qty = 2 },
                { item_id = 22457, qty = 4 },
            },
            levels = { 370, 375, 380, 385 },
        },
        {
            spell_id = 31083,
            name = "Figurine - Nightseye Panther",
            icon = "inv_jewelcrafting_blackpearlpanther",
            source = {
                type = "Item",
                recipe_item_ids = { 24183 },
            },
            product = { item_id = 24128, qty = 1 },
            materials = {
                { item_id = 23573, qty = 6 },
                { item_id = 23441, qty = 2 },
                { item_id = 22456, qty = 2 },
            },
            levels = { 370, 375, 380, 385 },
        },
        {
            spell_id = 46597,
            name = "Eternal Earthstorm Diamond",
            icon = "inv_misc_gem_diamond_06",
            source = {
                type = "Item",
                recipe_item_ids = { 35502 },
            },
            product = { item_id = 35501, qty = 1 },
            materials = {
                { item_id = 25867, qty = 1 },
            },
            levels = { 370, 375, 377, 380 },
        },
        {
            spell_id = 46601,
            name = "Ember Skyfire Diamond",
            icon = "inv_misc_gem_diamond_07",
            source = {
                type = "Item",
                recipe_item_ids = { 35505 },
            },
            product = { item_id = 35503, qty = 1 },
            materials = {
                { item_id = 25868, qty = 1 },
            },
            levels = { 370, 375, 377, 380 },
        },
    },
    [375] = {
        {
            spell_id = 38503,
            name = "The Frozen Eye",
            icon = "inv_jewelry_ring_70",
            source = {
                type = "Item",
                recipe_item_ids = { 31401 },
            },
            product = { item_id = 31398, qty = 1 },
            materials = {
                { item_id = 31079, qty = 4 },
                { item_id = 23449, qty = 2 },
                { item_id = 21885, qty = 6 },
                { item_id = 21884, qty = 6 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 38504,
            name = "The Natural Ward",
            icon = "inv_jewelry_ring_69",
            source = {
                type = "Item",
                recipe_item_ids = { 31402 },
            },
            product = { item_id = 31399, qty = 1 },
            materials = {
                { item_id = 31079, qty = 4 },
                { item_id = 23448, qty = 2 },
                { item_id = 21886, qty = 6 },
                { item_id = 22456, qty = 6 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39705,
            name = "Bold Crimson Spinel",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32274, 35244 },
            },
            product = { item_id = 32193, qty = 1 },
            materials = {
                { item_id = 32227, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39706,
            name = "Delicate Crimson Spinel",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32277, 35246 },
            },
            product = { item_id = 32194, qty = 1 },
            materials = {
                { item_id = 32227, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39710,
            name = "Teardrop Crimson Spinel",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32281, 35250 },
            },
            product = { item_id = 32195, qty = 1 },
            materials = {
                { item_id = 32227, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39711,
            name = "Runed Crimson Spinel",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32282, 35248 },
            },
            product = { item_id = 32196, qty = 1 },
            materials = {
                { item_id = 32227, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39712,
            name = "Bright Crimson Spinel",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32283, 35245 },
            },
            product = { item_id = 32197, qty = 1 },
            materials = {
                { item_id = 32227, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39713,
            name = "Subtle Crimson Spinel",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32284, 35249 },
            },
            product = { item_id = 32198, qty = 1 },
            materials = {
                { item_id = 32227, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39714,
            name = "Flashing Crimson Spinel",
            icon = "inv_jewelcrafting_crimsonspinel_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32285, 35247 },
            },
            product = { item_id = 32199, qty = 1 },
            materials = {
                { item_id = 32227, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39715,
            name = "Solid Empyrean Sapphire",
            icon = "inv_jewelcrafting_empyreansapphire_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32286, 35263 },
            },
            product = { item_id = 32200, qty = 1 },
            materials = {
                { item_id = 32228, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39716,
            name = "Sparkling Empyrean Sapphire",
            icon = "inv_jewelcrafting_empyreansapphire_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32287, 35264 },
            },
            product = { item_id = 32201, qty = 1 },
            materials = {
                { item_id = 32228, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39717,
            name = "Lustrous Empyrean Sapphire",
            icon = "inv_jewelcrafting_empyreansapphire_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32288, 35262 },
            },
            product = { item_id = 32202, qty = 1 },
            materials = {
                { item_id = 32228, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39718,
            name = "Stormy Empyrean Sapphire",
            icon = "inv_jewelcrafting_empyreansapphire_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32289, 35265 },
            },
            product = { item_id = 32203, qty = 1 },
            materials = {
                { item_id = 32228, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39719,
            name = "Brilliant Lionseye",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32290, 35255 },
            },
            product = { item_id = 32204, qty = 1 },
            materials = {
                { item_id = 32229, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39720,
            name = "Smooth Lionseye",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32291, 35260 },
            },
            product = { item_id = 32205, qty = 1 },
            materials = {
                { item_id = 32229, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39721,
            name = "Rigid Lionseye",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32292, 35259 },
            },
            product = { item_id = 32206, qty = 1 },
            materials = {
                { item_id = 32229, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39722,
            name = "Gleaming Lionseye",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32293, 35256 },
            },
            product = { item_id = 32207, qty = 1 },
            materials = {
                { item_id = 32229, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39723,
            name = "Thick Lionseye",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32294, 35261 },
            },
            product = { item_id = 32208, qty = 1 },
            materials = {
                { item_id = 32229, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39724,
            name = "Mystic Lionseye",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32295, 35258 },
            },
            product = { item_id = 32209, qty = 1 },
            materials = {
                { item_id = 32229, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39725,
            name = "Great Lionseye",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32296, 35257 },
            },
            product = { item_id = 32210, qty = 1 },
            materials = {
                { item_id = 32229, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39727,
            name = "Sovereign Shadowsong Amethyst",
            icon = "inv_jewelcrafting_shadowsongamethyst_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32297, 35243 },
            },
            product = { item_id = 32211, qty = 1 },
            materials = {
                { item_id = 32230, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39728,
            name = "Shifting Shadowsong Amethyst",
            icon = "inv_jewelcrafting_shadowsongamethyst_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32298, 35242 },
            },
            product = { item_id = 32212, qty = 1 },
            materials = {
                { item_id = 32230, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39729,
            name = "Balanced Shadowsong Amethyst",
            icon = "inv_jewelcrafting_shadowsongamethyst_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32299, 35238 },
            },
            product = { item_id = 32213, qty = 1 },
            materials = {
                { item_id = 32230, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39730,
            name = "Infused Shadowsong Amethyst",
            icon = "inv_jewelcrafting_shadowsongamethyst_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32300, 35240 },
            },
            product = { item_id = 32214, qty = 1 },
            materials = {
                { item_id = 32230, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39731,
            name = "Glowing Shadowsong Amethyst",
            icon = "inv_jewelcrafting_shadowsongamethyst_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32301, 35239 },
            },
            product = { item_id = 32215, qty = 1 },
            materials = {
                { item_id = 32230, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39732,
            name = "Royal Shadowsong Amethyst",
            icon = "inv_jewelcrafting_shadowsongamethyst_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32302, 35241 },
            },
            product = { item_id = 32216, qty = 1 },
            materials = {
                { item_id = 32230, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39733,
            name = "Inscribed Pyrestone",
            icon = "inv_jewelcrafting_pyrestone_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32303, 35267 },
            },
            product = { item_id = 32217, qty = 1 },
            materials = {
                { item_id = 32231, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39734,
            name = "Potent Pyrestone",
            icon = "inv_jewelcrafting_pyrestone_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32304, 35269 },
            },
            product = { item_id = 32218, qty = 1 },
            materials = {
                { item_id = 32231, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39735,
            name = "Luminous Pyrestone",
            icon = "inv_jewelcrafting_pyrestone_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32305, 35268 },
            },
            product = { item_id = 32219, qty = 1 },
            materials = {
                { item_id = 32231, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39736,
            name = "Glinting Pyrestone",
            icon = "inv_jewelcrafting_pyrestone_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32306, 35266 },
            },
            product = { item_id = 32220, qty = 1 },
            materials = {
                { item_id = 32231, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39737,
            name = "Veiled Pyrestone",
            icon = "inv_jewelcrafting_pyrestone_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32307, 35270 },
            },
            product = { item_id = 32221, qty = 1 },
            materials = {
                { item_id = 32231, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39738,
            name = "Wicked Pyrestone",
            icon = "inv_jewelcrafting_pyrestone_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32308, 35271 },
            },
            product = { item_id = 32222, qty = 1 },
            materials = {
                { item_id = 32231, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39739,
            name = "Enduring Seaspray Emerald",
            icon = "inv_jewelcrafting_seasprayemerald_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32309, 35252 },
            },
            product = { item_id = 32223, qty = 1 },
            materials = {
                { item_id = 32249, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39740,
            name = "Radiant Seaspray Emerald",
            icon = "inv_jewelcrafting_seasprayemerald_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32310, 35254 },
            },
            product = { item_id = 32224, qty = 1 },
            materials = {
                { item_id = 32249, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39741,
            name = "Dazzling Seaspray Emerald",
            icon = "inv_jewelcrafting_seasprayemerald_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32311, 35251 },
            },
            product = { item_id = 32225, qty = 1 },
            materials = {
                { item_id = 32249, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 39742,
            name = "Jagged Seaspray Emerald",
            icon = "inv_jewelcrafting_seasprayemerald_02",
            source = {
                type = "Item",
                recipe_item_ids = { 32312, 35253 },
            },
            product = { item_id = 32226, qty = 1 },
            materials = {
                { item_id = 32249, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 46775,
            name = "Figurine - Empyrean Tortoise",
            icon = "ability_hunter_pet_turtle",
            source = {
                type = "Item",
                recipe_item_ids = { 35695 },
            },
            product = { item_id = 35693, qty = 1 },
            materials = {
                { item_id = 23449, qty = 8 },
                { item_id = 32228, qty = 2 },
                { item_id = 23440, qty = 6 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 46776,
            name = "Figurine - Khorium Boar",
            icon = "inv_jewelcrafting_truesilverboar",
            source = {
                type = "Item",
                recipe_item_ids = { 35696 },
            },
            product = { item_id = 35694, qty = 1 },
            materials = {
                { item_id = 23449, qty = 8 },
                { item_id = 32231, qty = 2 },
                { item_id = 22452, qty = 8 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 46777,
            name = "Figurine - Crimson Serpent",
            icon = "inv_jewelcrafting_rubyserpent",
            source = {
                type = "Item",
                recipe_item_ids = { 35697 },
            },
            product = { item_id = 35700, qty = 1 },
            materials = {
                { item_id = 23447, qty = 8 },
                { item_id = 32227, qty = 2 },
                { item_id = 21884, qty = 8 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 46778,
            name = "Figurine - Shadowsong Panther",
            icon = "inv_jewelcrafting_blackpearlpanther",
            source = {
                type = "Item",
                recipe_item_ids = { 35698 },
            },
            product = { item_id = 35702, qty = 1 },
            materials = {
                { item_id = 23573, qty = 4 },
                { item_id = 32230, qty = 2 },
                { item_id = 22456, qty = 8 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 46779,
            name = "Figurine - Seaspray Albatross",
            icon = "inv_qirajidol_obsidian",
            source = {
                type = "Item",
                recipe_item_ids = { 35699 },
            },
            product = { item_id = 35703, qty = 1 },
            materials = {
                { item_id = 23447, qty = 8 },
                { item_id = 32249, qty = 2 },
                { item_id = 22457, qty = 8 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 47053,
            name = "Forceful Seaspray Emerald",
            icon = "inv_jewelcrafting_seasprayemerald_02",
            source = {
                type = "Item",
                recipe_item_ids = { 35765, 35769 },
            },
            product = { item_id = 35759, qty = 1 },
            materials = {
                { item_id = 32249, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 47054,
            name = "Steady Seaspray Emerald",
            icon = "inv_jewelcrafting_seasprayemerald_02",
            source = {
                type = "Item",
                recipe_item_ids = { 35764, 35766 },
            },
            product = { item_id = 35758, qty = 1 },
            materials = {
                { item_id = 32249, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 47055,
            name = "Reckless Pyrestone",
            icon = "inv_jewelcrafting_pyrestone_02",
            source = {
                type = "Item",
                recipe_item_ids = { 35762, 35767 },
            },
            product = { item_id = 35760, qty = 1 },
            materials = {
                { item_id = 32231, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 47056,
            name = "Quick Lionseye",
            icon = "inv_jewelcrafting_lionseye_02",
            source = {
                type = "Item",
                recipe_item_ids = { 35763, 35768 },
            },
            product = { item_id = 35761, qty = 1 },
            materials = {
                { item_id = 32229, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
        {
            spell_id = 48789,
            name = "Purified Shadowsong Amethyst",
            icon = "inv_jewelcrafting_shadowsongamethyst_02",
            source = {
                type = "Item",
                recipe_item_ids = { 37504 },
            },
            product = { item_id = 37503, qty = 1 },
            materials = {
                { item_id = 32230, qty = 1 },
            },
            levels = { 375, 375, 380, 385 },
        },
    },
}

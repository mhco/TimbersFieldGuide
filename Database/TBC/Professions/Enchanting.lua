local _, TFG = ...

TFG.ENCHANTING_TBC = {
    [1] = {
        {
            spell_id = 7411,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 13262,
            name = "Disenchant",
            icon = "inv_enchant_disenchant",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 7421,
            name = "Runed Copper Rod",
            icon = "inv_staff_goldfeathered_01",
            source = {
                type = "Trainer",
            },
            product = { item_id = 6218, qty = 1 },
            materials = {
                { item_id = 6217, qty = 1 },
                { item_id = 10940, qty = 1 },
                { item_id = 10938, qty = 1 },
            },
            levels = { 1, 5, 7, 10 },
        },
    },
    [10] = {
        {
            spell_id = 14293,
            name = "Lesser Magic Wand",
            icon = "inv_staff_02",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { item_id = 11287, qty = 1 },
            materials = {
                { item_id = 4470, qty = 1 },
                { item_id = 10938, qty = 1 },
            },
            levels = { 10, 75, 95, 115 },
        },
    },
    [15] = {
        {
            spell_id = 7420,
            name = "Enchant Chest - Minor Health",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 1 },
            },
            levels = { 15, 70, 90, 110 },
        },
    },
    [20] = {
        {
            spell_id = 7443,
            name = "Enchant Chest - Minor Mana",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6342 },
            },
            materials = {
                { item_id = 10938, qty = 1 },
            },
            levels = { 20, 80, 100, 120 },
        },
    },
    [40] = {
        {
            spell_id = 7426,
            name = "Enchant Chest - Minor Absorption",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 2 },
                { item_id = 10938, qty = 1 },
            },
            levels = { 40, 90, 110, 130 },
        },
    },
    [45] = {
        {
            spell_id = 7454,
            name = "Enchant Cloak - Minor Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 1 },
                { item_id = 10938, qty = 2 },
            },
            levels = { 45, 95, 115, 135 },
        },
        {
            spell_id = 25124,
            name = "Minor Wizard Oil",
            icon = "inv_poison_mindnumbing",
            source = {
                type = "Item",
                recipe_item_ids = { 20758 },
            },
            product = { item_id = 20744, qty = 1 },
            materials = {
                { item_id = 10940, qty = 2 },
                { item_id = 17034, qty = 1 },
                { item_id = 3371, qty = 1 },
            },
            levels = { 45, 55, 65, 75 },
        },
    },
    [50] = {
        {
            spell_id = 7412,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 7457,
            name = "Enchant Bracer - Minor Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 3 },
            },
            levels = { 50, 100, 120, 140 },
        },
    },
    [60] = {
        {
            spell_id = 7748,
            name = "Enchant Chest - Lesser Health",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 2 },
                { item_id = 10938, qty = 2 },
            },
            levels = { 60, 105, 125, 145 },
        },
        {
            spell_id = 7766,
            name = "Enchant Bracer - Minor Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6344 },
            },
            materials = {
                { item_id = 10938, qty = 2 },
            },
            levels = { 60, 105, 125, 145 },
        },
    },
    [70] = {
        {
            spell_id = 7771,
            name = "Enchant Cloak - Minor Protection",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6345 },
            },
            materials = {
                { item_id = 10940, qty = 3 },
                { item_id = 10939, qty = 1 },
            },
            levels = { 90, 110, 130, 150 },
        },
        {
            spell_id = 14807,
            name = "Greater Magic Wand",
            icon = "inv_staff_07",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { item_id = 11288, qty = 1 },
            materials = {
                { item_id = 4470, qty = 1 },
                { item_id = 10939, qty = 1 },
            },
            levels = { 70, 110, 130, 150 },
        },
        {
            spell_id = 7418,
            name = "Enchant Bracer - Minor Health",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 1 },
            },
            levels = { 1, 70, 90, 110 },
        },
    },
    [80] = {
        {
            spell_id = 7776,
            name = "Enchant Chest - Lesser Mana",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6346 },
            },
            materials = {
                { item_id = 10939, qty = 1 },
                { item_id = 10938, qty = 1 },
            },
            levels = { 80, 115, 135, 155 },
        },
        {
            spell_id = 7779,
            name = "Enchant Bracer - Minor Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 2 },
                { item_id = 10939, qty = 1 },
            },
            levels = { 80, 115, 135, 155 },
        },
        {
            spell_id = 7782,
            name = "Enchant Bracer - Minor Strength",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6347 },
            },
            materials = {
                { item_id = 10940, qty = 5 },
            },
            levels = { 80, 115, 135, 155 },
        },
        {
            spell_id = 7428,
            name = "Enchant Bracer - Minor Deflection",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10938, qty = 1 },
                { item_id = 10940, qty = 1 },
            },
            levels = { 1, 80, 100, 120 },
        },
    },
    [90] = {
        {
            spell_id = 7786,
            name = "Enchant Weapon - Minor Beastslayer",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6348 },
            },
            materials = {
                { item_id = 10940, qty = 4 },
                { item_id = 10939, qty = 2 },
            },
            levels = { 90, 120, 140, 160 },
        },
        {
            spell_id = 7788,
            name = "Enchant Weapon - Minor Striking",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 2 },
                { item_id = 10939, qty = 1 },
                { item_id = 10978, qty = 1 },
            },
            levels = { 90, 120, 140, 160 },
        },
    },
    [100] = {
        {
            spell_id = 7745,
            name = "Enchant 2H Weapon - Minor Impact",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 4 },
                { item_id = 10978, qty = 1 },
            },
            levels = { 100, 130, 150, 170 },
        },
        {
            spell_id = 7793,
            name = "Enchant 2H Weapon - Lesser Intellect",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 6349 },
            },
            materials = {
                { item_id = 10939, qty = 3 },
            },
            levels = { 100, 130, 150, 170 },
        },
        {
            spell_id = 7795,
            name = "Runed Silver Rod",
            icon = "inv_staff_01",
            source = {
                type = "Trainer",
                cost = 1000,
            },
            product = { item_id = 6339, qty = 1 },
            materials = {
                { item_id = 6338, qty = 1 },
                { item_id = 10940, qty = 6 },
                { item_id = 10939, qty = 3 },
                { item_id = 6218, qty = 1 },
            },
            levels = { 100, 130, 150, 170 },
        },
    },
    [105] = {
        {
            spell_id = 13378,
            name = "Enchant Shield - Minor Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10998, qty = 1 },
                { item_id = 10940, qty = 2 },
            },
            levels = { 105, 130, 150, 170 },
        },
    },
    [110] = {
        {
            spell_id = 13380,
            name = "Enchant 2H Weapon - Lesser Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11038 },
            },
            materials = {
                { item_id = 10998, qty = 1 },
                { item_id = 10940, qty = 6 },
            },
            levels = { 110, 135, 155, 175 },
        },
        {
            spell_id = 13419,
            name = "Enchant Cloak - Minor Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11039 },
            },
            materials = {
                { item_id = 10998, qty = 1 },
            },
            levels = { 110, 135, 155, 175 },
        },
    },
    [115] = {
        {
            spell_id = 13421,
            name = "Enchant Cloak - Lesser Protection",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 6 },
                { item_id = 10978, qty = 1 },
            },
            levels = { 115, 140, 160, 180 },
        },
        {
            spell_id = 13464,
            name = "Enchant Shield - Lesser Protection",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11081 },
            },
            materials = {
                { item_id = 10998, qty = 1 },
                { item_id = 10940, qty = 1 },
                { item_id = 10978, qty = 1 },
            },
            levels = { 115, 140, 160, 180 },
        },
    },
    [120] = {
        {
            spell_id = 7857,
            name = "Enchant Chest - Health",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 4 },
                { item_id = 10998, qty = 1 },
            },
            levels = { 120, 145, 165, 185 },
        },
        {
            spell_id = 7859,
            name = "Enchant Bracer - Lesser Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6375 },
            },
            materials = {
                { item_id = 10998, qty = 2 },
            },
            levels = { 120, 145, 165, 185 },
        },
    },
    [125] = {
        {
            spell_id = 7413,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 7861,
            name = "Enchant Cloak - Lesser Fire Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 6371, qty = 1 },
                { item_id = 10998, qty = 1 },
            },
            levels = { 125, 150, 170, 190 },
        },
        {
            spell_id = 7863,
            name = "Enchant Boots - Minor Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6376 },
            },
            materials = {
                { item_id = 10940, qty = 8 },
            },
            levels = { 125, 150, 170, 190 },
        },
        {
            spell_id = 7867,
            name = "Enchant Boots - Minor Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 6377 },
            },
            materials = {
                { item_id = 10940, qty = 6 },
                { item_id = 10998, qty = 2 },
            },
            levels = { 125, 150, 170, 190 },
        },
    },
    [130] = {
        {
            spell_id = 13485,
            name = "Enchant Shield - Lesser Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10998, qty = 2 },
                { item_id = 10940, qty = 4 },
            },
            levels = { 130, 155, 175, 195 },
        },
        {
            spell_id = 13501,
            name = "Enchant Bracer - Lesser Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11083, qty = 2 },
            },
            levels = { 130, 155, 175, 195 },
        },
    },
    [135] = {
        {
            spell_id = 13522,
            name = "Enchant Cloak - Lesser Shadow Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11098 },
            },
            materials = {
                { item_id = 11082, qty = 1 },
                { item_id = 6048, qty = 1 },
            },
            levels = { 135, 160, 180, 200 },
        },
    },
    [140] = {
        {
            spell_id = 13503,
            name = "Enchant Weapon - Lesser Striking",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11083, qty = 2 },
                { item_id = 11084, qty = 1 },
            },
            levels = { 140, 165, 185, 205 },
        },
        {
            spell_id = 13536,
            name = "Enchant Bracer - Lesser Strength",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11101 },
            },
            materials = {
                { item_id = 11083, qty = 2 },
            },
            levels = { 140, 165, 185, 205 },
        },
        {
            spell_id = 13538,
            name = "Enchant Chest - Lesser Absorption",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 10940, qty = 2 },
                { item_id = 11082, qty = 1 },
                { item_id = 11084, qty = 1 },
            },
            levels = { 140, 165, 185, 205 },
        },
    },
    [145] = {
        {
            spell_id = 13529,
            name = "Enchant 2H Weapon - Lesser Impact",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11083, qty = 3 },
                { item_id = 11084, qty = 1 },
            },
            levels = { 145, 170, 190, 210 },
        },
        {
            spell_id = 13607,
            name = "Enchant Chest - Mana",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11082, qty = 1 },
                { item_id = 10998, qty = 2 },
            },
            levels = { 145, 170, 190, 210 },
        },
        {
            spell_id = 13612,
            name = "Enchant Gloves - Mining",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11150 },
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 2772, qty = 3 },
            },
            levels = { 145, 170, 190, 210 },
        },
        {
            spell_id = 13617,
            name = "Enchant Gloves - Herbalism",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11151 },
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 3356, qty = 3 },
            },
            levels = { 145, 170, 190, 210 },
        },
        {
            spell_id = 13620,
            name = "Enchant Gloves - Fishing",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11152 },
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 6370, qty = 3 },
            },
            levels = { 145, 170, 190, 210 },
        },
    },
    [150] = {
        {
            spell_id = 13622,
            name = "Enchant Bracer - Lesser Intellect",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11082, qty = 2 },
            },
            levels = { 150, 175, 195, 215 },
        },
        {
            spell_id = 13626,
            name = "Enchant Chest - Minor Stats",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11082, qty = 1 },
                { item_id = 11083, qty = 1 },
                { item_id = 11084, qty = 1 },
            },
            levels = { 150, 175, 195, 215 },
        },
        {
            spell_id = 13628,
            name = "Runed Golden Rod",
            icon = "inv_staff_10",
            source = {
                type = "Trainer",
                cost = 2500,
            },
            product = { item_id = 11130, qty = 1 },
            materials = {
                { item_id = 11128, qty = 1 },
                { item_id = 5500, qty = 1 },
                { item_id = 11082, qty = 2 },
                { item_id = 11083, qty = 2 },
                { item_id = 6339, qty = 1 },
            },
            levels = { 150, 175, 195, 215 },
        },
        {
            spell_id = 25125,
            name = "Minor Mana Oil",
            icon = "inv_potion_98",
            source = {
                type = "Item",
                recipe_item_ids = { 20752 },
            },
            product = { item_id = 20745, qty = 1 },
            materials = {
                { item_id = 11083, qty = 3 },
                { item_id = 17034, qty = 2 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 150, 160, 170, 180 },
        },
    },
    [155] = {
        {
            spell_id = 13631,
            name = "Enchant Shield - Lesser Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11134, qty = 1 },
                { item_id = 11083, qty = 1 },
            },
            levels = { 155, 175, 195, 215 },
        },
        {
            spell_id = 13635,
            name = "Enchant Cloak - Defense",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11138, qty = 1 },
                { item_id = 11083, qty = 3 },
            },
            levels = { 155, 175, 195, 215 },
        },
        {
            spell_id = 14809,
            name = "Lesser Mystic Wand",
            icon = "inv_staff_02",
            source = {
                type = "Trainer",
                cost = 2600,
            },
            product = { item_id = 11289, qty = 1 },
            materials = {
                { item_id = 11291, qty = 1 },
                { item_id = 11134, qty = 1 },
                { item_id = 11083, qty = 1 },
            },
            levels = { 155, 175, 195, 215 },
        },
    },
    [160] = {
        {
            spell_id = 13637,
            name = "Enchant Boots - Lesser Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11083, qty = 1 },
                { item_id = 11134, qty = 1 },
            },
            levels = { 160, 180, 200, 220 },
        },
        {
            spell_id = 13640,
            name = "Enchant Chest - Greater Health",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11083, qty = 3 },
            },
            levels = { 160, 180, 200, 220 },
        },
    },
    [165] = {
        {
            spell_id = 13642,
            name = "Enchant Bracer - Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11134, qty = 1 },
            },
            levels = { 165, 185, 205, 225 },
        },
    },
    [170] = {
        {
            spell_id = 13644,
            name = "Enchant Boots - Lesser Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11083, qty = 4 },
            },
            levels = { 170, 190, 210, 230 },
        },
        {
            spell_id = 13646,
            name = "Enchant Bracer - Lesser Deflection",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11163 },
            },
            materials = {
                { item_id = 11134, qty = 1 },
                { item_id = 11083, qty = 2 },
            },
            levels = { 170, 190, 210, 230 },
        },
        {
            spell_id = 13648,
            name = "Enchant Bracer - Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11083, qty = 6 },
            },
            levels = { 170, 190, 210, 230 },
        },
    },
    [175] = {
        {
            spell_id = 13653,
            name = "Enchant Weapon - Lesser Beastslayer",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11164 },
            },
            materials = {
                { item_id = 11134, qty = 1 },
                { item_id = 5637, qty = 2 },
                { item_id = 11138, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
        {
            spell_id = 13655,
            name = "Enchant Weapon - Lesser Elemental Slayer",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11165 },
            },
            materials = {
                { item_id = 11134, qty = 1 },
                { item_id = 7067, qty = 1 },
                { item_id = 11138, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
        {
            spell_id = 13657,
            name = "Enchant Cloak - Fire Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11134, qty = 1 },
                { item_id = 7068, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
        {
            spell_id = 14810,
            name = "Greater Mystic Wand",
            icon = "inv_wand_07",
            source = {
                type = "Trainer",
                cost = 3000,
            },
            product = { item_id = 11290, qty = 1 },
            materials = {
                { item_id = 11291, qty = 1 },
                { item_id = 11135, qty = 1 },
                { item_id = 11137, qty = 1 },
            },
            levels = { 175, 195, 215, 235 },
        },
    },
    [180] = {
        {
            spell_id = 13659,
            name = "Enchant Shield - Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11135, qty = 1 },
                { item_id = 11137, qty = 1 },
            },
            levels = { 180, 200, 220, 240 },
        },
        {
            spell_id = 13661,
            name = "Enchant Bracer - Strength",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11137, qty = 1 },
            },
            levels = { 180, 200, 220, 240 },
        },
    },
    [185] = {
        {
            spell_id = 13663,
            name = "Enchant Chest - Greater Mana",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11135, qty = 1 },
            },
            levels = { 185, 205, 225, 245 },
        },
    },
    [190] = {
        {
            spell_id = 13687,
            name = "Enchant Boots - Lesser Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11167 },
            },
            materials = {
                { item_id = 11135, qty = 1 },
                { item_id = 11134, qty = 2 },
            },
            levels = { 190, 210, 230, 250 },
        },
        {
            spell_id = 21931,
            name = "Enchant Weapon - Winter's Might",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 17725 },
            },
            materials = {
                { item_id = 11135, qty = 3 },
                { item_id = 11137, qty = 3 },
                { item_id = 11139, qty = 1 },
                { item_id = 3819, qty = 2 },
            },
            levels = { 190, 210, 230, 250 },
        },
    },
    [195] = {
        {
            spell_id = 13689,
            name = "Enchant Shield - Lesser Block",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11168 },
            },
            materials = {
                { item_id = 11135, qty = 2 },
                { item_id = 11137, qty = 2 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 195, 215, 235, 255 },
        },
        {
            spell_id = 13693,
            name = "Enchant Weapon - Striking",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11135, qty = 2 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 195, 215, 235, 255 },
        },
    },
    [200] = {
        {
            spell_id = 13695,
            name = "Enchant 2H Weapon - Impact",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11137, qty = 4 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 13698,
            name = "Enchant Gloves - Skinning",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11166 },
            },
            materials = {
                { item_id = 11137, qty = 1 },
                { item_id = 7392, qty = 3 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 13700,
            name = "Enchant Chest - Lesser Stats",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11135, qty = 2 },
                { item_id = 11137, qty = 2 },
                { item_id = 11139, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 13702,
            name = "Runed Truesilver Rod",
            icon = "inv_staff_11",
            source = {
                type = "Trainer",
                cost = 4000,
            },
            product = { item_id = 11145, qty = 1 },
            materials = {
                { item_id = 11144, qty = 1 },
                { item_id = 7971, qty = 1 },
                { item_id = 11135, qty = 2 },
                { item_id = 11137, qty = 2 },
                { item_id = 11130, qty = 1 },
            },
            levels = { 200, 220, 240, 260 },
        },
        {
            spell_id = 25126,
            name = "Lesser Wizard Oil",
            icon = "inv_potion_103",
            source = {
                type = "Item",
                recipe_item_ids = { 20753 },
            },
            product = { item_id = 20746, qty = 1 },
            materials = {
                { item_id = 11137, qty = 3 },
                { item_id = 17035, qty = 2 },
                { item_id = 3372, qty = 1 },
            },
            levels = { 200, 210, 220, 230 },
        },
    },
    [205] = {
        {
            spell_id = 13746,
            name = "Enchant Cloak - Greater Defense",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11137, qty = 3 },
            },
            levels = { 205, 225, 245, 265 },
        },
        {
            spell_id = 13794,
            name = "Enchant Cloak - Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11174, qty = 1 },
            },
            levels = { 205, 225, 245, 265 },
        },
    },
    [210] = {
        {
            spell_id = 13815,
            name = "Enchant Gloves - Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11174, qty = 1 },
                { item_id = 11137, qty = 1 },
            },
            levels = { 210, 230, 250, 270 },
        },
        {
            spell_id = 13817,
            name = "Enchant Shield - Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11202 },
            },
            materials = {
                { item_id = 11137, qty = 5 },
            },
            levels = { 210, 230, 250, 270 },
        },
        {
            spell_id = 13822,
            name = "Enchant Bracer - Intellect",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11174, qty = 2 },
            },
            levels = { 210, 230, 250, 270 },
        },
    },
    [215] = {
        {
            spell_id = 13836,
            name = "Enchant Boots - Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11137, qty = 5 },
            },
            levels = { 215, 235, 255, 275 },
        },
        {
            spell_id = 13841,
            name = "Enchant Gloves - Advanced Mining",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11203 },
            },
            materials = {
                { item_id = 11137, qty = 3 },
                { item_id = 6037, qty = 3 },
            },
            levels = { 215, 235, 255, 275 },
        },
    },
    [220] = {
        {
            spell_id = 13846,
            name = "Enchant Bracer - Greater Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11204 },
            },
            materials = {
                { item_id = 11174, qty = 3 },
                { item_id = 11137, qty = 1 },
            },
            levels = { 220, 240, 260, 280 },
        },
        {
            spell_id = 13858,
            name = "Enchant Chest - Superior Health",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11137, qty = 6 },
            },
            levels = { 220, 240, 260, 280 },
        },
    },
    [225] = {
        {
            spell_id = 13868,
            name = "Enchant Gloves - Advanced Herbalism",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11205 },
            },
            materials = {
                { item_id = 11137, qty = 3 },
                { item_id = 8838, qty = 3 },
            },
            levels = { 225, 245, 265, 285 },
        },
        {
            spell_id = 13882,
            name = "Enchant Cloak - Lesser Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11206 },
            },
            materials = {
                { item_id = 11174, qty = 2 },
            },
            levels = { 225, 245, 265, 285 },
        },
        {
            spell_id = 13887,
            name = "Enchant Gloves - Strength",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11174, qty = 2 },
                { item_id = 11137, qty = 3 },
            },
            levels = { 225, 245, 265, 285 },
        },
        {
            spell_id = 13890,
            name = "Enchant Boots - Minor Speed",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11177, qty = 1 },
                { item_id = 7909, qty = 1 },
                { item_id = 11174, qty = 1 },
            },
            levels = { 225, 245, 265, 285 },
        },
        {
            spell_id = 13920,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
            source = {
                type = "Trainer",
            },
        },
    },
    [230] = {
        {
            spell_id = 13905,
            name = "Enchant Shield - Greater Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11175, qty = 1 },
                { item_id = 11176, qty = 2 },
            },
            levels = { 230, 250, 270, 290 },
        },
        {
            spell_id = 13915,
            name = "Enchant Weapon - Demonslaying",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11208 },
            },
            materials = {
                { item_id = 11177, qty = 1 },
                { item_id = 11176, qty = 2 },
                { item_id = 9224, qty = 1 },
            },
            levels = { 230, 250, 270, 290 },
        },
        {
            spell_id = 13917,
            name = "Enchant Chest - Superior Mana",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11175, qty = 1 },
                { item_id = 11174, qty = 2 },
            },
            levels = { 230, 250, 270, 290 },
        },
    },
    [235] = {
        {
            spell_id = 13931,
            name = "Enchant Bracer - Deflection",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11223 },
            },
            materials = {
                { item_id = 11175, qty = 1 },
                { item_id = 11176, qty = 2 },
            },
            levels = { 235, 255, 275, 295 },
        },
        {
            spell_id = 13933,
            name = "Enchant Shield - Frost Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11224 },
            },
            materials = {
                { item_id = 11178, qty = 1 },
                { item_id = 3829, qty = 1 },
            },
            levels = { 235, 255, 275, 295 },
        },
        {
            spell_id = 13935,
            name = "Enchant Boots - Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11175, qty = 2 },
            },
            levels = { 235, 255, 275, 295 },
        },
    },
    [240] = {
        {
            spell_id = 13937,
            name = "Enchant 2H Weapon - Greater Impact",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11178, qty = 2 },
                { item_id = 11176, qty = 2 },
            },
            levels = { 240, 260, 280, 300 },
        },
        {
            spell_id = 13939,
            name = "Enchant Bracer - Greater Strength",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11176, qty = 2 },
                { item_id = 11175, qty = 1 },
            },
            levels = { 240, 260, 280, 300 },
        },
    },
    [245] = {
        {
            spell_id = 13941,
            name = "Enchant Chest - Stats",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11178, qty = 1 },
                { item_id = 11176, qty = 3 },
                { item_id = 11175, qty = 2 },
            },
            levels = { 245, 265, 285, 305 },
        },
        {
            spell_id = 13943,
            name = "Enchant Weapon - Greater Striking",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11178, qty = 2 },
                { item_id = 11175, qty = 2 },
            },
            levels = { 245, 265, 285, 305 },
        },
        {
            spell_id = 13945,
            name = "Enchant Bracer - Greater Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11225 },
            },
            materials = {
                { item_id = 11176, qty = 5 },
            },
            levels = { 245, 265, 285, 305 },
        },
    },
    [250] = {
        {
            spell_id = 13947,
            name = "Enchant Gloves - Riding Skill",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11226 },
            },
            materials = {
                { item_id = 11178, qty = 2 },
                { item_id = 11176, qty = 3 },
            },
            levels = { 250, 270, 290, 310 },
        },
        {
            spell_id = 13948,
            name = "Enchant Gloves - Minor Haste",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 11178, qty = 2 },
                { item_id = 8153, qty = 2 },
            },
            levels = { 250, 270, 290, 310 },
        },
        {
            spell_id = 25127,
            name = "Lesser Mana Oil",
            icon = "inv_potion_99",
            source = {
                type = "Item",
                recipe_item_ids = { 20754 },
            },
            product = { item_id = 20747, qty = 1 },
            materials = {
                { item_id = 11176, qty = 3 },
                { item_id = 8831, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 250, 260, 270, 280 },
        },
        {
            spell_id = 17180,
            name = "Enchanted Thorium",
            icon = "inv_ingot_eternium",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 12655, qty = 1 },
            materials = {
                { item_id = 12359, qty = 1 },
                { item_id = 11176, qty = 3 },
            },
            levels = { 250, 250, 255, 260 },
        },
        {
            spell_id = 17181,
            name = "Enchanted Leather",
            icon = "inv_misc_rune_05",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 12810, qty = 1 },
            materials = {
                { item_id = 8170, qty = 1 },
                { item_id = 16202, qty = 1 },
            },
            levels = { 250, 250, 255, 260 },
        },
    },
    [255] = {
        {
            spell_id = 20008,
            name = "Enchant Bracer - Greater Intellect",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16214 },
            },
            materials = {
                { item_id = 16202, qty = 3 },
            },
            levels = { 255, 275, 295, 315 },
        },
    },
    [260] = {
        {
            spell_id = 20020,
            name = "Enchant Boots - Greater Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16215 },
            },
            materials = {
                { item_id = 11176, qty = 10 },
            },
            levels = { 260, 280, 300, 320 },
        },
    },
    [265] = {
        {
            spell_id = 13898,
            name = "Enchant Weapon - Fiery Weapon",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 11207 },
            },
            materials = {
                { item_id = 11177, qty = 4 },
                { item_id = 7078, qty = 1 },
            },
            levels = { 265, 285, 305, 325 },
        },
        {
            spell_id = 15596,
            name = "Smoking Heart of the Mountain",
            icon = "inv_misc_gem_bloodstone_01",
            source = {
                type = "Item",
                recipe_item_ids = { 11813 },
            },
            product = { item_id = 11811, qty = 1 },
            materials = {
                { item_id = 11382, qty = 1 },
                { item_id = 7078, qty = 1 },
                { item_id = 14343, qty = 3 },
            },
            levels = { 265, 285, 305, 325 },
        },
        {
            spell_id = 20014,
            name = "Enchant Cloak - Greater Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16216 },
            },
            materials = {
                { item_id = 16202, qty = 2 },
                { item_id = 7077, qty = 1 },
                { item_id = 7075, qty = 1 },
                { item_id = 7079, qty = 1 },
                { item_id = 7081, qty = 1 },
                { item_id = 7972, qty = 1 },
            },
            levels = { 265, 285, 305, 325 },
        },
        {
            spell_id = 20017,
            name = "Enchant Shield - Greater Stamina",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 16217 },
            },
            materials = {
                { item_id = 11176, qty = 10 },
            },
            levels = { 265, 285, 305, 325 },
        },
    },
    [270] = {
        {
            spell_id = 20009,
            name = "Enchant Bracer - Superior Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16218 },
            },
            materials = {
                { item_id = 16202, qty = 3 },
                { item_id = 11176, qty = 10 },
            },
            levels = { 270, 290, 310, 330 },
        },
        {
            spell_id = 20012,
            name = "Enchant Gloves - Greater Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16219 },
            },
            materials = {
                { item_id = 16202, qty = 3 },
                { item_id = 16204, qty = 3 },
            },
            levels = { 270, 290, 310, 330 },
        },
    },
    [275] = {
        {
            spell_id = 20024,
            name = "Enchant Boots - Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16220 },
            },
            materials = {
                { item_id = 16203, qty = 2 },
                { item_id = 16202, qty = 1 },
            },
            levels = { 275, 295, 315, 335 },
        },
        {
            spell_id = 20026,
            name = "Enchant Chest - Major Health",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 16221 },
            },
            materials = {
                { item_id = 16204, qty = 6 },
                { item_id = 14343, qty = 1 },
            },
            levels = { 275, 295, 315, 335 },
        },
        {
            spell_id = 25128,
            name = "Wizard Oil",
            icon = "inv_potion_104",
            source = {
                type = "Item",
                recipe_item_ids = { 20755 },
            },
            product = { item_id = 20750, qty = 1 },
            materials = {
                { item_id = 16204, qty = 3 },
                { item_id = 4625, qty = 2 },
                { item_id = 8925, qty = 1 },
            },
            levels = { 275, 285, 295, 305 },
        },
        {
            spell_id = 28029,
            name = "Enchanting",
            categories = { "Profession Training" },
            icon = "trade_engraving",
            source = {
                type = "Trainer",
            },
        },
    },
    [280] = {
        {
            spell_id = 20016,
            name = "Enchant Shield - Superior Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16222 },
            },
            materials = {
                { item_id = 16203, qty = 2 },
                { item_id = 16204, qty = 4 },
            },
            levels = { 280, 300, 320, 340 },
        },
    },
    [285] = {
        {
            spell_id = 20015,
            name = "Enchant Cloak - Superior Defense",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 16224 },
            },
            materials = {
                { item_id = 16204, qty = 8 },
            },
            levels = { 285, 300, 317, 335 },
        },
        {
            spell_id = 20029,
            name = "Enchant Weapon - Icy Chill",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16223 },
            },
            materials = {
                { item_id = 14343, qty = 4 },
                { item_id = 7080, qty = 1 },
                { item_id = 7082, qty = 1 },
                { item_id = 13467, qty = 1 },
            },
            levels = { 285, 300, 317, 335 },
        },
    },
    [290] = {
        {
            spell_id = 20028,
            name = "Enchant Chest - Major Mana",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16242 },
            },
            materials = {
                { item_id = 16203, qty = 3 },
                { item_id = 14343, qty = 1 },
            },
            levels = { 290, 305, 322, 340 },
        },
        {
            spell_id = 20051,
            name = "Runed Arcanite Rod",
            icon = "inv_wand_09",
            source = {
                type = "Item",
                recipe_item_ids = { 16243 },
            },
            product = { item_id = 16207, qty = 1 },
            materials = {
                { item_id = 16206, qty = 1 },
                { item_id = 13926, qty = 1 },
                { item_id = 16204, qty = 10 },
                { item_id = 16203, qty = 4 },
                { item_id = 11145, qty = 1 },
                { item_id = 14344, qty = 2 },
            },
            levels = { 290, 305, 322, 340 },
        },
        {
            spell_id = 23799,
            name = "Enchant Weapon - Strength",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 19444 },
            },
            materials = {
                { item_id = 14344, qty = 6 },
                { item_id = 16203, qty = 6 },
                { item_id = 16204, qty = 4 },
                { item_id = 7076, qty = 2 },
            },
            levels = { 290, 305, 322, 340 },
        },
        {
            spell_id = 23800,
            name = "Enchant Weapon - Agility",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 19445 },
            },
            materials = {
                { item_id = 14344, qty = 6 },
                { item_id = 16203, qty = 6 },
                { item_id = 16204, qty = 4 },
                { item_id = 7082, qty = 2 },
            },
            levels = { 290, 305, 322, 340 },
        },
        {
            spell_id = 23801,
            name = "Enchant Bracer - Mana Regeneration",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 19446 },
            },
            materials = {
                { item_id = 16204, qty = 16 },
                { item_id = 16203, qty = 4 },
                { item_id = 7080, qty = 2 },
            },
            levels = { 290, 305, 322, 340 },
        },
        {
            spell_id = 27837,
            name = "Enchant 2H Weapon - Agility",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 22392 },
            },
            materials = {
                { item_id = 14344, qty = 10 },
                { item_id = 16203, qty = 6 },
                { item_id = 16204, qty = 14 },
                { item_id = 7082, qty = 4 },
            },
            levels = { 290, 305, 322, 340 },
        },
    },
    [295] = {
        {
            spell_id = 20010,
            name = "Enchant Bracer - Superior Strength",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16246 },
            },
            materials = {
                { item_id = 16204, qty = 6 },
                { item_id = 16203, qty = 6 },
            },
            levels = { 295, 310, 325, 340 },
        },
        {
            spell_id = 20013,
            name = "Enchant Gloves - Greater Strength",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16244 },
            },
            materials = {
                { item_id = 16203, qty = 4 },
                { item_id = 16204, qty = 4 },
            },
            levels = { 295, 310, 325, 340 },
        },
        {
            spell_id = 20023,
            name = "Enchant Boots - Greater Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16245 },
            },
            materials = {
                { item_id = 16203, qty = 8 },
            },
            levels = { 295, 310, 325, 340 },
        },
        {
            spell_id = 20030,
            name = "Enchant 2H Weapon - Superior Impact",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16247 },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16204, qty = 10 },
            },
            levels = { 295, 310, 325, 340 },
        },
        {
            spell_id = 20033,
            name = "Enchant Weapon - Unholy Weapon",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16248 },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 12808, qty = 4 },
            },
            levels = { 295, 310, 325, 340 },
        },
    },
    [300] = {
        {
            spell_id = 20011,
            name = "Enchant Bracer - Superior Stamina",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16251 },
            },
            materials = {
                { item_id = 16204, qty = 15 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 20025,
            name = "Enchant Chest - Greater Stats",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16253 },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16204, qty = 15 },
                { item_id = 16203, qty = 10 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 20031,
            name = "Enchant Weapon - Superior Striking",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16250 },
            },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 16203, qty = 10 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 20032,
            name = "Enchant Weapon - Lifestealing",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16254 },
            },
            materials = {
                { item_id = 14344, qty = 6 },
                { item_id = 12808, qty = 6 },
                { item_id = 12803, qty = 6 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 20034,
            name = "Enchant Weapon - Crusader",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16252 },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 12811, qty = 2 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 20035,
            name = "Enchant 2H Weapon - Major Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16255 },
            },
            materials = {
                { item_id = 16203, qty = 12 },
                { item_id = 14344, qty = 2 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 20036,
            name = "Enchant 2H Weapon - Major Intellect",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 16249 },
            },
            materials = {
                { item_id = 16203, qty = 12 },
                { item_id = 14344, qty = 2 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 22749,
            name = "Enchant Weapon - Spell Power",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 18259 },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16203, qty = 12 },
                { item_id = 7078, qty = 4 },
                { item_id = 7080, qty = 4 },
                { item_id = 7082, qty = 4 },
                { item_id = 13926, qty = 2 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 22750,
            name = "Enchant Weapon - Healing Power",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 18260 },
            },
            materials = {
                { item_id = 14344, qty = 4 },
                { item_id = 16203, qty = 8 },
                { item_id = 12803, qty = 6 },
                { item_id = 7080, qty = 6 },
                { item_id = 12811, qty = 1 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 23802,
            name = "Enchant Bracer - Healing Power",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 19447 },
            },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 16204, qty = 20 },
                { item_id = 16203, qty = 4 },
                { item_id = 12803, qty = 6 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 23803,
            name = "Enchant Weapon - Mighty Spirit",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 19448 },
            },
            materials = {
                { item_id = 14344, qty = 10 },
                { item_id = 16203, qty = 8 },
                { item_id = 16204, qty = 15 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 23804,
            name = "Enchant Weapon - Mighty Intellect",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 19449 },
            },
            materials = {
                { item_id = 14344, qty = 15 },
                { item_id = 16203, qty = 12 },
                { item_id = 16204, qty = 20 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25072,
            name = "Enchant Gloves - Threat",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20726, 33153 },
            },
            materials = {
                { item_id = 22448, qty = 4 },
                { item_id = 22446, qty = 2 },
                { item_id = 21886, qty = 8 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25073,
            name = "Enchant Gloves - Shadow Power",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20727 },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 10 },
                { item_id = 12808, qty = 6 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25074,
            name = "Enchant Gloves - Frost Power",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20728 },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 10 },
                { item_id = 7080, qty = 4 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25078,
            name = "Enchant Gloves - Fire Power",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20729 },
            },
            materials = {
                { item_id = 20725, qty = 2 },
                { item_id = 14344, qty = 10 },
                { item_id = 7078, qty = 4 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25079,
            name = "Enchant Gloves - Healing Power",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20730 },
            },
            materials = {
                { item_id = 20725, qty = 3 },
                { item_id = 14344, qty = 8 },
                { item_id = 12811, qty = 1 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25080,
            name = "Enchant Gloves - Superior Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20731, 33152 },
            },
            materials = {
                { item_id = 22448, qty = 3 },
                { item_id = 22446, qty = 3 },
                { item_id = 22451, qty = 2 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25081,
            name = "Enchant Cloak - Greater Fire Resistance",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 20732 },
            },
            materials = {
                { item_id = 22448, qty = 3 },
                { item_id = 22446, qty = 3 },
                { item_id = 7078, qty = 4 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25082,
            name = "Enchant Cloak - Greater Nature Resistance",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 20733 },
            },
            materials = {
                { item_id = 22448, qty = 2 },
                { item_id = 22446, qty = 3 },
                { item_id = 12803, qty = 4 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25083,
            name = "Enchant Cloak - Stealth",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20734, 33149 },
            },
            materials = {
                { item_id = 22448, qty = 3 },
                { item_id = 22446, qty = 3 },
                { item_id = 22794, qty = 2 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25084,
            name = "Enchant Cloak - Subtlety",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20735, 33150, 33151 },
            },
            materials = {
                { item_id = 22448, qty = 4 },
                { item_id = 22446, qty = 2 },
                { item_id = 22456, qty = 8 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25086,
            name = "Enchant Cloak - Dodge",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 20736, 33148 },
            },
            materials = {
                { item_id = 22448, qty = 3 },
                { item_id = 22446, qty = 3 },
                { item_id = 22452, qty = 8 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 32664,
            name = "Runed Fel Iron Rod",
            icon = "inv_rod_enchantedfelsteel",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 22461, qty = 1 },
            materials = {
                { item_id = 25843, qty = 1 },
                { item_id = 16203, qty = 4 },
                { item_id = 14344, qty = 6 },
                { item_id = 16207, qty = 1 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 33991,
            name = "Enchant Chest - Restore Mana Prime",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22447, qty = 2 },
                { item_id = 22445, qty = 2 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 34002,
            name = "Enchant Bracer - Assault",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22445, qty = 6 },
            },
            levels = { 300, 310, 325, 340 },
        },
        {
            spell_id = 25129,
            name = "Brilliant Wizard Oil",
            icon = "inv_potion_105",
            source = {
                type = "Item",
                recipe_item_ids = { 20756 },
            },
            product = { item_id = 20749, qty = 1 },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 4625, qty = 3 },
                { item_id = 18256, qty = 1 },
            },
            levels = { 300, 310, 320, 330 },
        },
        {
            spell_id = 25130,
            name = "Brilliant Mana Oil",
            icon = "inv_potion_100",
            source = {
                type = "Item",
                recipe_item_ids = { 20757 },
            },
            product = { item_id = 20748, qty = 1 },
            materials = {
                { item_id = 14344, qty = 2 },
                { item_id = 8831, qty = 3 },
                { item_id = 18256, qty = 1 },
            },
            levels = { 300, 310, 320, 330 },
        },
        {
            spell_id = 42613,
            name = "Nexus Transformation",
            icon = "inv_enchant_shardprismaticsmall",
            source = {
                type = "Trainer",
                cost = 10000,
            },
            product = { item_id = 22448, qty = 1 },
            materials = {
                { item_id = 20725, qty = 1 },
            },
            levels = { 300, 300, 300, 305 },
        },
    },
    [305] = {
        {
            spell_id = 27899,
            name = "Enchant Bracer - Brawn",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22445, qty = 6 },
            },
            levels = { 305, 315, 330, 345 },
        },
        {
            spell_id = 27948,
            name = "Enchant Boots - Vitality",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22542 },
            },
            materials = {
                { item_id = 22445, qty = 6 },
                { item_id = 13446, qty = 4 },
                { item_id = 13444, qty = 4 },
            },
            levels = { 305, 315, 330, 345 },
        },
        {
            spell_id = 33993,
            name = "Enchant Gloves - Blasting",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22447, qty = 1 },
                { item_id = 22445, qty = 4 },
            },
            levels = { 305, 315, 330, 345 },
        },
        {
            spell_id = 34001,
            name = "Enchant Bracer - Major Intellect",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22447, qty = 3 },
            },
            levels = { 305, 315, 330, 345 },
        },
    },
    [310] = {
        {
            spell_id = 27944,
            name = "Enchant Shield - Tough Shield",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22445, qty = 6 },
                { item_id = 22452, qty = 10 },
            },
            levels = { 310, 320, 335, 350 },
        },
        {
            spell_id = 27961,
            name = "Enchant Cloak - Major Armor",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22445, qty = 8 },
            },
            levels = { 310, 320, 335, 350 },
        },
        {
            spell_id = 33996,
            name = "Enchant Gloves - Assault",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22445, qty = 8 },
            },
            levels = { 310, 320, 335, 350 },
        },
        {
            spell_id = 34004,
            name = "Enchant Cloak - Greater Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22446, qty = 1 },
                { item_id = 22445, qty = 4 },
                { item_id = 22451, qty = 1 },
            },
            levels = { 310, 320, 335, 350 },
        },
        {
            spell_id = 28016,
            name = "Superior Mana Oil",
            icon = "inv_potion_101",
            source = {
                type = "Item",
                recipe_item_ids = { 22562 },
            },
            product = { item_id = 22521, qty = 1 },
            materials = {
                { item_id = 22445, qty = 3 },
                { item_id = 22791, qty = 1 },
                { item_id = 18256, qty = 1 },
            },
            levels = { 310, 310, 320, 330 },
        },
    },
    [315] = {
        {
            spell_id = 27905,
            name = "Enchant Bracer - Stats",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22445, qty = 6 },
                { item_id = 22447, qty = 6 },
            },
            levels = { 315, 325, 340, 355 },
        },
        {
            spell_id = 27957,
            name = "Enchant Chest - Exceptional Health",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22445, qty = 8 },
                { item_id = 13446, qty = 4 },
                { item_id = 14344, qty = 2 },
            },
            levels = { 315, 325, 340, 355 },
        },
    },
    [320] = {
        {
            spell_id = 27906,
            name = "Enchant Bracer - Major Defense",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22530 },
            },
            materials = {
                { item_id = 22448, qty = 2 },
                { item_id = 22445, qty = 10 },
            },
            levels = { 320, 330, 345, 360 },
        },
        {
            spell_id = 27950,
            name = "Enchant Boots - Fortitude",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22543 },
            },
            materials = {
                { item_id = 22445, qty = 12 },
            },
            levels = { 320, 330, 345, 360 },
        },
        {
            spell_id = 33990,
            name = "Enchant Chest - Major Spirit",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22446, qty = 2 },
            },
            levels = { 320, 330, 345, 360 },
        },
    },
    [325] = {
        {
            spell_id = 27911,
            name = "Enchant Bracer - Superior Healing",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 24000, 22531 },
            },
            materials = {
                { item_id = 22446, qty = 4 },
                { item_id = 21886, qty = 4 },
            },
            levels = { 325, 335, 350, 365 },
        },
        {
            spell_id = 27945,
            name = "Enchant Shield - Intellect",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 22539 },
            },
            materials = {
                { item_id = 22446, qty = 4 },
            },
            levels = { 325, 335, 350, 365 },
        },
        {
            spell_id = 27958,
            name = "Enchant Chest - Exceptional Mana",
            icon = "inv_misc_note_01",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 34003,
            name = "Enchant Cloak - Spell Penetration",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28274 },
            },
            materials = {
                { item_id = 22446, qty = 2 },
                { item_id = 22445, qty = 6 },
                { item_id = 22457, qty = 2 },
            },
            levels = { 325, 335, 350, 365 },
        },
        {
            spell_id = 34009,
            name = "Enchant Shield - Major Stamina",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 28282 },
            },
            materials = {
                { item_id = 22445, qty = 15 },
            },
            levels = { 325, 335, 350, 365 },
        },
        {
            spell_id = 28027,
            name = "Prismatic Sphere",
            icon = "inv_enchant_prismaticsphere",
            source = {
                type = "Trainer",
                cost = 40000,
            },
            product = { item_id = 22460, qty = 1 },
            materials = {
                { item_id = 22449, qty = 4 },
            },
            levels = { 325, 325, 330, 335 },
        },
    },
    [330] = {
        {
            spell_id = 27962,
            name = "Enchant Cloak - Major Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22548 },
            },
            materials = {
                { item_id = 22446, qty = 4 },
                { item_id = 21884, qty = 4 },
                { item_id = 22451, qty = 4 },
                { item_id = 22452, qty = 4 },
                { item_id = 21885, qty = 4 },
            },
            levels = { 330, 340, 355, 370 },
        },
        {
            spell_id = 44383,
            name = "Enchant Shield - Resilience",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22449, qty = 1 },
                { item_id = 22447, qty = 4 },
            },
            levels = { 330, 340, 355, 370 },
        },
    },
    [335] = {
        {
            spell_id = 27913,
            name = "Enchant Bracer - Restore Mana Prime",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22532 },
            },
            materials = {
                { item_id = 22446, qty = 8 },
            },
            levels = { 335, 345, 360, 375 },
        },
        {
            spell_id = 42615,
            name = "Small Prismatic Shard",
            icon = "inv_enchant_shardprismaticsmall",
            source = {
                type = "Trainer",
                cost = 40000,
            },
            product = { item_id = 22448, qty = 3 },
            materials = {
                { item_id = 22449, qty = 1 },
            },
            levels = { 335, 335, 335, 335 },
        },
        {
            spell_id = 28022,
            name = "Large Prismatic Shard",
            icon = "inv_enchant_shardprismaticlarge",
            source = {
                type = "Item",
                recipe_item_ids = { 22565 },
            },
            product = { item_id = 22449, qty = 1 },
            materials = {
                { item_id = 22448, qty = 3 },
            },
            levels = { 335, 335, 335, 335 },
        },
    },
    [340] = {
        {
            spell_id = 27946,
            name = "Enchant Shield - Shield Block",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22540 },
            },
            materials = {
                { item_id = 22445, qty = 12 },
                { item_id = 22446, qty = 4 },
                { item_id = 22452, qty = 10 },
            },
            levels = { 340, 350, 365, 380 },
        },
        {
            spell_id = 27951,
            name = "Enchant Boots - Dexterity",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22544 },
            },
            materials = {
                { item_id = 22446, qty = 8 },
                { item_id = 22445, qty = 8 },
            },
            levels = { 340, 350, 365, 380 },
        },
        {
            spell_id = 27967,
            name = "Enchant Weapon - Major Striking",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 22552 },
            },
            materials = {
                { item_id = 22449, qty = 2 },
                { item_id = 22446, qty = 6 },
                { item_id = 22445, qty = 6 },
            },
            levels = { 340, 350, 365, 380 },
        },
        {
            spell_id = 27968,
            name = "Enchant Weapon - Major Intellect",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22551 },
            },
            materials = {
                { item_id = 22449, qty = 2 },
                { item_id = 22446, qty = 10 },
            },
            levels = { 340, 350, 365, 380 },
        },
        {
            spell_id = 33995,
            name = "Enchant Gloves - Major Strength",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
            },
            materials = {
                { item_id = 22445, qty = 12 },
                { item_id = 22446, qty = 1 },
            },
            levels = { 340, 350, 365, 380 },
        },
        {
            spell_id = 28019,
            name = "Superior Wizard Oil",
            icon = "inv_potion_141",
            source = {
                type = "Item",
                recipe_item_ids = { 22563 },
            },
            product = { item_id = 22522, qty = 1 },
            materials = {
                { item_id = 22445, qty = 3 },
                { item_id = 22792, qty = 1 },
                { item_id = 18256, qty = 1 },
            },
            levels = { 340, 340, 350, 360 },
        },
    },
    [345] = {
        {
            spell_id = 27960,
            name = "Enchant Chest - Exceptional Stats",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 22547, 24003 },
            },
            materials = {
                { item_id = 22449, qty = 4 },
                { item_id = 22445, qty = 4 },
                { item_id = 22446, qty = 4 },
            },
            levels = { 345, 355, 367, 380 },
        },
        {
            spell_id = 33992,
            name = "Enchant Chest - Major Resilience",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28270 },
            },
            materials = {
                { item_id = 22446, qty = 4 },
                { item_id = 22445, qty = 10 },
            },
            levels = { 345, 355, 367, 380 },
        },
    },
    [350] = {
        {
            spell_id = 27914,
            name = "Enchant Bracer - Fortitude",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22533 },
            },
            materials = {
                { item_id = 22449, qty = 1 },
                { item_id = 22446, qty = 10 },
                { item_id = 22445, qty = 20 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 27971,
            name = "Enchant 2H Weapon - Savagery",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22554 },
            },
            materials = {
                { item_id = 22449, qty = 4 },
                { item_id = 22445, qty = 40 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 27972,
            name = "Enchant Weapon - Potency",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22553 },
            },
            materials = {
                { item_id = 22449, qty = 4 },
                { item_id = 22446, qty = 5 },
                { item_id = 22445, qty = 20 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 27975,
            name = "Enchant Weapon - Major Spellpower",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22555 },
            },
            materials = {
                { item_id = 22449, qty = 8 },
                { item_id = 22446, qty = 8 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 28028,
            name = "Void Sphere",
            icon = "inv_enchant_voidsphere",
            source = {
                type = "Trainer",
                cost = 80000,
            },
            product = { item_id = 22459, qty = 1 },
            materials = {
                { item_id = 22450, qty = 2 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 32665,
            name = "Runed Adamantite Rod",
            icon = "inv_rod_enchantedadamantite",
            source = {
                type = "Item",
                recipe_item_ids = { 25848 },
            },
            product = { item_id = 22462, qty = 1 },
            materials = {
                { item_id = 25844, qty = 1 },
                { item_id = 22446, qty = 8 },
                { item_id = 22449, qty = 8 },
                { item_id = 23571, qty = 1 },
                { item_id = 22461, qty = 1 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 33999,
            name = "Enchant Gloves - Major Healing",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28273 },
            },
            materials = {
                { item_id = 22446, qty = 6 },
                { item_id = 22449, qty = 6 },
                { item_id = 21886, qty = 6 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 34005,
            name = "Enchant Cloak - Greater Arcane Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28276 },
            },
            materials = {
                { item_id = 22449, qty = 4 },
                { item_id = 22457, qty = 8 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 34006,
            name = "Enchant Cloak - Greater Shadow Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28277 },
            },
            materials = {
                { item_id = 22449, qty = 4 },
                { item_id = 22456, qty = 8 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 34010,
            name = "Enchant Weapon - Major Healing",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28281 },
            },
            materials = {
                { item_id = 22449, qty = 8 },
                { item_id = 21885, qty = 8 },
                { item_id = 21886, qty = 8 },
            },
            levels = { 350, 370, 375, 380 },
        },
        {
            spell_id = 42620,
            name = "Enchant Weapon - Greater Agility",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 33165 },
            },
            materials = {
                { item_id = 22445, qty = 8 },
                { item_id = 22446, qty = 4 },
                { item_id = 22449, qty = 6 },
                { item_id = 22451, qty = 2 },
            },
            levels = { 350, 360, 367, 375 },
        },
        {
            spell_id = 46578,
            name = "Enchant Weapon - Deathfrost",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 35498 },
            },
            materials = {
                { item_id = 22456, qty = 2 },
                { item_id = 21885, qty = 2 },
            },
            levels = { 350, 350, 357, 365 },
        },
    },
    [360] = {
        {
            spell_id = 27917,
            name = "Enchant Bracer - Spellpower",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22534 },
            },
            materials = {
                { item_id = 22449, qty = 6 },
                { item_id = 21884, qty = 6 },
                { item_id = 21885, qty = 6 },
            },
            levels = { 360, 370, 385, 400 },
        },
        {
            spell_id = 27920,
            name = "Enchant Ring - Striking",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 22535 },
            },
            materials = {
                { item_id = 22449, qty = 2 },
                { item_id = 22445, qty = 6 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 27924,
            name = "Enchant Ring - Spellpower",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 22536 },
            },
            materials = {
                { item_id = 22449, qty = 2 },
                { item_id = 22446, qty = 2 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 27947,
            name = "Enchant Shield - Resistance",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22541 },
            },
            materials = {
                { item_id = 22449, qty = 2 },
                { item_id = 22573, qty = 1 },
                { item_id = 22574, qty = 1 },
                { item_id = 22572, qty = 1 },
                { item_id = 22578, qty = 1 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 27977,
            name = "Enchant 2H Weapon - Major Agility",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22556 },
            },
            materials = {
                { item_id = 22449, qty = 8 },
                { item_id = 22446, qty = 6 },
                { item_id = 22445, qty = 20 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 28003,
            name = "Enchant Weapon - Spellsurge",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22558 },
            },
            materials = {
                { item_id = 22449, qty = 12 },
                { item_id = 22446, qty = 10 },
                { item_id = 22445, qty = 20 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 28004,
            name = "Enchant Weapon - Battlemaster",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22557 },
            },
            materials = {
                { item_id = 22450, qty = 8 },
                { item_id = 22449, qty = 8 },
                { item_id = 21885, qty = 2 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 33994,
            name = "Enchant Gloves - Spell Strike",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28271 },
            },
            materials = {
                { item_id = 22446, qty = 8 },
                { item_id = 22445, qty = 2 },
                { item_id = 22449, qty = 2 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 33997,
            name = "Enchant Gloves - Major Spellpower",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28272 },
            },
            materials = {
                { item_id = 22446, qty = 6 },
                { item_id = 22449, qty = 6 },
                { item_id = 22457, qty = 6 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 34007,
            name = "Enchant Boots - Cat's Swiftness",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28279 },
            },
            materials = {
                { item_id = 22449, qty = 8 },
                { item_id = 22451, qty = 8 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 34008,
            name = "Enchant Boots - Boar's Speed",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 28280 },
            },
            materials = {
                { item_id = 22449, qty = 8 },
                { item_id = 22452, qty = 8 },
            },
            levels = { 360, 370, 377, 385 },
        },
        {
            spell_id = 46594,
            name = "Enchant Chest - Defense",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 35500 },
            },
            materials = {
                { item_id = 22446, qty = 4 },
                { item_id = 22445, qty = 8 },
                { item_id = 23427, qty = 4 },
            },
            levels = { 360, 370, 385, 400 },
        },
    },
    [370] = {
        {
            spell_id = 27926,
            name = "Enchant Ring - Healing Power",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 22537 },
            },
            materials = {
                { item_id = 22449, qty = 2 },
                { item_id = 22446, qty = 3 },
                { item_id = 22445, qty = 5 },
            },
            levels = { 370, 380, 385, 390 },
        },
        {
            spell_id = 27954,
            name = "Enchant Boots - Surefooted",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22545 },
            },
            materials = {
                { item_id = 22450, qty = 2 },
                { item_id = 22449, qty = 4 },
                { item_id = 23572, qty = 1 },
            },
            levels = { 370, 380, 385, 390 },
        },
    },
    [375] = {
        {
            spell_id = 27927,
            name = "Enchant Ring - Stats",
            icon = "inv_misc_note_01",
            source = {
                type = "Item",
                recipe_item_ids = { 22538 },
            },
            materials = {
                { item_id = 22450, qty = 2 },
                { item_id = 22449, qty = 2 },
            },
            levels = { 375, 380, 385, 390 },
        },
        {
            spell_id = 27981,
            name = "Enchant Weapon - Sunfire",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22560 },
            },
            materials = {
                { item_id = 22450, qty = 12 },
                { item_id = 22449, qty = 10 },
                { item_id = 22446, qty = 8 },
                { item_id = 21884, qty = 6 },
                { item_id = 23571, qty = 1 },
            },
            levels = { 375, 375, 375, 390 },
        },
        {
            spell_id = 27982,
            name = "Enchant Weapon - Soulfrost",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22561 },
            },
            materials = {
                { item_id = 22450, qty = 12 },
                { item_id = 22449, qty = 10 },
                { item_id = 22446, qty = 8 },
                { item_id = 21885, qty = 6 },
                { item_id = 22456, qty = 6 },
            },
            levels = { 375, 380, 385, 390 },
        },
        {
            spell_id = 27984,
            name = "Enchant Weapon - Mongoose",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 22559 },
            },
            materials = {
                { item_id = 22450, qty = 6 },
                { item_id = 22449, qty = 10 },
                { item_id = 22446, qty = 8 },
                { item_id = 22445, qty = 40 },
            },
            levels = { 375, 380, 385, 390 },
        },
        {
            spell_id = 42974,
            name = "Enchant Weapon - Executioner",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 33307 },
            },
            materials = {
                { item_id = 22450, qty = 6 },
                { item_id = 22449, qty = 10 },
                { item_id = 22446, qty = 6 },
                { item_id = 22445, qty = 30 },
                { item_id = 22824, qty = 3 },
            },
            levels = { 375, 380, 385, 390 },
        },
        {
            spell_id = 47051,
            name = "Enchant Cloak - Steelweave",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Item",
                recipe_item_ids = { 35756 },
            },
            materials = {
                { item_id = 22446, qty = 8 },
                { item_id = 22452, qty = 8 },
            },
            levels = { 375, 380, 385, 390 },
        },
        {
            spell_id = 32667,
            name = "Runed Eternium Rod",
            icon = "inv_rod_enchantedeternium",
            source = {
                type = "Item",
                recipe_item_ids = { 25849 },
            },
            product = { item_id = 22463, qty = 1 },
            materials = {
                { item_id = 25845, qty = 1 },
                { item_id = 22446, qty = 12 },
                { item_id = 22450, qty = 2 },
                { item_id = 23571, qty = 4 },
                { item_id = 22462, qty = 1 },
            },
            levels = { 375, 375, 377, 385 },
        },
        {
            spell_id = 45765,
            name = "Void Shatter",
            icon = "inv_enchant_shardprismaticlarge",
            source = {
                type = "Item",
                recipe_item_ids = { 34872 },
            },
            product = { item_id = 22449, qty = 2 },
            materials = {
                { item_id = 22450, qty = 1 },
            },
            levels = { 375, 375, 375, 365 },
        },
    },
}

local _, TFG = ...

TFG.COOKING_TBC = {
    [1] = {
        {
            spell_id = 2550,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 818,
            name = "Basic Campfire",
            categories = { "Miscellaneous" },
            icon = "spell_fire_fire",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 2538,
            name = "Charred Wolf Meat",
            categories = { "Food" },
            icon = "inv_misc_food_18",
            source = {
                type = "Trainer",
            },
            product = { item_id = 2679, qty = 1 },
            materials = {
                { item_id = 2672, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 2540,
            name = "Roasted Boar Meat",
            categories = { "Food" },
            icon = "inv_misc_food_18",
            source = {
                type = "Trainer",
            },
            product = { item_id = 2681, qty = 1 },
            materials = {
                { item_id = 769, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 37836,
            name = "Spice Bread",
            categories = { "Food" },
            icon = "inv_misc_food_95_grainbread",
            source = {
                type = "Trainer",
                cost = 10,
            },
            product = { item_id = 30816, qty = 1 },
            materials = {
                { item_id = 30817, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 1, 30, 35, 40 },
        },
        {
            spell_id = 7751,
            name = "Brilliant Smallfish",
            categories = { "Food" },
            icon = "inv_misc_fish_07",
            source = {
                type = "Item",
                recipe_item_ids = { 6325 },
            },
            product = { item_id = 6290, qty = 1 },
            materials = {
                { item_id = 6291, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 7752,
            name = "Slitherskin Mackerel",
            categories = { "Food" },
            icon = "inv_misc_fish_24",
            source = {
                type = "Item",
                recipe_item_ids = { 6326 },
            },
            product = { item_id = 787, qty = 1 },
            materials = {
                { item_id = 6303, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 8604,
            name = "Herb Baked Egg",
            categories = { "Stamina", "Spirit" },
            icon = "inv_egg_03",
            source = {
                type = "Item",
                recipe_item_ids = { 6891 },
            },
            product = { item_id = 6888, qty = 1 },
            materials = {
                { item_id = 6889, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 15935,
            name = "Crispy Bat Wing",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_46",
            source = {
                type = "Item",
                recipe_item_ids = { 12226 },
            },
            product = { item_id = 12224, qty = 1 },
            materials = {
                { item_id = 12223, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 33276,
            name = "Lynx Steak",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_47",
            source = {
                type = "Item",
                recipe_item_ids = { 27685 },
            },
            product = { item_id = 27635, qty = 1 },
            materials = {
                { item_id = 27668, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 33277,
            name = "Roasted Moongraze Tenderloin",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_60",
            source = {
                type = "Item",
                recipe_item_ids = { 27686 },
            },
            product = { item_id = 24105, qty = 1 },
            materials = {
                { item_id = 23676, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 21143,
            name = "Gingerbread Cookie",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_62",
            source = {
                type = "Item",
                recipe_item_ids = { 17200 },
            },
            product = { item_id = 17197, qty = 1 },
            materials = {
                { item_id = 6889, qty = 1 },
                { item_id = 17194, qty = 1 },
            },
            levels = { 1, 45, 65, 85 },
        },
        {
            spell_id = 43779,
            name = "Delicious Chocolate Cake",
            categories = { "Special" },
            icon = "inv_misc_celebrationcake_01",
            source = {
                type = "Item",
                recipe_item_ids = { 33925 },
            },
            product = { item_id = 33924, qty = 1 },
            materials = {
                { item_id = 30817, qty = 8 },
                { item_id = 1179, qty = 4 },
                { item_id = 2678, qty = 4 },
                { item_id = 6889, qty = 8 },
                { item_id = 2593, qty = 1 },
                { item_id = 785, qty = 3 },
            },
            levels = { 1, 50, 62, 75 },
        },
    },
    [10] = {
        {
            spell_id = 2539,
            name = "Spiced Wolf Meat",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_65",
            source = {
                type = "Trainer",
                cost = 50,
            },
            product = { item_id = 2680, qty = 1 },
            materials = {
                { item_id = 2672, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 10, 50, 70, 90 },
        },
        {
            spell_id = 6412,
            name = "Kaldorei Spider Kabob",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_68",
            source = {
                type = "Item",
                recipe_item_ids = { 5482 },
            },
            product = { item_id = 5472, qty = 1 },
            materials = {
                { item_id = 5465, qty = 1 },
            },
            levels = { 10, 50, 70, 90 },
        },
    },
    [20] = {
        {
            spell_id = 6413,
            name = "Scorpid Surprise",
            categories = { "Food" },
            icon = "inv_misc_food_10",
            source = {
                type = "Item",
                recipe_item_ids = { 5483 },
            },
            product = { item_id = 5473, qty = 1 },
            materials = {
                { item_id = 5466, qty = 1 },
            },
            levels = { 20, 60, 80, 100 },
        },
    },
    [25] = {
        {
            spell_id = 2795,
            name = "Beer Basted Boar Ribs",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_48",
            source = {
                type = "Item",
                recipe_item_ids = { 2889 },
            },
            product = { item_id = 2888, qty = 1 },
            materials = {
                { item_id = 2886, qty = 1 },
                { item_id = 2894, qty = 1 },
            },
            levels = { 10, 60, 80, 100 },
        },
    },
    [35] = {
        {
            spell_id = 6414,
            name = "Roasted Kodo Meat",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_60",
            source = {
                type = "Item",
                recipe_item_ids = { 5484 },
            },
            product = { item_id = 5474, qty = 2 },
            materials = {
                { item_id = 5467, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 35, 75, 95, 115 },
        },
        {
            spell_id = 21144,
            name = "Egg Nog",
            categories = { "Stamina", "Spirit" },
            icon = "inv_drink_04",
            source = {
                type = "Item",
                recipe_item_ids = { 17201 },
            },
            product = { item_id = 17198, qty = 1 },
            materials = {
                { item_id = 6889, qty = 1 },
                { item_id = 1179, qty = 1 },
                { item_id = 17196, qty = 1 },
                { item_id = 17194, qty = 1 },
            },
            levels = { 35, 75, 95, 115 },
        },
    },
    [40] = {
        {
            spell_id = 8607,
            name = "Smoked Bear Meat",
            categories = { "Food" },
            icon = "inv_misc_food_13",
            source = {
                type = "Item",
                recipe_item_ids = { 6892 },
            },
            product = { item_id = 6890, qty = 1 },
            materials = {
                { item_id = 3173, qty = 1 },
            },
            levels = { 40, 80, 100, 120 },
        },
    },
    [50] = {
        {
            spell_id = 2541,
            name = "Coyote Steak",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_65",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { item_id = 2684, qty = 1 },
            materials = {
                { item_id = 2673, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 2542,
            name = "Goretusk Liver Pie",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_10",
            source = {
                type = "Item",
                recipe_item_ids = { 2697 },
            },
            product = { item_id = 724, qty = 1 },
            materials = {
                { item_id = 723, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 3102,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
        {
            spell_id = 6415,
            name = "Fillet of Frenzy",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_fish_05",
            source = {
                type = "Item",
                recipe_item_ids = { 5485 },
            },
            product = { item_id = 5476, qty = 2 },
            materials = {
                { item_id = 5468, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 6416,
            name = "Strider Stew",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_bowl_01",
            source = {
                type = "Item",
                recipe_item_ids = { 5486 },
            },
            product = { item_id = 5477, qty = 2 },
            materials = {
                { item_id = 5469, qty = 1 },
                { item_id = 4536, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 6499,
            name = "Boiled Clams",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_shell_02",
            source = {
                type = "Trainer",
                cost = 100,
            },
            product = { item_id = 5525, qty = 1 },
            materials = {
                { item_id = 5503, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 7753,
            name = "Longjaw Mud Snapper",
            categories = { "Food" },
            icon = "inv_misc_fish_32",
            source = {
                type = "Item",
                recipe_item_ids = { 6328 },
            },
            product = { item_id = 4592, qty = 1 },
            materials = {
                { item_id = 6289, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 7754,
            name = "Loch Frenzy Delight",
            categories = { "Food" },
            icon = "inv_potion_01",
            source = {
                type = "Item",
                recipe_item_ids = { 6329 },
            },
            product = { item_id = 6316, qty = 1 },
            materials = {
                { item_id = 6317, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 7827,
            name = "Rainbow Fin Albacore",
            categories = { "Food" },
            icon = "inv_misc_fish_27",
            source = {
                type = "Item",
                recipe_item_ids = { 6368 },
            },
            product = { item_id = 5095, qty = 1 },
            materials = {
                { item_id = 6361, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
        {
            spell_id = 33278,
            name = "Bat Bites",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_86_basilisk",
            source = {
                type = "Item",
                recipe_item_ids = { 27687 },
            },
            product = { item_id = 27636, qty = 1 },
            materials = {
                { item_id = 27669, qty = 1 },
            },
            levels = { 50, 90, 110, 130 },
        },
    },
    [60] = {
        {
            spell_id = 3371,
            name = "Blood Sausage",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_49",
            source = {
                type = "Item",
                recipe_item_ids = { 3679 },
            },
            product = { item_id = 3220, qty = 2 },
            materials = {
                { item_id = 3173, qty = 1 },
                { item_id = 3172, qty = 1 },
                { item_id = 3174, qty = 1 },
            },
            levels = { 60, 100, 120, 140 },
        },
        {
            spell_id = 9513,
            name = "Thistle Tea",
            categories = { "Miscellaneous" },
            icon = "inv_drink_milk_05",
            source = {
                type = "Item",
                recipe_item_ids = { 18160 },
            },
            product = { item_id = 7676, qty = 1 },
            materials = {
                { item_id = 2452, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 60, 100, 120, 140 },
        },
        {
            spell_id = 28267,
            name = "Crunchy Spider Surprise",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_88_ravagernuggets",
            source = {
                type = "Item",
                recipe_item_ids = { 22647 },
            },
            product = { item_id = 22645, qty = 1 },
            materials = {
                { item_id = 22644, qty = 1 },
            },
            levels = { 60, 100, 120, 140 },
        },
    },
    [75] = {
        {
            spell_id = 2543,
            name = "Westfall Stew",
            categories = { "Food" },
            icon = "inv_misc_bowl_01",
            source = {
                type = "Item",
                recipe_item_ids = { 728 },
            },
            product = { item_id = 733, qty = 1 },
            materials = {
                { item_id = 729, qty = 1 },
                { item_id = 730, qty = 1 },
                { item_id = 731, qty = 1 },
            },
            levels = { 75, 115, 135, 155 },
        },
        {
            spell_id = 2544,
            name = "Crab Cake",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_08",
            source = {
                type = "Trainer",
                cost = 200,
            },
            product = { item_id = 2683, qty = 1 },
            materials = {
                { item_id = 2674, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 75, 115, 135, 155 },
        },
    },
    [80] = {
        {
            spell_id = 2546,
            name = "Dry Pork Ribs",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_48",
            source = {
                type = "Trainer",
                cost = 150,
            },
            product = { item_id = 2687, qty = 1 },
            materials = {
                { item_id = 2677, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 80, 120, 140, 160 },
        },
        {
            spell_id = 3370,
            name = "Crocolisk Steak",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_47",
            source = {
                type = "Item",
                recipe_item_ids = { 3678 },
            },
            product = { item_id = 3662, qty = 1 },
            materials = {
                { item_id = 2924, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 80, 120, 140, 160 },
        },
        {
            spell_id = 25704,
            name = "Smoked Sagefish",
            categories = { "MP5" },
            icon = "inv_misc_fish_20",
            source = {
                type = "Item",
                recipe_item_ids = { 21099 },
            },
            product = { item_id = 21072, qty = 1 },
            materials = {
                { item_id = 21071, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 80, 120, 140, 160 },
        },
    },
    [85] = {
        {
            spell_id = 2545,
            name = "Cooked Crab Claw",
            categories = { "Food" },
            icon = "inv_misc_birdbeck_02",
            source = {
                type = "Item",
                recipe_item_ids = { 2698 },
            },
            product = { item_id = 2682, qty = 1 },
            materials = {
                { item_id = 2675, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 85, 125, 145, 165 },
        },
        {
            spell_id = 8238,
            name = "Savory Deviate Delight",
            categories = { "Special" },
            icon = "inv_misc_monsterhead_04",
            source = {
                type = "Item",
                recipe_item_ids = { 6661 },
            },
            product = { item_id = 6657, qty = 1 },
            materials = {
                { item_id = 6522, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 85, 125, 145, 165 },
        },
    },
    [90] = {
        {
            spell_id = 3372,
            name = "Murloc Fin Soup",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_bowl_01",
            source = {
                type = "Item",
                recipe_item_ids = { 3680 },
            },
            product = { item_id = 3663, qty = 1 },
            materials = {
                { item_id = 1468, qty = 2 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 90, 130, 150, 170 },
        },
        {
            spell_id = 6417,
            name = "Dig Rat Stew",
            categories = { "Food" },
            icon = "inv_misc_bowl_01",
            source = {
                type = "Item",
                recipe_item_ids = { 5487 },
            },
            product = { item_id = 5478, qty = 2 },
            materials = {
                { item_id = 5051, qty = 1 },
            },
            levels = { 90, 130, 150, 170 },
        },
        {
            spell_id = 6501,
            name = "Clam Chowder",
            categories = { "Food" },
            icon = "inv_potion_01",
            source = {
                type = "Item",
                recipe_item_ids = { 5528 },
            },
            product = { item_id = 5526, qty = 1 },
            materials = {
                { item_id = 5503, qty = 1 },
                { item_id = 1179, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 90, 130, 150, 170 },
        },
    },
    [100] = {
        {
            spell_id = 2549,
            name = "Seasoned Wolf Kabob",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_16",
            source = {
                type = "Item",
                recipe_item_ids = { 2701 },
            },
            product = { item_id = 1017, qty = 3 },
            materials = {
                { item_id = 1015, qty = 2 },
                { item_id = 2665, qty = 1 },
            },
            levels = { 100, 140, 160, 180 },
        },
        {
            spell_id = 6418,
            name = "Crispy Lizard Tail",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_17",
            source = {
                type = "Item",
                recipe_item_ids = { 5488 },
            },
            product = { item_id = 5479, qty = 2 },
            materials = {
                { item_id = 5470, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 100, 140, 160, 180 },
        },
        {
            spell_id = 7755,
            name = "Bristle Whisker Catfish",
            categories = { "Food" },
            icon = "inv_misc_fish_30",
            source = {
                type = "Item",
                recipe_item_ids = { 6330 },
            },
            product = { item_id = 4593, qty = 1 },
            materials = {
                { item_id = 6308, qty = 1 },
            },
            levels = { 100, 140, 160, 180 },
        },
        {
            spell_id = 2547,
            name = "Redridge Goulash",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_bowl_01",
            source = {
                type = "Item",
                recipe_item_ids = { 2699 },
            },
            product = { item_id = 1082, qty = 1 },
            materials = {
                { item_id = 1081, qty = 1 },
                { item_id = 1080, qty = 1 },
            },
            levels = { 100, 135, 155, 175 },
        },
        {
            spell_id = 45695,
            name = "Captain Rumsey's Lager",
            categories = { "Miscellaneous" },
            icon = "inv_drink_03",
            source = {
                type = "Item",
                recipe_item_ids = { 34834 },
            },
            product = { item_id = 34832, qty = 5 },
            materials = {
                { item_id = 2596, qty = 1 },
                { item_id = 2594, qty = 1 },
            },
            levels = { 100, 100, 105, 110 },
        },
    },
    [110] = {
        {
            spell_id = 3377,
            name = "Gooey Spider Cake",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_10",
            source = {
                type = "Item",
                recipe_item_ids = { 3683 },
            },
            product = { item_id = 3666, qty = 1 },
            materials = {
                { item_id = 2251, qty = 2 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 110, 150, 170, 190 },
        },
        {
            spell_id = 3397,
            name = "Big Bear Steak",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_47",
            source = {
                type = "Item",
                recipe_item_ids = { 3734 },
            },
            product = { item_id = 3726, qty = 1 },
            materials = {
                { item_id = 3730, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 110, 150, 170, 190 },
        },
        {
            spell_id = 6419,
            name = "Lean Venison",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_72",
            source = {
                type = "Item",
                recipe_item_ids = { 5489 },
            },
            product = { item_id = 5480, qty = 2 },
            materials = {
                { item_id = 5471, qty = 1 },
                { item_id = 2678, qty = 4 },
            },
            levels = { 110, 150, 170, 190 },
        },
        {
            spell_id = 2548,
            name = "Succulent Pork Ribs",
            categories = { "Food" },
            icon = "inv_misc_food_16",
            source = {
                type = "Item",
                recipe_item_ids = { 2700 },
            },
            product = { item_id = 2685, qty = 1 },
            materials = {
                { item_id = 2677, qty = 2 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 110, 130, 150, 170 },
        },
    },
    [120] = {
        {
            spell_id = 3373,
            name = "Crocolisk Gumbo",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_bowl_01",
            source = {
                type = "Item",
                recipe_item_ids = { 3681 },
            },
            product = { item_id = 3664, qty = 1 },
            materials = {
                { item_id = 3667, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 120, 160, 180, 200 },
        },
    },
    [125] = {
        {
            spell_id = 3413,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
            source = {
                type = "Item",
                recipe_item_ids = { 16072 },
                cost = 10000,
                location = "Ashenvale (A) or Desolace (H)",
            },
        },
        {
            spell_id = 3398,
            name = "Hot Lion Chops",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_18",
            source = {
                type = "Item",
                recipe_item_ids = { 3735 },
            },
            product = { item_id = 3727, qty = 1 },
            materials = {
                { item_id = 3731, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 125, 175, 195, 215 },
        },
        {
            spell_id = 6500,
            name = "Goblin Deviled Clams",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_shell_01",
            source = {
                type = "Trainer",
                cost = 300,
            },
            product = { item_id = 5527, qty = 1 },
            materials = {
                { item_id = 5504, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 125, 165, 185, 205 },
        },
        {
            spell_id = 15853,
            name = "Lean Wolf Steak",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_47",
            source = {
                type = "Item",
                recipe_item_ids = { 12227 },
            },
            product = { item_id = 12209, qty = 1 },
            materials = {
                { item_id = 1015, qty = 1 },
                { item_id = 2678, qty = 1 },
            },
            levels = { 125, 165, 185, 205 },
        },
    },
    [130] = {
        {
            spell_id = 3376,
            name = "Curiously Tasty Omelet",
            categories = { "Stamina", "Spirit" },
            icon = "inv_egg_04",
            source = {
                type = "Item",
                recipe_item_ids = { 3682 },
            },
            product = { item_id = 3665, qty = 1 },
            materials = {
                { item_id = 3685, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 130, 170, 190, 210 },
        },
    },
    [150] = {
        {
            spell_id = 3399,
            name = "Tasty Lion Steak",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_14",
            source = {
                type = "Item",
                recipe_item_ids = { 3736 },
            },
            product = { item_id = 3728, qty = 1 },
            materials = {
                { item_id = 3731, qty = 2 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 150, 190, 210, 230 },
        },
        {
            spell_id = 24418,
            name = "Heavy Crocolisk Stew",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_64",
            source = {
                type = "Item",
                recipe_item_ids = { 20075 },
            },
            product = { item_id = 20074, qty = 1 },
            materials = {
                { item_id = 3667, qty = 2 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 150, 160, 180, 200 },
        },
    },
    [175] = {
        {
            spell_id = 3400,
            name = "Soothing Turtle Bisque",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_bowl_01",
            source = {
                type = "Item",
                recipe_item_ids = { 3737 },
            },
            product = { item_id = 3729, qty = 1 },
            materials = {
                { item_id = 3712, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 4094,
            name = "Barbecued Buzzard Wing",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_18",
            source = {
                type = "Item",
                recipe_item_ids = { 4609 },
            },
            product = { item_id = 4457, qty = 1 },
            materials = {
                { item_id = 3404, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 7213,
            name = "Giant Clam Scorcho",
            categories = { "Stamina", "Spirit" },
            icon = "inv_ammo_firetar",
            source = {
                type = "Item",
                recipe_item_ids = { 6039 },
            },
            product = { item_id = 6038, qty = 1 },
            materials = {
                { item_id = 4655, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15855,
            name = "Roast Raptor",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_50",
            source = {
                type = "Item",
                recipe_item_ids = { 12228 },
            },
            product = { item_id = 12210, qty = 1 },
            materials = {
                { item_id = 12184, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15856,
            name = "Hot Wolf Ribs",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_48",
            source = {
                type = "Item",
                recipe_item_ids = { 12229 },
            },
            product = { item_id = 13851, qty = 1 },
            materials = {
                { item_id = 12203, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15861,
            name = "Jungle Stew",
            categories = { "Stamina", "Spirit" },
            icon = "inv_drink_17",
            source = {
                type = "Item",
                recipe_item_ids = { 12231 },
            },
            product = { item_id = 12212, qty = 2 },
            materials = {
                { item_id = 12202, qty = 1 },
                { item_id = 159, qty = 1 },
                { item_id = 4536, qty = 2 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15863,
            name = "Carrion Surprise",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_49",
            source = {
                type = "Item",
                recipe_item_ids = { 12232 },
            },
            product = { item_id = 12213, qty = 1 },
            materials = {
                { item_id = 12037, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 15865,
            name = "Mystery Stew",
            categories = { "Stamina", "Spirit" },
            icon = "inv_drink_19",
            source = {
                type = "Item",
                recipe_item_ids = { 12233 },
            },
            product = { item_id = 12214, qty = 1 },
            materials = {
                { item_id = 12037, qty = 1 },
                { item_id = 2596, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 20916,
            name = "Mithril Headed Trout",
            categories = { "Food" },
            icon = "inv_misc_fish_02",
            source = {
                type = "Item",
                recipe_item_ids = { 17062 },
            },
            product = { item_id = 8364, qty = 1 },
            materials = {
                { item_id = 8365, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 25954,
            name = "Sagefish Delight",
            categories = { "MP5" },
            icon = "inv_misc_fish_21",
            source = {
                type = "Item",
                recipe_item_ids = { 21219 },
            },
            product = { item_id = 21217, qty = 1 },
            materials = {
                { item_id = 21153, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 175, 215, 235, 255 },
        },
        {
            spell_id = 7828,
            name = "Rockscale Cod",
            categories = { "Food" },
            icon = "inv_misc_fish_04",
            source = {
                type = "Item",
                recipe_item_ids = { 6369 },
            },
            product = { item_id = 4594, qty = 1 },
            materials = {
                { item_id = 6362, qty = 1 },
            },
            levels = { 175, 190, 210, 230 },
        },
        {
            spell_id = 13028,
            name = "Goldthorn Tea",
            categories = { "Food" },
            icon = "inv_drink_15",
            source = {
                type = "Trainer",
            },
            product = { item_id = 10841, qty = 4 },
            materials = {
                { item_id = 3821, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 175, 175, 190, 205 },
        },
    },
    [200] = {
        {
            spell_id = 15906,
            name = "Dragonbreath Chili",
            categories = { "Miscellaneous" },
            icon = "inv_drink_17",
            source = {
                type = "Item",
                recipe_item_ids = { 12239 },
            },
            product = { item_id = 12217, qty = 1 },
            materials = {
                { item_id = 12037, qty = 1 },
                { item_id = 4402, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 200, 225, 237, 250 },
        },
        {
            spell_id = 15910,
            name = "Heavy Kodo Stew",
            categories = { "Stamina", "Spirit" },
            icon = "inv_drink_19",
            source = {
                type = "Item",
                recipe_item_ids = { 12240 },
            },
            product = { item_id = 12215, qty = 2 },
            materials = {
                { item_id = 12204, qty = 2 },
                { item_id = 3713, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 200, 225, 237, 250 },
        },
        {
            spell_id = 21175,
            name = "Spider Sausage",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_66",
            source = {
                type = "Trainer",
                cost = 4000,
            },
            product = { item_id = 17222, qty = 1 },
            materials = {
                { item_id = 12205, qty = 2 },
            },
            levels = { 200, 225, 237, 250 },
        },
    },
    [225] = {
        {
            spell_id = 18260,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
            source = {
                type = "Quest",
                quest_ids = { 6610 },
                location = "Dirge Quikcleave, Gadgetzan, Tanaris",
            },
        },
        {
            spell_id = 15915,
            name = "Spiced Chili Crab",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_48",
            source = {
                type = "Item",
                recipe_item_ids = { 16111 },
            },
            product = { item_id = 12216, qty = 1 },
            materials = {
                { item_id = 12206, qty = 1 },
                { item_id = 2692, qty = 2 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 15933,
            name = "Monster Omelet",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_06",
            source = {
                type = "Item",
                recipe_item_ids = { 16110 },
            },
            product = { item_id = 12218, qty = 1 },
            materials = {
                { item_id = 12207, qty = 1 },
                { item_id = 3713, qty = 2 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 18238,
            name = "Spotted Yellowtail",
            categories = { "Food" },
            source = {
                type = "Item",
                recipe_item_ids = { 13939 },
            },
            product = { item_id = 6887, qty = 1 },
            materials = {
                { item_id = 4603, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 18239,
            name = "Cooked Glossy Mightfish",
            categories = { "Stamina" },
            icon = "inv_misc_monsterhead_03",
            source = {
                type = "Item",
                recipe_item_ids = { 13940 },
            },
            product = { item_id = 13927, qty = 1 },
            materials = {
                { item_id = 13754, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 18241,
            name = "Filet of Redgill",
            categories = { "Food" },
            icon = "inv_misc_fish_06",
            source = {
                type = "Item",
                recipe_item_ids = { 13941 },
            },
            product = { item_id = 13930, qty = 1 },
            materials = {
                { item_id = 13758, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 20626,
            name = "Undermine Clam Chowder",
            categories = { "Food" },
            icon = "inv_drink_17",
            source = {
                type = "Item",
                recipe_item_ids = { 16767 },
            },
            product = { item_id = 16766, qty = 2 },
            materials = {
                { item_id = 7974, qty = 2 },
                { item_id = 2692, qty = 1 },
                { item_id = 1179, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
        {
            spell_id = 22480,
            name = "Tender Wolf Steak",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_47",
            source = {
                type = "Item",
                recipe_item_ids = { 18046 },
            },
            product = { item_id = 18045, qty = 1 },
            materials = {
                { item_id = 12208, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 225, 250, 262, 275 },
        },
    },
    [240] = {
        {
            spell_id = 18240,
            name = "Grilled Squid",
            categories = { "Agility" },
            icon = "inv_misc_fish_13",
            source = {
                type = "Item",
                recipe_item_ids = { 13942 },
            },
            product = { item_id = 13928, qty = 1 },
            materials = {
                { item_id = 13755, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 240, 265, 277, 290 },
        },
        {
            spell_id = 18242,
            name = "Hot Smoked Bass",
            categories = { "Spirit" },
            icon = "inv_misc_fish_03",
            source = {
                type = "Item",
                recipe_item_ids = { 13943 },
            },
            product = { item_id = 13929, qty = 1 },
            materials = {
                { item_id = 13756, qty = 1 },
                { item_id = 2692, qty = 2 },
            },
            levels = { 240, 265, 277, 290 },
        },
    },
    [250] = {
        {
            spell_id = 18243,
            name = "Nightfin Soup",
            categories = { "MP5" },
            icon = "inv_drink_17",
            source = {
                type = "Item",
                recipe_item_ids = { 13945 },
            },
            product = { item_id = 13931, qty = 1 },
            materials = {
                { item_id = 13759, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 250, 275, 285, 295 },
        },
        {
            spell_id = 18244,
            name = "Poached Sunscale Salmon",
            categories = { "HP5" },
            icon = "inv_misc_fish_19",
            source = {
                type = "Item",
                recipe_item_ids = { 13946 },
            },
            product = { item_id = 13932, qty = 1 },
            materials = {
                { item_id = 13760, qty = 1 },
            },
            levels = { 250, 275, 285, 295 },
        },
        {
            spell_id = 46684,
            name = "Charred Bear Kabobs",
            categories = { "Attack Power" },
            icon = "inv_misc_food_68",
            source = {
                type = "Item",
                recipe_item_ids = { 35564 },
            },
            product = { item_id = 35563, qty = 1 },
            materials = {
                { item_id = 35562, qty = 1 },
            },
            levels = { 250, 275, 285, 295 },
        },
        {
            spell_id = 46688,
            name = "Juicy Bear Burger",
            categories = { "Spell Damage" },
            icon = "inv_misc_food_65",
            source = {
                type = "Item",
                recipe_item_ids = { 35566 },
            },
            product = { item_id = 35565, qty = 1 },
            materials = {
                { item_id = 35562, qty = 1 },
            },
            levels = { 250, 275, 285, 295 },
        },
    },
    [275] = {
        {
            spell_id = 33359,
            name = "Cooking",
            categories = { "Profession Training" },
            icon = "inv_misc_food_15",
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 18245,
            name = "Lobster Stew",
            categories = { "Food" },
            icon = "inv_drink_17",
            source = {
                type = "Item",
                recipe_item_ids = { 13947 },
            },
            product = { item_id = 13933, qty = 1 },
            materials = {
                { item_id = 13888, qty = 1 },
                { item_id = 159, qty = 1 },
            },
            levels = { 275, 300, 312, 325 },
        },
        {
            spell_id = 18246,
            name = "Mightfish Steak",
            categories = { "Stamina" },
            icon = "inv_misc_food_47",
            source = {
                type = "Item",
                recipe_item_ids = { 13948 },
            },
            product = { item_id = 13934, qty = 1 },
            materials = {
                { item_id = 13893, qty = 1 },
                { item_id = 2692, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 275, 300, 312, 325 },
        },
        {
            spell_id = 18247,
            name = "Baked Salmon",
            categories = { "Food" },
            icon = "inv_misc_fish_20",
            source = {
                type = "Item",
                recipe_item_ids = { 13949 },
            },
            product = { item_id = 13935, qty = 1 },
            materials = {
                { item_id = 13889, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 275, 300, 312, 325 },
        },
        {
            spell_id = 22761,
            name = "Runn Tum Tuber Surprise",
            categories = { "Intellect" },
            icon = "inv_misc_food_63",
            source = {
                type = "Item",
                recipe_item_ids = { 18267 },
            },
            product = { item_id = 18254, qty = 1 },
            materials = {
                { item_id = 18255, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 275, 300, 312, 325 },
        },
    },
    [285] = {
        {
            spell_id = 24801,
            name = "Smoked Desert Dumplings",
            categories = { "Strength" },
            icon = "inv_misc_food_64",
            source = {
                type = "Trainer",
            },
            product = { item_id = 20452, qty = 1 },
            materials = {
                { item_id = 20424, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 285, 310, 322, 335 },
        },
    },
    [300] = {
        {
            spell_id = 43772,
            name = "Kibler's Bits",
            categories = { "Pet" },
            icon = "inv_misc_food_49",
            source = {
                type = "Item",
                recipe_item_ids = { 33875 },
            },
            product = { item_id = 33874, qty = 1 },
            materials = {
                { item_id = 27671, qty = 1 },
            },
            levels = { 300, 345, 355, 365 },
        },
        {
            spell_id = 25659,
            name = "Dirge's Kickin' Chimaerok Chops",
            categories = { "Stamina" },
            icon = "inv_misc_food_65",
            source = {
                type = "Item",
                recipe_item_ids = { 21025 },
            },
            product = { item_id = 21023, qty = 5 },
            materials = {
                { item_id = 2692, qty = 1 },
                { item_id = 9061, qty = 1 },
                { item_id = 8150, qty = 1 },
                { item_id = 21024, qty = 1 },
            },
            levels = { 300, 325, 337, 350 },
        },
        {
            spell_id = 33279,
            name = "Buzzard Bites",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_85_stegadonbite",
            source = {
                type = "Item",
                recipe_item_ids = { 27684 },
            },
            product = { item_id = 27651, qty = 1 },
            materials = {
                { item_id = 27671, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 33284,
            name = "Ravager Dog",
            categories = { "Attack Power", "Spirit" },
            icon = "inv_misc_food_53",
            source = {
                type = "Item",
                recipe_item_ids = { 27688 },
            },
            product = { item_id = 27655, qty = 1 },
            materials = {
                { item_id = 27674, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 33290,
            name = "Blackened Trout",
            categories = { "Food" },
            icon = "inv_misc_food_77",
            source = {
                type = "Item",
                recipe_item_ids = { 27694 },
            },
            product = { item_id = 27661, qty = 1 },
            materials = {
                { item_id = 27422, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 33291,
            name = "Feltail Delight",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_74",
            source = {
                type = "Item",
                recipe_item_ids = { 27695 },
            },
            product = { item_id = 27662, qty = 1 },
            materials = {
                { item_id = 27425, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 36210,
            name = "Clam Bar",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_27",
            source = {
                type = "Item",
                recipe_item_ids = { 30156 },
            },
            product = { item_id = 30155, qty = 1 },
            materials = {
                { item_id = 24477, qty = 2 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 43758,
            name = "Stormchops",
            categories = { "Miscellaneous" },
            icon = "inv_misc_food_91",
            source = {
                type = "Item",
                recipe_item_ids = { 33871 },
            },
            product = { item_id = 33866, qty = 1 },
            materials = {
                { item_id = 27678, qty = 1 },
                { item_id = 13757, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
        {
            spell_id = 43761,
            name = "Broiled Bloodfin",
            categories = { "Resistance" },
            icon = "inv_misc_fish_29",
            source = {
                type = "Item",
                recipe_item_ids = { 33869 },
            },
            product = { item_id = 33867, qty = 1 },
            materials = {
                { item_id = 33823, qty = 1 },
            },
            levels = { 300, 320, 330, 340 },
        },
    },
    [310] = {
        {
            spell_id = 33285,
            name = "Sporeling Snack",
            categories = { "Pet" },
            icon = "inv_misc_food_87_sporelingsnack",
            source = {
                type = "Item",
                recipe_item_ids = { 27689 },
            },
            product = { item_id = 27656, qty = 1 },
            materials = {
                { item_id = 27676, qty = 1 },
            },
            levels = { 310, 330, 340, 350 },
        },
        {
            spell_id = 33292,
            name = "Blackened Sporefish",
            categories = { "Stamina", "MP5" },
            icon = "inv_misc_food_79",
            source = {
                type = "Item",
                recipe_item_ids = { 27696 },
            },
            product = { item_id = 27663, qty = 1 },
            materials = {
                { item_id = 27429, qty = 1 },
            },
            levels = { 310, 330, 340, 350 },
        },
    },
    [315] = {
        {
            spell_id = 33286,
            name = "Blackened Basilisk",
            categories = { "Spell Damage", "Spirit" },
            icon = "inv_misc_food_86_basilisk",
            source = {
                type = "Item",
                recipe_item_ids = { 27690 },
            },
            product = { item_id = 27657, qty = 1 },
            materials = {
                { item_id = 27677, qty = 1 },
            },
            levels = { 315, 335, 345, 355 },
        },
    },
    [320] = {
        {
            spell_id = 33293,
            name = "Grilled Mudfish",
            categories = { "Agility", "Spirit" },
            icon = "inv_misc_food_78",
            source = {
                type = "Item",
                recipe_item_ids = { 27697 },
            },
            product = { item_id = 27664, qty = 1 },
            materials = {
                { item_id = 27435, qty = 1 },
            },
            levels = { 320, 340, 350, 360 },
        },
        {
            spell_id = 33294,
            name = "Poached Bluefish",
            categories = { "Spell Damage", "Spirit" },
            icon = "inv_misc_food_76",
            source = {
                type = "Item",
                recipe_item_ids = { 27698 },
            },
            product = { item_id = 27665, qty = 1 },
            materials = {
                { item_id = 27437, qty = 1 },
            },
            levels = { 320, 340, 350, 360 },
        },
    },
    [325] = {
        {
            spell_id = 33287,
            name = "Roasted Clefthoof",
            categories = { "Strength", "Spirit" },
            icon = "inv_misc_food_60",
            source = {
                type = "Item",
                recipe_item_ids = { 27691 },
            },
            product = { item_id = 27658, qty = 1 },
            materials = {
                { item_id = 27678, qty = 1 },
            },
            levels = { 325, 345, 355, 365 },
        },
        {
            spell_id = 33288,
            name = "Warp Burger",
            categories = { "Agility", "Spirit" },
            icon = "inv_misc_food_65",
            source = {
                type = "Item",
                recipe_item_ids = { 27692 },
            },
            product = { item_id = 27659, qty = 1 },
            materials = {
                { item_id = 27681, qty = 1 },
            },
            levels = { 325, 345, 355, 365 },
        },
        {
            spell_id = 33289,
            name = "Talbuk Steak",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_84_roastclefthoof",
            source = {
                type = "Item",
                recipe_item_ids = { 27693 },
            },
            product = { item_id = 27660, qty = 1 },
            materials = {
                { item_id = 27682, qty = 1 },
            },
            levels = { 325, 345, 355, 365 },
        },
        {
            spell_id = 33295,
            name = "Golden Fish Sticks",
            categories = { "Healing", "Spirit" },
            icon = "inv_misc_fish_18",
            source = {
                type = "Item",
                recipe_item_ids = { 27699 },
            },
            product = { item_id = 27666, qty = 1 },
            materials = {
                { item_id = 27438, qty = 1 },
            },
            levels = { 325, 345, 355, 365 },
        },
        {
            spell_id = 43707,
            name = "Skullfish Soup",
            categories = { "Spell Critical Strike", "Spirit" },
            icon = "inv_misc_food_63",
            source = {
                type = "Item",
                recipe_item_ids = { 33870 },
            },
            product = { item_id = 33825, qty = 1 },
            materials = {
                { item_id = 33824, qty = 1 },
            },
            levels = { 325, 335, 345, 355 },
        },
        {
            spell_id = 43765,
            name = "Spicy Hot Talbuk",
            categories = { "Hit Rating", "Spirit" },
            icon = "inv_misc_food_84_roastclefthoof",
            source = {
                type = "Item",
                recipe_item_ids = { 33873 },
            },
            product = { item_id = 33872, qty = 1 },
            materials = {
                { item_id = 27682, qty = 1 },
                { item_id = 2692, qty = 1 },
            },
            levels = { 325, 335, 345, 355 },
        },
        {
            spell_id = 45022,
            name = "Hot Apple Cider",
            categories = { "Stamina", "Spirit" },
            icon = "inv_drink_23",
            source = {
                type = "Item",
                recipe_item_ids = { 34413 },
            },
            product = { item_id = 34411, qty = 2 },
            materials = {
                { item_id = 34412, qty = 1 },
                { item_id = 17196, qty = 1 },
                { item_id = 17194, qty = 1 },
            },
            levels = { 325, 325, 325, 325 },
        },
    },
    [335] = {
        {
            spell_id = 38867,
            name = "Mok'Nathal Shortribs",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_48",
            source = {
                type = "Item",
                recipe_item_ids = { 31675 },
            },
            product = { item_id = 31672, qty = 1 },
            materials = {
                { item_id = 31670, qty = 1 },
            },
            levels = { 335, 355, 365, 375 },
        },
        {
            spell_id = 38868,
            name = "Crunchy Serpent",
            categories = { "Spell Damage", "Spirit" },
            icon = "inv_misc_food_88_ravagernuggets",
            source = {
                type = "Item",
                recipe_item_ids = { 31674 },
            },
            product = { item_id = 31673, qty = 1 },
            materials = {
                { item_id = 31671, qty = 1 },
            },
            levels = { 335, 355, 365, 375 },
        },
        {
            spell_id = 42296,
            name = "Stewed Trout",
            categories = { "Food" },
            icon = "inv_misc_food_64",
            source = {
                type = "Trainer",
                cost = 42000,
            },
            product = { item_id = 33048, qty = 1 },
            materials = {
                { item_id = 27422, qty = 1 },
                { item_id = 2593, qty = 1 },
                { item_id = 3713, qty = 1 },
            },
            levels = { 320, 335, 345, 355 },
        },
    },
    [350] = {
        {
            spell_id = 33296,
            name = "Spicy Crawdad",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_fish_16",
            source = {
                type = "Item",
                recipe_item_ids = { 27700 },
            },
            product = { item_id = 27667, qty = 1 },
            materials = {
                { item_id = 27439, qty = 1 },
            },
            levels = { 350, 370, 375, 380 },
        },
    },
    [375] = {
        {
            spell_id = 42302,
            name = "Fisherman's Feast",
            categories = { "Stamina", "Spirit" },
            icon = "inv_misc_food_88_ravagernuggets",
            source = {
                type = "Trainer",
                cost = 60000,
            },
            product = { item_id = 33052, qty = 6 },
            materials = {
                { item_id = 27515, qty = 1 },
                { item_id = 4539, qty = 5 },
                { item_id = 3713, qty = 5 },
            },
            levels = { 350, 375, 380, 385 },
        },
        {
            spell_id = 42305,
            name = "Hot Buttered Trout",
            categories = { "Food" },
            icon = "inv_misc_food_76",
            source = {
                type = "Trainer",
                cost = 60000,
            },
            product = { item_id = 33053, qty = 2 },
            materials = {
                { item_id = 27516, qty = 1 },
                { item_id = 3713, qty = 2 },
            },
            levels = { 350, 375, 380, 385 },
        },
    },
}

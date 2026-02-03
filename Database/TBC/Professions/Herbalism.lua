local _, TFG = ...

TFG.HERBALISM_TBC = {
    [1] = {
        {
            spell_id = 2366,
            name = "Herb Gathering (Apprentice)",
            icon = "spell_nature_naturetouchgrow",
            categories = { "Profession Training" },
            source = {
                type = "Trainer",
            },
        },
        {
            spell_id = 2383,
            name = "Find Herbs",
            icon = "inv_misc_flower_02",
            categories = { "Other" },
            source = {
                type = "Trainer",
            },
        },
        {
            item_id = 765,
            name = "Silverleaf",
            icon = "inv_misc_herb_10",
            categories = { "Gathered Herbs" },
            levels = { 1, 25, 62, 100 },
        },
        {
            item_id = 2447,
            name = "Peacebloom",
            icon = "inv_misc_flower_02",
            categories = { "Gathered Herbs" },
            levels = { 1, 25, 62, 100 },
        },
    },
    [15] = {
        {
            item_id = 2449,
            name = "Earthroot",
            icon = "inv_misc_herb_07",
            categories = { "Gathered Herbs" },
            levels = { 15, 40, 77, 115 },
        },
    },
    [50] = {
        {
            spell_id = 2368,
            name = "Herb Gathering (Journeyman)",
            icon = "spell_nature_naturetouchgrow",
            categories = { "Profession Training" },
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
        {
            item_id = 785,
            name = "Mageroyal",
            icon = "inv_jewelry_talisman_03",
            categories = { "Gathered Herbs" },
            levels = { 50, 75, 112, 150 },
        },
    },
    [70] = {
        {
            item_id = 2450,
            name = "Briarthorn",
            icon = "inv_misc_root_01",
            categories = { "Gathered Herbs" },
            levels = { 70, 95, 132, 170 },
        },
    },
    [85] = {
        {
            item_id = 3820,
            name = "Stranglekelp",
            icon = "inv_misc_herb_11",
            categories = { "Gathered Herbs" },
            levels = { 85, 110, 147, 185 },
        },
    },
    [100] = {
        {
            item_id = 2453,
            name = "Bruiseweed",
            icon = "inv_misc_herb_01",
            categories = { "Gathered Herbs" },
            levels = { 100, 125, 162, 200 },
        },
    },
    [115] = {
        {
            item_id = 3355,
            name = "Wild Steelbloom",
            icon = "inv_misc_flower_01",
            categories = { "Gathered Herbs" },
            levels = { 115, 140, 177, 215 },
        },
    },
    [120] = {
        {
            item_id = 3369,
            name = "Grave Moss",
            icon = "inv_misc_dust_02",
            categories = { "Gathered Herbs" },
            levels = { 120, 145, 182, 220 },
        },
    },
    [125] = {
        {
            spell_id = 3570,
            name = "Herb Gathering (Expert)",
            icon = "spell_nature_naturetouchgrow",
            categories = { "Profession Training" },
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            item_id = 3356,
            name = "Kingsblood",
            icon = "inv_misc_herb_03",
            categories = { "Gathered Herbs" },
            levels = { 125, 150, 187, 225 },
        },
    },
    [150] = {
        {
            item_id = 3357,
            name = "Liferoot",
            icon = "inv_misc_root_02",
            categories = { "Gathered Herbs" },
            levels = { 150, 175, 212, 250 },
        },
    },
    [160] = {
        {
            item_id = 3818,
            name = "Fadeleaf",
            icon = "inv_misc_herb_12",
            categories = { "Gathered Herbs" },
            levels = { 160, 185, 222, 260 },
        },
    },
    [170] = {
        {
            item_id = 3821,
            name = "Goldthorn",
            icon = "inv_misc_herb_15",
            categories = { "Gathered Herbs" },
            levels = { 170, 195, 232, 270 },
        },
    },
    [185] = {
        {
            item_id = 3358,
            name = "Khadgar's Whisker",
            icon = "inv_misc_herb_08",
            categories = { "Gathered Herbs" },
            levels = { 185, 210, 247, 285 },
        },
    },
    [195] = {
        {
            item_id = 3819,
            name = "Wintersbite",
            icon = "inv_misc_flower_03",
            categories = { "Gathered Herbs" },
            levels = { 195, 220, 257, 295 },
        },
    },
    [205] = {
        {
            item_id = 4625,
            name = "Firebloom",
            icon = "inv_misc_herb_19",
            categories = { "Gathered Herbs" },
            levels = { 205, 230, 267, 305 },
        },
    },
    [210] = {
        {
            item_id = 8831,
            name = "Purple Lotus",
            icon = "inv_misc_herb_17",
            categories = { "Gathered Herbs" },
            levels = { 210, 235, 272, 310 },
        },
    },
    [220] = {
        {
            item_id = 8836,
            name = "Arthas' Tears",
            icon = "inv_misc_herb_13",
            categories = { "Gathered Herbs" },
            levels = { 220, 245, 282, 320 },
        },
    },
    [225] = {
        {
            spell_id = 11993,
            name = "Herb Gathering (Artisan)",
            icon = "spell_nature_naturetouchgrow",
            categories = { "Profession Training" },
            source = {
                type = "Trainer",
                cost = 50000,
            },
        },
    },
    [230] = {
        {
            item_id = 8838,
            name = "Sungrass",
            icon = "inv_misc_herb_18",
            categories = { "Gathered Herbs" },
            levels = { 230, 255, 292, 330 },
        },
    },
    [235] = {
        {
            item_id = 8839,
            name = "Blindweed",
            icon = "inv_misc_herb_14",
            categories = { "Gathered Herbs" },
            levels = { 235, 260, 297, 335 },
        },
    },
    [245] = {
        {
            item_id = 8845,
            name = "Ghost Mushroom",
            icon = "inv_mushroom_08",
            categories = { "Gathered Herbs" },
            levels = { 245, 270, 307, 345 },
        },
    },
    [250] = {
        {
            item_id = 8846,
            name = "Gromsblood",
            icon = "inv_misc_herb_16",
            categories = { "Gathered Herbs" },
            levels = { 250, 275, 312, 350 },
        },
    },
    [260] = {
        {
            item_id = 13464,
            name = "Golden Sansam",
            icon = "inv_misc_herb_sansamroot",
            categories = { "Gathered Herbs" },
            levels = { 260, 285, 322, 360 },
        },
    },
    [270] = {
        {
            item_id = 13463,
            name = "Dreamfoil",
            icon = "inv_misc_herb_dreamfoil",
            categories = { "Gathered Herbs" },
            levels = { 270, 295, 332, 370 },
        },
    },
    [275] = {
        {
            spell_id = 28695,
            name = "Herb Gathering (Master)",
            icon = "spell_nature_naturetouchgrow",
            categories = { "Profession Training" },
            source = {
                type = "Trainer",
                cost = 100000,
            },
        },
    },
    [280] = {
        {
            item_id = 13465,
            name = "Mountain Silversage",
            icon = "inv_misc_herb_mountainsilversage",
            categories = { "Gathered Herbs" },
            levels = { 280, 305, 342, 380 },
        },
    },
    [290] = {
        {
            item_id = 13466,
            name = "Plaguebloom",
            icon = "inv_misc_herb_plaguebloom",
            categories = { "Gathered Herbs" },
            levels = { 290, 315, 352, 390 },
        },
        {
            item_id = 13467,
            name = "Icecap",
            icon = "inv_misc_herb_icecap",
            categories = { "Gathered Herbs" },
            levels = { 290, 315, 352, 390 },
        },
    },
    [300] = {
        {
            item_id = 13468,
            name = "Black Lotus",
            icon = "inv_misc_herb_blacklotus",
            categories = { "Gathered Herbs" },
            levels = { 300, 325, 362, 400 },
        },
        {
            item_id = 22785,
            name = "Felweed",
            icon = "inv_misc_herb_felweed",
            categories = { "Gathered Herbs" },
            levels = { 300, 325, 362, 400 },
        },
        {
            item_id = 22794,
            name = "Fel Lotus",
            icon = "inv_misc_herb_fellotus",
            categories = { "Gathered Herbs" },
            levels = { 300, 325, 362, 400 },
        },
    },
    [315] = {
        {
            item_id = 22786,
            name = "Dreaming Glory",
            icon = "inv_misc_herb_dreamingglory",
            categories = { "Gathered Herbs" },
            levels = { 315, 340, 377, 415 },
        },
    },
    [325] = {
        {
            item_id = 22787,
            name = "Ragveil",
            icon = "inv_misc_herb_ragveil",
            categories = { "Gathered Herbs" },
            levels = { 325, 350, 387, 425 },
        },
        {
            item_id = 22798,
            name = "Terocone",
            icon = "inv_misc_herb_terrocone",
            categories = { "Gathered Herbs" },
            levels = { 325, 350, 387, 425 },
        },
    },
    [340] = {
        {
            item_id = 22790,
            name = "Ancient Lichen",
            icon = "inv_misc_herb_ancientlichen",
            categories = { "Gathered Herbs" },
            levels = { 340, 365, 402, 440 },
        },
    },
    [350] = {
        {
            item_id = 22791,
            name = "Netherbloom",
            icon = "inv_misc_herb_netherbloom",
            categories = { "Gathered Herbs" },
            levels = { 350, 375, 412, 450 },
        },
    },
    [365] = {
        {
            item_id = 22797,
            name = "Nightmare Vine",
            icon = "inv_misc_herb_nightmarevine",
            categories = { "Gathered Herbs" },
            levels = { 365, 390, 427, 465 },
        },
    },
    [375] = {
        {
            item_id = 22793,
            name = "Mana Thistle",
            icon = "inv_misc_herb_manathistle",
            categories = { "Gathered Herbs" },
            levels = { 375, 400, 437, 475 },
        },
    },
}

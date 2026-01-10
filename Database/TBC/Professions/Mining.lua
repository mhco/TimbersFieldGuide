local _, TFG = ...

TFG.MINING_TBC = {
    [1] = {
        {
            ["id"] = 2575,
            ["name"] = "Mining", -- Apprentice
            ["texture"] = "Interface/ICONS/trade_mining",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10,
            },
        },
        {
            ["id"] = 2580,
            ["name"] = "Find Minerals",
            ["texture"] = "Interface/ICONS/spell_nature_earthquake",
        },
        {
            ["id"] = 2656,
            ["name"] = "Smelting",
            ["texture"] = "Interface/ICONS/spell_fire_flameblades",
        },
        {
            ["item_id"] = 2770,
            ["name"] = "Copper Vein",
            ["texture"] = "Interface/ICONS/inv_ore_copper_01",
        },
    },
    [25] = {
        {
            ["id"] = 2657,
            ["name"] = "Smelt Copper",
            ["texture"] = "Interface/ICONS/inv_ingot_02",
        },
    },
    [50] = {
        {
            ["id"] = 2576,
            ["name"] = "Mining", -- Journeyman
            ["texture"] = "Interface/ICONS/trade_mining",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
        },
    },
    [65] = {
        {
            ["item_id"] = 2771,
            ["name"] = "Tin Vein",
            ["texture"] = "Interface/ICONS/inv_ore_tin_01",
        },
        {
            ["id"] = 2659,
            ["name"] = "Smelt Bronze",
            ["texture"] = "Interface/ICONS/inv_ingot_bronze",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 200,
            },
        },
        {
            ["id"] = 3304,
            ["name"] = "Smelt Tin",
            ["texture"] = "Interface/ICONS/inv_ingot_05",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50,
            },
        },
    },
    [75] = {
        {
            ["item_id"] = 2775,
            ["name"] = "Silver Vein",
            ["texture"] = "Interface/ICONS/inv_stone_16",
        },
        {
            ["id"] = 2658,
            ["name"] = "Smelt Silver",
            ["texture"] = "Interface/ICONS/inv_ingot_01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 200,
            },
        },
    },
    [125] = {
        {
            ["id"] = 3564,
            ["name"] = "Mining", -- Expert
            ["texture"] = "Interface/ICONS/trade_mining",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
        },
        {
            ["item_id"] = 2772,
            ["name"] = "Iron Deposit",
            ["texture"] = "Interface/ICONS/inv_ore_iron_01",
        },
        {
            ["id"] = 3307,
            ["name"] = "Smelt Iron",
            ["texture"] = "Interface/ICONS/inv_ingot_iron",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
        },
    },
    [155] = {
        {
            ["item_id"] = 2776,
            ["name"] = "Gold Vein",
            ["texture"] = "Interface/ICONS/inv_ore_copper_01",
        },
        {
            ["id"] = 3308,
            ["name"] = "Smelt Gold",
            ["texture"] = "Interface/ICONS/inv_ingot_03",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 2500,
            },
        },
    },
    [165] = {
        {
            ["id"] = 3569,
            ["name"] = "Smelt Steel",
            ["texture"] = "Interface/ICONS/inv_ingot_steel",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 2500,
            },
        },
    },
    [175] = {
        {
            ["item_id"] = 3858,
            ["name"] = "Mithril Deposit",
            ["texture"] = "Interface/ICONS/inv_ore_mithril_02",
        },
        {
            ["id"] = 10097,
            ["name"] = "Smelt Mithril",
            ["texture"] = "Interface/ICONS/inv_ingot_06",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 5000,
            },
        },
    },
    [200] = {
        {
            ["id"] = 10248,
            ["name"] = "Mining", -- Artisan
            ["texture"] = "Interface/ICONS/trade_mining",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50000,
            },
        },
    },
    [230] = {
        {
            ["item_id"] = 11370,
            ["name"] = "Dark Iron Deposit",
            ["texture"] = "Interface/ICONS/inv_ore_mithril_01",
        },
        {
            ["id"] = 14891,
            ["name"] = "Smelt Dark Iron",
            ["texture"] = "Interface/ICONS/inv_ingot_mithril",
        },
        {
            ["item_id"] = 7911,
            ["name"] = "Truesilver Deposit",
            ["texture"] = "Interface/ICONS/inv_ore_truesilver_01",
        },
        {
            ["id"] = 10098,
            ["name"] = "Smelt Truesilver",
            ["texture"] = "Interface/ICONS/inv_ingot_08",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
        },
    },
    [245] = {
        {
            ["item_id"] = 10620,
            ["name"] = "Small Thorium Vein",
            ["texture"] = "Interface/ICONS/inv_ore_thorium_02",
        },
    },
    [250] = {
        {
            ["id"] = 16153,
            ["name"] = "Smelt Thorium",
            ["texture"] = "Interface/ICONS/inv_ingot_07",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 20000,
            },
        },
    },
    [275] = {
        {
            ["id"] = 29354,
            ["name"] = "Mining", -- Master
            ["texture"] = "Interface/ICONS/trade_mining",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100000,
            },
        },
        {
            ["item_id"] = 10620,
            ["name"] = "Rich Thorium Vein",
            ["texture"] = "Interface/ICONS/inv_ore_thorium_02",
        },
    },
    [300] = {
        {
            ["item_id"] = 23424,
            ["name"] = "Fel Iron Deposit",
            ["texture"] = "Interface/ICONS/inv_ore_feliron",
        },
        {
            ["id"] = 29356,
            ["name"] = "Smelt Fel Iron",
            ["texture"] = "Interface/ICONS/inv_ingot_feliron",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 40000,
            },
        },
        {
            ["id"] = 35750,
            ["name"] = "Earth Shatter",
            ["texture"] = "Interface/ICONS/inv_elemental_mote_earth01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
        },
        {
            ["id"] = 35751,
            ["name"] = "Fire Sunder",
            ["texture"] = "Interface/ICONS/inv_elemental_mote_fire01",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
        },
    },
    [305] = {
        {
            ["item_id"] = 22203,
            ["name"] = "Obsidian Chunk",
            ["texture"] = "Interface/ICONS/inv_stone_15",
        },
    },
    [325] = {
        {
            ["item_id"] = 23425,
            ["name"] = "Adamantite Deposit",
            ["texture"] = "Interface/ICONS/inv_ore_adamantium",
        },
        {
            ["id"] = 29358,
            ["name"] = "Smelt Adamantite",
            ["texture"] = "Interface/ICONS/inv_ingot_10",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 40000,
            },
        },
    },
    [350] = {
        {
            ["item_id"] = 23425,
            ["name"] = "Rich Adamantite Deposit",
            ["texture"] = "Interface/ICONS/inv_ore_adamantium",
        },
        {
            ["id"] = 29360,
            ["name"] = "Smelt Felsteel",
            ["texture"] = "Interface/ICONS/inv_ingot_felsteel",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 40000,
            },
        },
        {
            ["id"] = 29359,
            ["name"] = "Smelt Eternium",
            ["texture"] = "Interface/ICONS/inv_ingot_11",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 40000,
            },
        },
        {
            ["id"] = 22967,
            ["name"] = "Smelt Elementium",
            ["texture"] = "Interface/ICONS/inv_ingot_thorium",
        },
    },
    [375] = {
        {
            ["item_id"] = 23426,
            ["name"] = "Khorium Vein",
            ["texture"] = "Interface/ICONS/inv_ore_khorium",
        },
        {
            ["id"] = 29361,
            ["name"] = "Smelt Khorium",
            ["texture"] = "Interface/ICONS/inv_ingot_09",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100000,
            },
            ["product"] = { ["item_id"] = 23449 },
            ["materials"] = {
                { ["item_id"] = 23426, ["quantity"] = 2 }, -- True Iron Ore
            },
        },
        {
            ["id"] = 29686,
            ["name"] = "Smelt Hardened Adamantite",
            ["texture"] = "Interface/ICONS/inv_ingot_adamantite",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100000,
            },
        },
        {
            ["id"] = 46353,
            ["name"] = "Smelt Hardened Khorium",
            ["texture"] = "Interface/ICONS/inv_ingot_thorium",
        },
    },
}

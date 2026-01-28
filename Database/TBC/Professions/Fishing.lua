local _, TFG = ...

-- ==========================================================================
-- SKILL TEMPLATE
-- ==========================================================================
--[[
{
    ["id"] = 42736,
    ["name"] = "Flask of Chromatic Wonder",
    ["category"] = "Flasks",
    ["texture"] = "Interface/ICONS/inv_potion_48",
    ["source"] = {
        ["type"] = "Item", -- Trainer, Item, or Discovery
        ["id"] = 33209, -- Only needed for items that teach the recipe
        ["cost"] = 10, -- Only needed for recipes from trainers or items
        ["location"] = "The Violet Eye - Honored", -- Optional
    },
    ["product"] = { ["itemId"] = 2454, ["quantity"] = 5 },
    ["materials"] = {
        { ["name"] = "Dreaming Glory", ["itemId"] = 22786, ["quantity"] = 7 },
        { ["name"] = "Netherbloom", ["itemId"] = 22791, ["quantity"] = 3 },
        { ["name"] = "Fel Lotus", ["itemId"] = 22794, ["quantity"] = 1 },
        { ["name"] = "Imbued Vial", ["itemId"] = 18256, ["quantity"] = 1 },
    },
    ["levels"] = { 360, 360, 370, 380 },
},
--]]

-- ==========================================================================
-- SKILLS
-- ==========================================================================
TFG.FISHING_TBC = {
    [1] = {
        {
            ["id"] = 7620,
            ["name"] = "Fishing", -- Apprentice
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_fishing",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 100,
            },
        },
    },
    [50] = {
        {
            ["id"] = 7731,
            ["name"] = "Fishing", -- Journeyman
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_fishing",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 500,
            },
        },
    },
    [100] = {
        {
            ["id"] = 43308,
            ["name"] = "Find Fish",
            ["category"] = "Other",
            ["texture"] = "Interface/ICONS/inv_misc_fish_02",
        },
    },
    [125] = {
        {
            ["id"] = 7732,
            ["name"] = "Fishing", -- Expert
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_fishing",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 10000,
            },
        },
    },
    [225] = {
        {
            ["id"] = 18248,
            ["name"] = "Fishing", -- Artisan
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_fishing",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 0,
            },
        },
    },
    [275] = {
        {
            ["id"] = 33095,
            ["name"] = "Fishing", -- Master
            ["category"] = "Profession Training",
            ["texture"] = "Interface/ICONS/trade_fishing",
            ["source"] = {
                ["type"] = "Trainer",
                ["cost"] = 50000,
            },
        },
    },
}

local _, TFG = ...

TFG.FISHING_TBC = {
    [1] = {
        {
            spell_id = 7620,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            item_id = 6256,
            name = "Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_02",
            source = {
                type = "Vendor",
                cost = 24,
            },
        },
        {
            item_id = 12225,
            name = "Blump Family Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_02",
            source = {
                type = "Quest",
                quest_ids = { 1141 },
                location = "Gubber Blump, Auberdine, Darkshore",
            },
        },
        {
            item_id = 19972,
            name = "Lucky Fishing Hat",
            categories = { "Gear" },
            icon = "inv_helmet_31",
            source = {
                type = "Quest",
                quest_ids = { 8221 },
                location = "Stranglethorn Fishing Extravaganza, Stranglethorn Vale",
            },
        },
        {
            item_id = 19969,
            name = "Nat Pagle's Extreme Anglin' Boots",
            categories = { "Gear" },
            icon = "inv_boots_09",
            source = {
                type = "Quest",
                quest_ids = { 8225 },
                location = "Stranglethorn Fishing Extravaganza, Stranglethorn Vale",
            },
        },
    },
    [10] = {
        {
            item_id = 6365,
            name = "Strong Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_02",
            source = {
                type = "Vendor",
                cost = 902,
            },
        },
    },
    [50] = {
        {
            spell_id = 7731,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
        {
            item_id = 6366,
            name = "Darkwood Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_02",
            source = {
                type = "Item",
                location = "Fishing in inland lakes and rivers in certain low-level zones like Ashenvale and Hillsbrad Foothills",
            },
        },
    },
    [100] = {
        {
            spell_id = 43308,
            name = "Find Fish",
            categories = { "Other" },
            icon = "inv_misc_fish_02",
            source = {
                type = "Trainer",
            },
        },
        {
            item_id = 6367,
            name = "Big Iron Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_01",
            source = {
                type = "Item",
                location = "Shellfish traps off the Southwest coast of Desolace",
            },
        },
        {
            item_id = 19022,
            name = "Nat Pagle's Extreme Angler FC-5000",
            categories = { "Gear" },
            icon = "inv_fishingpole_01",
            source = {
                type = "Quest",
                quest_ids = { 7815 },
                location = "Katoom the Angler, Eastern coast of The Hinterlands (Horde only)",
            },
        },
    },
    [125] = {
        {
            spell_id = 7732,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
    },
    [200] = {
        {
            item_id = 19022,
            name = "Seth's Graphite Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_01",
            source = {
                type = "Quest",
                quest_ids = { 10037 },
                location = "Seth, Shattrath City",
            },
        },
    },
    [225] = {
        {
            spell_id = 18248,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            source = {
                type = "Trainer",
            },
        },
    },
    [275] = {
        {
            spell_id = 33095,
            name = "Fishing",
            categories = { "Profession Training" },
            icon = "trade_fishing",
            source = {
                type = "Trainer",
                cost = 50000,
            },
        },
    },
    [300] = {
        {
            item_id = 19970,
            name = "Arcanite Fishing Pole",
            categories = { "Gear" },
            icon = "inv_fishingpole_01",
            source = {
                type = "Quest",
                quest_ids = { 10037 },
                location = "Stranglethorn Fishing Extravaganza, Stranglethorn Vale",
            },
        },
    },
}

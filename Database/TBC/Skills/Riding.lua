local _, TFG = ...

TFG.RIDING_TBC = {
    [30] = {
        {
            ["id"] = 33388,
            ["name"] = "Riding",
            ["rank"] = 1,
            ["texture"] = "Interface/ICONS/spell_nature_swiftness",
            ["source"] = {
                ["type"] = "trainer",
                ["cost"] = 350000,
            },
        }
    },
    [60] = {
        {
            ["id"] = 33391,
            ["name"] = "Riding",
            ["rank"] = 2,
            ["texture"] = "Interface/ICONS/spell_nature_swiftness",
            ["source"] = {
                ["type"] = "trainer",
                ["cost"] = 6000000,
            },
        }
    },
    [70] = {
        {
            ["id"] = 34090,
            ["name"] = "Riding",
            ["rank"] = 3,
            ["texture"] = "Interface/ICONS/spell_nature_swiftness",
            ["source"] = {
                ["type"] = "trainer",
                ["cost"] = 8000000,
            },
        },
        {
            ["id"] = 34091,
            ["name"] = "Riding",
            ["rank"] = 4,
            ["texture"] = "Interface/ICONS/spell_nature_swiftness",
            ["source"] = {
                ["type"] = "trainer",
                ["cost"] = 50000000,
            },
        }
    }
}

-- Metadata for skill-view rendering: group entries by the numeric table keys (training level thresholds).
TFG.RIDING_TBC.__CONFIG = {
    mode = "level",       -- treat this file as level-grouped skill view
}

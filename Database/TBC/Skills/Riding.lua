local _, TFG = ...

TFG.RIDING_TBC = {
    [30] = {
        {
            spell_id = 33388,
            name = "Riding",
            rank = 1,
            icon = "spell_nature_swiftness",
            source = {
                type = "trainer",
                cost = 350000,
            },
        }
    },
    [60] = {
        {
            spell_id = 33391,
            name = "Riding",
            rank = 2,
            icon = "spell_nature_swiftness",
            source = {
                type = "trainer",
                cost = 6000000,
            },
        }
    },
    [70] = {
        {
            spell_id = 34090,
            name = "Riding",
            rank = 3,
            icon = "spell_nature_swiftness",
            source = {
                type = "trainer",
                cost = 8000000,
            },
        },
        {
            spell_id = 34091,
            name = "Riding",
            rank = 4,
            icon = "spell_nature_swiftness",
            source = {
                type = "trainer",
                cost = 50000000,
            },
        }
    }
}

-- Metadata for skill-view rendering: group entries by the numeric table keys (training level thresholds).
TFG.RIDING_TBC.__CONFIG = {
    mode = "level",       -- treat this file as level-grouped skill view
}

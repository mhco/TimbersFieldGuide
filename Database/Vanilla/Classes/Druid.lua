local _, TFG = ...

-- ==========================================================================
-- ABILITY TEMPLATE
-- ==========================================================================
--[[
{
    [1] = [
        {
            spell_id = 3561,
            name = "Teleport: Stormwind",
            rank = 1,
            icon = "spell_arcane_teleportstormwind",
            type = "Ability", -- Ability, Talent
            categories = { "Teleport", },
            group = nil,
            faction = "Alliance", -- Horde, Alliance, empty for both
            races = {},
            source = {
                type = "Trainer", -- Trainer, Item, Quest
                cost = 2000,
                recipe_item_ids = {},
                quest_ids = {},
                location = "Portal Trainers in major cities",
            },
            phase = 1,
        }
    ]
}
--]]

-- ==========================================================================
-- ABILITIES
-- ==========================================================================
TFG.DRUID_VANILLA = {
    [2] = {
        {
            spell_id = 1126,
            name = "Mark of the Wild",
            rank = "1",
            icon = "spell_nature_regeneration",
            source = {
                type = "Trainer",
                cost = 10,
            },
        },
    },
    [4] = {
        {
            spell_id = 8921,
            name = "Moonfire",
            rank = "1",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 774,
            name = "Rejuvenation",
            rank = "1",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
    },
    [6] = {
        {
            spell_id = 467,
            name = "Thorns",
            rank = "1",
            icon = "spell_nature_thorns",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 5177,
            name = "Wrath",
            rank = "2",
            icon = "spell_nature_abolishmagic",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
    },
    [8] = {
        {
            spell_id = 339,
            name = "Entangling Roots",
            rank = "1",
            icon = "spell_nature_stranglevines",
            source = {
                type = "Trainer",
                cost = 200,
            },
        },
        {
            spell_id = 5186,
            name = "Healing Touch",
            rank = "2",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 200,
            },
        },
    },
    [10] = {
        {
            spell_id = 8924,
            name = "Moonfire",
            rank = "2",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 18960,
            name = "Teleport: Moonglade",
            rank = "1",
            icon = "spell_arcane_teleportmoonglade",
        },
        {
            spell_id = 5487,
            name = "Bear Form",
            rank = "1",
            icon = "ability_racial_bearform",
            group = "bear_form",
        },
        {
            spell_id = 99,
            name = "Demoralizing Roar",
            rank = "1",
            icon = "ability_druid_demoralizingroar",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 6795,
            name = "Growl",
            rank = "1",
            icon = "ability_physical_taunt",
        },
        {
            spell_id = 6807,
            name = "Maul",
            rank = "1",
            icon = "ability_druid_maul",
        },
        {
            spell_id = 5232,
            name = "Mark of the Wild",
            rank = "2",
            icon = "spell_nature_regeneration",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 1058,
            name = "Rejuvenation",
            rank = "2",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
    },
    [12] = {
        {
            spell_id = 5229,
            name = "Enrage",
            rank = "1",
            icon = "ability_druid_enrage",
            source = {
                type = "Trainer",
                cost = 800,
            },
        },
        {
            spell_id = 8936,
            name = "Regrowth",
            rank = "1",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 800,
            },
        },
    },
    [14] = {
        {
            spell_id = 782,
            name = "Thorns",
            rank = "2",
            icon = "spell_nature_thorns",
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 5178,
            name = "Wrath",
            rank = "3",
            icon = "spell_nature_abolishmagic",
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 5211,
            name = "Bash",
            rank = "1",
            icon = "ability_druid_bash",
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 8946,
            name = "Cure Poison",
            rank = "1",
            icon = "spell_nature_nullifypoison",
        },
        {
            spell_id = 5187,
            name = "Healing Touch",
            rank = "3",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
    },
    [16] = {
        {
            spell_id = 8925,
            name = "Moonfire",
            rank = "3",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 1800,
            },
        },
        {
            spell_id = 1066,
            name = "Aquatic Form",
            rank = "1",
            icon = "ability_druid_aquaticform",
        },
        {
            spell_id = 779,
            name = "Swipe",
            rank = "1",
            icon = "inv_misc_monsterclaw_03",
            source = {
                type = "Trainer",
                cost = 1800,
            },
        },
        {
            spell_id = 1430,
            name = "Rejuvenation",
            rank = "3",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 1800,
            },
        },
    },
    [18] = {
        {
            spell_id = 1062,
            name = "Entangling Roots",
            rank = "2",
            icon = "spell_nature_stranglevines",
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
        {
            spell_id = 770,
            name = "Faerie Fire",
            rank = "1",
            icon = "spell_nature_faeriefire",
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
        {
            spell_id = 2637,
            name = "Hibernate",
            rank = "1",
            icon = "spell_nature_sleep",
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
        {
            spell_id = 16810,
            name = "Nature's Grasp",
            rank = "2",
            icon = "spell_nature_natureswrath",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 95,
            },
        },
        {
            spell_id = 6808,
            name = "Maul",
            rank = "2",
            icon = "ability_druid_maul",
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
        {
            spell_id = 8938,
            name = "Regrowth",
            rank = "2",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
    },
    [20] = {
        {
            spell_id = 2912,
            name = "Starfire",
            rank = "1",
            icon = "spell_arcane_starfire",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 768,
            name = "Cat Form",
            rank = "1",
            icon = "ability_druid_catform",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 1082,
            name = "Claw",
            rank = "1",
            icon = "ability_druid_rake",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 1735,
            name = "Demoralizing Roar",
            rank = "2",
            icon = "ability_druid_demoralizingroar",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 5215,
            name = "Prowl",
            rank = "1",
            icon = "ability_ambush",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 1079,
            name = "Rip",
            rank = "1",
            icon = "ability_ghoulfrenzy",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 5188,
            name = "Healing Touch",
            rank = "4",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 6756,
            name = "Mark of the Wild",
            rank = "3",
            icon = "spell_nature_regeneration",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 20484,
            name = "Rebirth",
            rank = "1",
            icon = "spell_nature_reincarnation",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
    },
    [22] = {
        {
            spell_id = 8926,
            name = "Moonfire",
            rank = "4",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 2908,
            name = "Soothe Animal",
            rank = "1",
            icon = "ability_hunter_beastsoothe",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 5179,
            name = "Wrath",
            rank = "4",
            icon = "spell_nature_abolishmagic",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 5221,
            name = "Shred",
            rank = "1",
            icon = "spell_shadow_vampiricaura",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 2090,
            name = "Rejuvenation",
            rank = "4",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
    },
    [24] = {
        {
            spell_id = 1075,
            name = "Thorns",
            rank = "3",
            icon = "spell_nature_thorns",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 1822,
            name = "Rake",
            rank = "1",
            icon = "ability_druid_disembowel",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 780,
            name = "Swipe",
            rank = "2",
            icon = "inv_misc_monsterclaw_03",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 5217,
            name = "Tiger's Fury",
            rank = "1",
            icon = "ability_mount_jungletiger",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 8939,
            name = "Regrowth",
            rank = "3",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 2782,
            name = "Remove Curse",
            rank = "1",
            icon = "spell_holy_removecurse",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
    },
    [26] = {
        {
            spell_id = 8949,
            name = "Starfire",
            rank = "2",
            icon = "spell_arcane_starfire",
            source = {
                type = "Trainer",
                cost = 4500,
            },
        },
        {
            spell_id = 1850,
            name = "Dash",
            rank = "1",
            icon = "ability_druid_dash",
            source = {
                type = "Trainer",
                cost = 4500,
            },
        },
        {
            spell_id = 6809,
            name = "Maul",
            rank = "3",
            icon = "ability_druid_maul",
            source = {
                type = "Trainer",
                cost = 4500,
            },
        },
        {
            spell_id = 2893,
            name = "Abolish Poison",
            rank = "1",
            icon = "spell_nature_nullifypoison_02",
            source = {
                type = "Trainer",
                cost = 4500,
            },
        },
        {
            spell_id = 5189,
            name = "Healing Touch",
            rank = "5",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 4500,
            },
        },
    },
    [28] = {
        {
            spell_id = 5195,
            name = "Entangling Roots",
            rank = "3",
            icon = "spell_nature_stranglevines",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 8927,
            name = "Moonfire",
            rank = "5",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 16811,
            name = "Nature's Grasp",
            rank = "3",
            icon = "spell_nature_natureswrath",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 250,
            },
        },
        {
            spell_id = 5209,
            name = "Challenging Roar",
            rank = "1",
            icon = "ability_druid_challangingroar",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 3029,
            name = "Claw",
            rank = "2",
            icon = "ability_druid_rake",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 8998,
            name = "Cower",
            rank = "1",
            icon = "ability_druid_cower",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 9492,
            name = "Rip",
            rank = "2",
            icon = "ability_ghoulfrenzy",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 2091,
            name = "Rejuvenation",
            rank = "5",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
    },
    [30] = {
        {
            spell_id = 778,
            name = "Faerie Fire",
            rank = "2",
            icon = "spell_nature_faeriefire",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 5180,
            name = "Wrath",
            rank = "5",
            icon = "spell_nature_abolishmagic",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 6798,
            name = "Bash",
            rank = "2",
            icon = "ability_druid_bash",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 17390,
            name = "Faerie Fire (Feral)",
            rank = "2",
            icon = "spell_nature_faeriefire",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 6800,
            name = "Shred",
            rank = "2",
            icon = "spell_shadow_vampiricaura",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 783,
            name = "Travel Form",
            rank = "1",
            icon = "ability_druid_travelform",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 24974,
            name = "Insect Swarm",
            rank = "2",
            icon = "spell_nature_insectswarm",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 5234,
            name = "Mark of the Wild",
            rank = "4",
            icon = "spell_nature_regeneration",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 20739,
            name = "Rebirth",
            rank = "2",
            icon = "spell_nature_reincarnation",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 8940,
            name = "Regrowth",
            rank = "4",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 740,
            name = "Tranquility",
            rank = "1",
            icon = "spell_nature_tranquility",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
    },
    [32] = {
        {
            spell_id = 9490,
            name = "Demoralizing Roar",
            rank = "3",
            icon = "ability_druid_demoralizingroar",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 22568,
            name = "Ferocious Bite",
            rank = "1",
            icon = "ability_druid_ferociousbite",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 6785,
            name = "Ravage",
            rank = "1",
            icon = "ability_druid_ravage",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 5225,
            name = "Track Humanoids",
            rank = "1",
            icon = "ability_tracking",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 6778,
            name = "Healing Touch",
            rank = "6",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
    },
    [34] = {
        {
            spell_id = 8928,
            name = "Moonfire",
            rank = "6",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 8950,
            name = "Starfire",
            rank = "3",
            icon = "spell_arcane_starfire",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 8914,
            name = "Thorns",
            rank = "4",
            icon = "spell_nature_thorns",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 8972,
            name = "Maul",
            rank = "4",
            icon = "ability_druid_maul",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 1823,
            name = "Rake",
            rank = "2",
            icon = "ability_druid_disembowel",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 769,
            name = "Swipe",
            rank = "3",
            icon = "inv_misc_monsterclaw_03",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 3627,
            name = "Rejuvenation",
            rank = "6",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
    },
    [36] = {
        {
            spell_id = 22842,
            name = "Frenzied Regeneration",
            rank = "1",
            icon = "ability_bullrush",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 9005,
            name = "Pounce",
            rank = "1",
            icon = "ability_druid_supriseattack",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 9493,
            name = "Rip",
            rank = "3",
            icon = "ability_ghoulfrenzy",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 6793,
            name = "Tiger's Fury",
            rank = "2",
            icon = "ability_mount_jungletiger",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 8941,
            name = "Regrowth",
            rank = "5",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
    },
    [38] = {
        {
            spell_id = 5196,
            name = "Entangling Roots",
            rank = "4",
            icon = "spell_nature_stranglevines",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 18657,
            name = "Hibernate",
            rank = "2",
            icon = "spell_nature_sleep",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 16812,
            name = "Nature's Grasp",
            rank = "4",
            icon = "spell_nature_natureswrath",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 600,
            },
        },
        {
            spell_id = 8955,
            name = "Soothe Animal",
            rank = "2",
            icon = "ability_hunter_beastsoothe",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 6780,
            name = "Wrath",
            rank = "6",
            icon = "spell_nature_abolishmagic",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 5201,
            name = "Claw",
            rank = "3",
            icon = "ability_druid_rake",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 8992,
            name = "Shred",
            rank = "3",
            icon = "spell_shadow_vampiricaura",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 8903,
            name = "Healing Touch",
            rank = "7",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
    },
    [40] = {
        {
            spell_id = 16914,
            name = "Hurricane",
            rank = "1",
            icon = "spell_nature_cyclone",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 8929,
            name = "Moonfire",
            rank = "7",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 9000,
            name = "Cower",
            rank = "2",
            icon = "ability_druid_cower",
        },
        {
            spell_id = 9634,
            name = "Dire Bear Form",
            rank = "1",
            icon = "ability_racial_bearform",
            group = "bear_form",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 20719,
            name = "Feline Grace",
            rank = "1",
            icon = "inv_feather_01",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 22827,
            name = "Ferocious Bite",
            rank = "2",
            icon = "ability_druid_ferociousbite",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 6783,
            name = "Prowl",
            rank = "2",
            icon = "ability_ambush",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 29166,
            name = "Innervate",
            rank = "1",
            icon = "spell_nature_lightning",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 24975,
            name = "Insect Swarm",
            rank = "3",
            icon = "spell_nature_insectswarm",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 700,
            },
        },
        {
            spell_id = 8907,
            name = "Mark of the Wild",
            rank = "5",
            icon = "spell_nature_regeneration",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 20742,
            name = "Rebirth",
            rank = "3",
            icon = "spell_nature_reincarnation",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 8910,
            name = "Rejuvenation",
            rank = "7",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 8918,
            name = "Tranquility",
            rank = "2",
            icon = "spell_nature_tranquility",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
    },
    [42] = {
        {
            spell_id = 9749,
            name = "Faerie Fire",
            rank = "3",
            icon = "spell_nature_faeriefire",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
        {
            spell_id = 8951,
            name = "Starfire",
            rank = "4",
            icon = "spell_arcane_starfire",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
        {
            spell_id = 9747,
            name = "Demoralizing Roar",
            rank = "4",
            icon = "ability_druid_demoralizingroar",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
        {
            spell_id = 17391,
            name = "Faerie Fire (Feral)",
            rank = "3",
            icon = "spell_nature_faeriefire",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 800,
            },
        },
        {
            spell_id = 9745,
            name = "Maul",
            rank = "5",
            icon = "ability_druid_maul",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
        {
            spell_id = 6787,
            name = "Ravage",
            rank = "2",
            icon = "ability_druid_ravage",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
        {
            spell_id = 9750,
            name = "Regrowth",
            rank = "6",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
    },
    [44] = {
        {
            spell_id = 22812,
            name = "Barkskin",
            rank = "1",
            icon = "spell_nature_stoneclawtotem",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 9756,
            name = "Thorns",
            rank = "5",
            icon = "spell_nature_thorns",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 1824,
            name = "Rake",
            rank = "3",
            icon = "ability_druid_disembowel",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 9752,
            name = "Rip",
            rank = "4",
            icon = "ability_ghoulfrenzy",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 9754,
            name = "Swipe",
            rank = "4",
            icon = "inv_misc_monsterclaw_03",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 9758,
            name = "Healing Touch",
            rank = "8",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
    },
    [46] = {
        {
            spell_id = 9833,
            name = "Moonfire",
            rank = "8",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 8905,
            name = "Wrath",
            rank = "7",
            icon = "spell_nature_abolishmagic",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 8983,
            name = "Bash",
            rank = "3",
            icon = "ability_druid_bash",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 9821,
            name = "Dash",
            rank = "2",
            icon = "ability_druid_dash",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 22895,
            name = "Frenzied Regeneration",
            rank = "2",
            icon = "ability_bullrush",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 9823,
            name = "Pounce",
            rank = "2",
            icon = "ability_druid_supriseattack",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 9829,
            name = "Shred",
            rank = "4",
            icon = "spell_shadow_vampiricaura",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 9839,
            name = "Rejuvenation",
            rank = "8",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
    },
    [48] = {
        {
            spell_id = 9852,
            name = "Entangling Roots",
            rank = "5",
            icon = "spell_nature_stranglevines",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 16813,
            name = "Nature's Grasp",
            rank = "5",
            icon = "spell_nature_natureswrath",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1100,
            },
        },
        {
            spell_id = 9849,
            name = "Claw",
            rank = "4",
            icon = "ability_druid_rake",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 22828,
            name = "Ferocious Bite",
            rank = "3",
            icon = "ability_druid_ferociousbite",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 9845,
            name = "Tiger's Fury",
            rank = "3",
            icon = "ability_mount_jungletiger",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 9856,
            name = "Regrowth",
            rank = "7",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
    },
    [50] = {
        {
            spell_id = 17401,
            name = "Hurricane",
            rank = "2",
            icon = "spell_nature_cyclone",
            source = {
                type = "Trainer",
                cost = 23000,
            },
        },
        {
            spell_id = 9875,
            name = "Starfire",
            rank = "5",
            icon = "spell_arcane_starfire",
            source = {
                type = "Trainer",
                cost = 23000,
            },
        },
        {
            spell_id = 9880,
            name = "Maul",
            rank = "6",
            icon = "ability_druid_maul",
            source = {
                type = "Trainer",
                cost = 23000,
            },
        },
        {
            spell_id = 9866,
            name = "Ravage",
            rank = "3",
            icon = "ability_druid_ravage",
            source = {
                type = "Trainer",
                cost = 23000,
            },
        },
        {
            spell_id = 9888,
            name = "Healing Touch",
            rank = "9",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 23000,
            },
        },
        {
            spell_id = 24976,
            name = "Insect Swarm",
            rank = "4",
            icon = "spell_nature_insectswarm",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1150,
            },
        },
        {
            spell_id = 9884,
            name = "Mark of the Wild",
            rank = "6",
            icon = "spell_nature_regeneration",
            source = {
                type = "Trainer",
                cost = 23000,
            },
        },
        {
            spell_id = 20747,
            name = "Rebirth",
            rank = "4",
            icon = "spell_nature_reincarnation",
            source = {
                type = "Trainer",
                cost = 23000,
            },
        },
        {
            spell_id = 9862,
            name = "Tranquility",
            rank = "3",
            icon = "spell_nature_tranquility",
            source = {
                type = "Trainer",
                cost = 23000,
            },
        },
    },
    [52] = {
        {
            spell_id = 9834,
            name = "Moonfire",
            rank = "9",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 9892,
            name = "Cower",
            rank = "3",
            icon = "ability_druid_cower",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 9898,
            name = "Demoralizing Roar",
            rank = "5",
            icon = "ability_druid_demoralizingroar",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 9894,
            name = "Rip",
            rank = "5",
            icon = "ability_ghoulfrenzy",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 9840,
            name = "Rejuvenation",
            rank = "9",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
    },
    [54] = {
        {
            spell_id = 9907,
            name = "Faerie Fire",
            rank = "4",
            icon = "spell_nature_faeriefire",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 9901,
            name = "Soothe Animal",
            rank = "3",
            icon = "ability_hunter_beastsoothe",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 9910,
            name = "Thorns",
            rank = "6",
            icon = "spell_nature_thorns",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 9912,
            name = "Wrath",
            rank = "8",
            icon = "spell_nature_abolishmagic",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 17392,
            name = "Faerie Fire (Feral)",
            rank = "4",
            icon = "spell_nature_faeriefire",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1400,
            },
        },
        {
            spell_id = 9904,
            name = "Rake",
            rank = "4",
            icon = "ability_druid_disembowel",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 9830,
            name = "Shred",
            rank = "5",
            icon = "spell_shadow_vampiricaura",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 9908,
            name = "Swipe",
            rank = "5",
            icon = "inv_misc_monsterclaw_03",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 9857,
            name = "Regrowth",
            rank = "8",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
    },
    [56] = {
        {
            spell_id = 22829,
            name = "Ferocious Bite",
            rank = "4",
            icon = "ability_druid_ferociousbite",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 22896,
            name = "Frenzied Regeneration",
            rank = "3",
            icon = "ability_bullrush",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 9827,
            name = "Pounce",
            rank = "3",
            icon = "ability_druid_supriseattack",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 9889,
            name = "Healing Touch",
            rank = "10",
            icon = "spell_nature_healingtouch",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
    },
    [58] = {
        {
            spell_id = 9853,
            name = "Entangling Roots",
            rank = "6",
            icon = "spell_nature_stranglevines",
            source = {
                type = "Trainer",
                cost = 32000,
            },
        },
        {
            spell_id = 18658,
            name = "Hibernate",
            rank = "3",
            icon = "spell_nature_sleep",
            source = {
                type = "Trainer",
                cost = 32000,
            },
        },
        {
            spell_id = 9835,
            name = "Moonfire",
            rank = "10",
            icon = "spell_nature_starfall",
            source = {
                type = "Trainer",
                cost = 32000,
            },
        },
        {
            spell_id = 17329,
            name = "Nature's Grasp",
            rank = "6",
            icon = "spell_nature_natureswrath",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1600,
            },
        },
        {
            spell_id = 9876,
            name = "Starfire",
            rank = "6",
            icon = "spell_arcane_starfire",
            source = {
                type = "Trainer",
                cost = 32000,
            },
        },
        {
            spell_id = 9850,
            name = "Claw",
            rank = "5",
            icon = "ability_druid_rake",
            source = {
                type = "Trainer",
                cost = 32000,
            },
        },
        {
            spell_id = 9881,
            name = "Maul",
            rank = "7",
            icon = "ability_druid_maul",
            source = {
                type = "Trainer",
                cost = 32000,
            },
        },
        {
            spell_id = 9867,
            name = "Ravage",
            rank = "4",
            icon = "ability_druid_ravage",
            source = {
                type = "Trainer",
                cost = 32000,
            },
        },
        {
            spell_id = 9841,
            name = "Rejuvenation",
            rank = "10",
            icon = "spell_nature_rejuvenation",
            source = {
                type = "Trainer",
                cost = 32000,
            },
        },
    },
    [60] = {
        {
            spell_id = 17402,
            name = "Hurricane",
            rank = "3",
            icon = "spell_nature_cyclone",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 9913,
            name = "Prowl",
            rank = "3",
            icon = "ability_ambush",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 9896,
            name = "Rip",
            rank = "6",
            icon = "ability_ghoulfrenzy",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 9846,
            name = "Tiger's Fury",
            rank = "4",
            icon = "ability_mount_jungletiger",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 24977,
            name = "Insect Swarm",
            rank = "5",
            icon = "spell_nature_insectswarm",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1700,
            },
        },
        {
            spell_id = 9885,
            name = "Mark of the Wild",
            rank = "7",
            icon = "spell_nature_regeneration",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 20748,
            name = "Rebirth",
            rank = "5",
            icon = "spell_nature_reincarnation",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 9858,
            name = "Regrowth",
            rank = "9",
            icon = "spell_nature_resistnature",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 9863,
            name = "Tranquility",
            rank = "4",
            icon = "spell_nature_tranquility",
        },
        {
            spell_id = 25297,
            name = "Healing Touch",
            rank = 11,
            icon = "spell_nature_healingtouch",
            categories = { "Resto", },
            source = {
                type = "Item",
                recipe_item_ids = { 21294 },
                location = "Boss Drop, AQ20",
            },
            phase = 4,
        },
        {
            spell_id = 25299,
            name = "Rejuvenation",
            rank = 11,
            icon = "spell_nature_rejuvenation",
            categories = { "Resto", },
            source = {
                type = "Item",
                recipe_item_ids = { 21296 },
                location = "Boss Drop, AQ20",
            },
            phase = 4,
        },
        {
            spell_id = 25298,
            name = "Starfire",
            rank = 7,
            icon = "spell_arcane_starfire",
            categories = { "Balance", },
            source = {
                type = "Item",
                recipe_item_ids = { 21295 },
                location = "Boss Drop, AQ20",
            },
            phase = 4,
        },
    },
}

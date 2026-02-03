local _, TFG = ...

--[[
{
    [1] = [
        {
            spell_id = 0,
            name = "",
            rank = 1,
            icon = "",
            type = "Ability", -- Ability, Talent
            categories = {},
            group = "",
            faction = "", -- Horde, Alliance, empty for both
            races = {},
            source = {
                type = "Trainer", -- Trainer, Item, Quest
                cost = 0,
                recipe_item_ids = {},
                quest_ids = {},
                location = "",
            },
            phase = 1,
        }
    ]
}
--]]
TFG.PRIEST_TBC = {
    [1] = {
        {
            spell_id = 2050,
            name = "Lesser Heal",
            rank = "1",
            icon = "spell_holy_lesserheal",
        },
        {
            spell_id = 1243,
            name = "Power Word: Fortitude",
            rank = "1",
            icon = "spell_holy_wordfortitude",
            source = {
                type = "Trainer",
                cost = 10,
            },
        },
        {
            spell_id = 585,
            name = "Smite",
            rank = "1",
            icon = "spell_holy_holysmite",
        },
    },
    [4] = {
        {
            spell_id = 2052,
            name = "Lesser Heal",
            rank = "2",
            icon = "spell_holy_lesserheal",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 589,
            name = "Shadow Word: Pain",
            rank = "1",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
    },
    [6] = {
        {
            spell_id = 17,
            name = "Power Word: Shield",
            rank = "1",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 591,
            name = "Smite",
            rank = "2",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
    },
    [8] = {
        {
            spell_id = 586,
            name = "Fade",
            rank = "1",
            icon = "spell_magic_lesserinvisibilty",
            source = {
                type = "Trainer",
                cost = 200,
            },
        },
        {
            spell_id = 139,
            name = "Renew",
            rank = "1",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 200,
            },
        },
    },
    [10] = {
        {
            spell_id = 13908,
            name = "Desperate Prayer",
            rank = "1",
            icon = "spell_holy_restoration",
            faction = "Alliance",
            races = { "Dwarf", "Human" },
            source = {
                type = "Trainer",
                cost = 76,
            },
        },
        {
            spell_id = 9035,
            name = "Hex of Weakness",
            rank = "1",
            icon = "spell_shadow_fingerofdeath",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 90,
            },
        },
        {
            spell_id = 2053,
            name = "Lesser Heal",
            rank = "3",
            icon = "spell_holy_lesserheal",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 8092,
            name = "Mind Blast",
            rank = "1",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 2006,
            name = "Resurrection",
            rank = "1",
            icon = "spell_holy_resurrection",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 594,
            name = "Shadow Word: Pain",
            rank = "2",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 10797,
            name = "Starshards",
            rank = "1",
            icon = "spell_arcane_starfire",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 90,
            },
        },
        {
            spell_id = 32548,
            name = "Symbol of Hope",
            rank = "1",
            icon = "spell_holy_symbolofhope",
            faction = "Alliance",
            races = { "Draenei" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 2652,
            name = "Touch of Weakness",
            rank = "1",
            icon = "spell_shadow_deadofnight",
            faction = "Horde",
            races = { "Undead", "Blood Elf" },
            source = {
                type = "Trainer",
                cost = 90,
            },
        },
    },
    [12] = {
        {
            spell_id = 588,
            name = "Inner Fire",
            rank = "1",
            icon = "spell_holy_innerfire",
            source = {
                type = "Trainer",
                cost = 800,
            },
        },
        {
            spell_id = 1244,
            name = "Power Word: Fortitude",
            rank = "2",
            icon = "spell_holy_wordfortitude",
            source = {
                type = "Trainer",
                cost = 800,
            },
        },
        {
            spell_id = 592,
            name = "Power Word: Shield",
            rank = "2",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 800,
            },
        },
    },
    [14] = {
        {
            spell_id = 528,
            name = "Cure Disease",
            rank = "1",
            icon = "spell_holy_nullifydisease",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 8122,
            name = "Psychic Scream",
            rank = "1",
            icon = "spell_shadow_psychicscream",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 6074,
            name = "Renew",
            rank = "2",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 598,
            name = "Smite",
            rank = "3",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
    },
    [16] = {
        {
            spell_id = 2054,
            name = "Heal",
            rank = "1",
            icon = "spell_holy_heal",
            source = {
                type = "Trainer",
                cost = 1600,
            },
        },
        {
            spell_id = 8102,
            name = "Mind Blast",
            rank = "2",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 1600,
            },
        },
    },
    [18] = {
        {
            spell_id = 19236,
            name = "Desperate Prayer",
            rank = "2",
            icon = "spell_holy_restoration",
            faction = "Alliance",
            races = { "Dwarf", "Human" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 527,
            name = "Dispel Magic",
            rank = "1",
            icon = "spell_holy_dispelmagic",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 600,
            name = "Power Word: Shield",
            rank = "3",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 970,
            name = "Shadow Word: Pain",
            rank = "3",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 19296,
            name = "Starshards",
            rank = "2",
            icon = "spell_arcane_starfire",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
    },
    [20] = {
        {
            spell_id = 44041,
            name = "Chastise",
            rank = "1",
            icon = "spell_holy_chastise",
            faction = "Alliance",
            races = { "Draenei" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 32676,
            name = "Consume Magic",
            rank = "1",
            icon = "spell_arcane_studentofmagic",
            faction = "Horde",
            races = { "Blood Elf" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 2944,
            name = "Devouring Plague",
            rank = "1",
            icon = "spell_shadow_blackplague",
            faction = "Horde",
            races = { "Undead" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 2651,
            name = "Elune's Grace",
            rank = "1",
            icon = "spell_holy_elunesgrace",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 9578,
            name = "Fade",
            rank = "2",
            icon = "spell_magic_lesserinvisibilty",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 6346,
            name = "Fear Ward",
            rank = "1",
            icon = "spell_holy_excorcism",
            source = {
                type = "Trainer",
                cost = 800,
            },
        },
        {
            spell_id = 13896,
            name = "Feedback",
            rank = "1",
            icon = "spell_shadow_ritualofsacrifice",
            faction = "Alliance",
            races = { "Human" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 2061,
            name = "Flash Heal",
            rank = "1",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 19281,
            name = "Hex of Weakness",
            rank = "2",
            icon = "spell_shadow_fingerofdeath",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 150,
            },
        },
        {
            spell_id = 14914,
            name = "Holy Fire",
            rank = "1",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 7128,
            name = "Inner Fire",
            rank = "2",
            icon = "spell_holy_innerfire",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 453,
            name = "Mind Soothe",
            rank = "1",
            icon = "spell_holy_mindsooth",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 6075,
            name = "Renew",
            rank = "3",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 9484,
            name = "Shackle Undead",
            rank = "1",
            icon = "spell_nature_slow",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 18137,
            name = "Shadowguard",
            rank = "1",
            icon = "spell_nature_lightningshield",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 19261,
            name = "Touch of Weakness",
            rank = "2",
            icon = "spell_shadow_deadofnight",
            faction = "Horde",
            races = { "Undead", "Blood Elf" },
            source = {
                type = "Trainer",
                cost = 150,
            },
        },
        {
            spell_id = 14751,
            name = "Inner Focus",
            rank = "1",
            icon = "spell_frost_windwalkon",
            type = "Talent",
        },
        {
            spell_id = 15237,
            name = "Holy Nova",
            rank = "1",
            icon = "spell_holy_holynova",
            type = "Talent",
        },
        {
            spell_id = 15407,
            name = "Mind Flay",
            rank = "1",
            icon = "spell_shadow_siphonmana",
            type = "Talent",
        },
    },
    [22] = {
        {
            spell_id = 2055,
            name = "Heal",
            rank = "2",
            icon = "spell_holy_heal",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 8103,
            name = "Mind Blast",
            rank = "3",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 2096,
            name = "Mind Vision",
            rank = "1",
            icon = "spell_holy_mindvision",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 2010,
            name = "Resurrection",
            rank = "2",
            icon = "spell_holy_resurrection",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 984,
            name = "Smite",
            rank = "4",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
    },
    [24] = {
        {
            spell_id = 15262,
            name = "Holy Fire",
            rank = "2",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 8129,
            name = "Mana Burn",
            rank = "1",
            icon = "spell_shadow_manaburn",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 1245,
            name = "Power Word: Fortitude",
            rank = "3",
            icon = "spell_holy_wordfortitude",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 3747,
            name = "Power Word: Shield",
            rank = "4",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
    },
    [26] = {
        {
            spell_id = 19238,
            name = "Desperate Prayer",
            rank = "3",
            icon = "spell_holy_restoration",
            faction = "Alliance",
            races = { "Dwarf", "Human" },
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 9472,
            name = "Flash Heal",
            rank = "2",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 6076,
            name = "Renew",
            rank = "4",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 992,
            name = "Shadow Word: Pain",
            rank = "4",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 19299,
            name = "Starshards",
            rank = "3",
            icon = "spell_arcane_starfire",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
    },
    [28] = {
        {
            spell_id = 15430,
            name = "Holy Nova",
            rank = "2",
            icon = "spell_holy_holynova",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 400,
            },
        },
        {
            spell_id = 17311,
            name = "Mind Flay",
            rank = "2",
            icon = "spell_shadow_siphonmana",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 400,
            },
        },
        {
            spell_id = 19276,
            name = "Devouring Plague",
            rank = "2",
            icon = "spell_shadow_blackplague",
            faction = "Horde",
            races = { "Undead" },
            source = {
                type = "Trainer",
                cost = 400,
            },
        },
        {
            spell_id = 6063,
            name = "Heal",
            rank = "3",
            icon = "spell_holy_heal02",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 8104,
            name = "Mind Blast",
            rank = "4",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 8124,
            name = "Psychic Scream",
            rank = "2",
            icon = "spell_shadow_psychicscream",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 19308,
            name = "Shadowguard",
            rank = "2",
            icon = "spell_nature_lightningshield",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 400,
            },
        },
    },
    [30] = {
        {
            spell_id = 44043,
            name = "Chastise",
            rank = "2",
            icon = "spell_holy_chastise",
            faction = "Alliance",
            races = { "Draenei" },
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
        {
            spell_id = 9579,
            name = "Fade",
            rank = "3",
            icon = "spell_magic_lesserinvisibilty",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 19271,
            name = "Feedback",
            rank = "2",
            icon = "spell_shadow_ritualofsacrifice",
            faction = "Alliance",
            races = { "Human" },
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
        {
            spell_id = 19282,
            name = "Hex of Weakness",
            rank = "3",
            icon = "spell_shadow_fingerofdeath",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
        {
            spell_id = 15263,
            name = "Holy Fire",
            rank = "3",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 602,
            name = "Inner Fire",
            rank = "3",
            icon = "spell_holy_innerfire",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 605,
            name = "Mind Control",
            rank = "1",
            icon = "spell_shadow_shadowworddominate",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 6065,
            name = "Power Word: Shield",
            rank = "5",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 596,
            name = "Prayer of Healing",
            rank = "1",
            icon = "spell_holy_prayerofhealing02",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 976,
            name = "Shadow Protection",
            rank = "1",
            icon = "spell_shadow_antishadow",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 1004,
            name = "Smite",
            rank = "5",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 19262,
            name = "Touch of Weakness",
            rank = "3",
            icon = "spell_shadow_deadofnight",
            faction = "Horde",
            races = { "Undead", "Blood Elf" },
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
        {
            spell_id = 14752,
            name = "Divine Spirit",
            rank = "1",
            icon = "spell_holy_divinespirit",
            type = "Talent",
        },
        {
            spell_id = 15487,
            name = "Silence",
            rank = "1",
            icon = "spell_shadow_impphaseshift",
            type = "Talent",
        },
        {
            spell_id = 15286,
            name = "Vampiric Embrace",
            rank = "1",
            icon = "spell_shadow_unsummonbuilding",
            type = "Talent",
        },
    },
    [32] = {
        {
            spell_id = 552,
            name = "Abolish Disease",
            rank = "1",
            icon = "spell_nature_nullifydisease",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 9473,
            name = "Flash Heal",
            rank = "3",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 8131,
            name = "Mana Burn",
            rank = "2",
            icon = "spell_shadow_manaburn",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 6077,
            name = "Renew",
            rank = "5",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
    },
    [34] = {
        {
            spell_id = 19240,
            name = "Desperate Prayer",
            rank = "4",
            icon = "spell_holy_restoration",
            faction = "Alliance",
            races = { "Dwarf", "Human" },
            source = {
                type = "Trainer",
                cost = 600,
            },
        },
        {
            spell_id = 6064,
            name = "Heal",
            rank = "4",
            icon = "spell_holy_heal02",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 1706,
            name = "Levitate",
            rank = "1",
            icon = "spell_holy_layonhands",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 8105,
            name = "Mind Blast",
            rank = "5",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 10880,
            name = "Resurrection",
            rank = "3",
            icon = "spell_holy_resurrection",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 2767,
            name = "Shadow Word: Pain",
            rank = "5",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 19302,
            name = "Starshards",
            rank = "4",
            icon = "spell_arcane_starfire",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 600,
            },
        },
    },
    [36] = {
        {
            spell_id = 15431,
            name = "Holy Nova",
            rank = "3",
            icon = "spell_holy_holynova",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 700,
            },
        },
        {
            spell_id = 17312,
            name = "Mind Flay",
            rank = "3",
            icon = "spell_shadow_siphonmana",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 700,
            },
        },
        {
            spell_id = 19277,
            name = "Devouring Plague",
            rank = "3",
            icon = "spell_shadow_blackplague",
            faction = "Horde",
            races = { "Undead" },
            source = {
                type = "Trainer",
                cost = 700,
            },
        },
        {
            spell_id = 988,
            name = "Dispel Magic",
            rank = "2",
            icon = "spell_holy_dispelmagic",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 15264,
            name = "Holy Fire",
            rank = "4",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 8192,
            name = "Mind Soothe",
            rank = "2",
            icon = "spell_holy_mindsooth",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 2791,
            name = "Power Word: Fortitude",
            rank = "4",
            icon = "spell_holy_wordfortitude",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 6066,
            name = "Power Word: Shield",
            rank = "6",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 19309,
            name = "Shadowguard",
            rank = "3",
            icon = "spell_nature_lightningshield",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 700,
            },
        },
    },
    [38] = {
        {
            spell_id = 9474,
            name = "Flash Heal",
            rank = "4",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
        {
            spell_id = 6078,
            name = "Renew",
            rank = "6",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
        {
            spell_id = 6060,
            name = "Smite",
            rank = "6",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 16000,
            },
        },
    },
    [40] = {
        {
            spell_id = 14818,
            name = "Divine Spirit",
            rank = "2",
            icon = "spell_holy_divinespirit",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 44044,
            name = "Chastise",
            rank = "3",
            icon = "spell_holy_chastise",
            faction = "Alliance",
            races = { "Draenei" },
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 9592,
            name = "Fade",
            rank = "4",
            icon = "spell_magic_lesserinvisibilty",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 19273,
            name = "Feedback",
            rank = "3",
            icon = "spell_shadow_ritualofsacrifice",
            faction = "Alliance",
            races = { "Human" },
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 2060,
            name = "Greater Heal",
            rank = "1",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 19283,
            name = "Hex of Weakness",
            rank = "4",
            icon = "spell_shadow_fingerofdeath",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 1006,
            name = "Inner Fire",
            rank = "4",
            icon = "spell_holy_innerfire",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 10874,
            name = "Mana Burn",
            rank = "3",
            icon = "spell_shadow_manaburn",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 8106,
            name = "Mind Blast",
            rank = "6",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 996,
            name = "Prayer of Healing",
            rank = "2",
            icon = "spell_holy_prayerofhealing02",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 9485,
            name = "Shackle Undead",
            rank = "2",
            icon = "spell_nature_slow",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 19264,
            name = "Touch of Weakness",
            rank = "4",
            icon = "spell_shadow_deadofnight",
            faction = "Horde",
            races = { "Undead", "Blood Elf" },
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 10060,
            name = "Power Infusion",
            rank = "1",
            icon = "spell_holy_powerinfusion",
            type = "Talent",
        },
        {
            spell_id = 724,
            name = "Lightwell",
            rank = "1",
            icon = "spell_holy_summonlightwell",
            type = "Talent",
        },
        {
            spell_id = 15473,
            name = "Shadowform",
            rank = "1",
            icon = "spell_shadow_shadowform",
            type = "Talent",
        },
    },
    [42] = {
        {
            spell_id = 19241,
            name = "Desperate Prayer",
            rank = "5",
            icon = "spell_holy_restoration",
            faction = "Alliance",
            races = { "Dwarf", "Human" },
            source = {
                type = "Trainer",
                cost = 1100,
            },
        },
        {
            spell_id = 15265,
            name = "Holy Fire",
            rank = "5",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 10898,
            name = "Power Word: Shield",
            rank = "7",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 10888,
            name = "Psychic Scream",
            rank = "3",
            icon = "spell_shadow_psychicscream",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 10957,
            name = "Shadow Protection",
            rank = "2",
            icon = "spell_shadow_antishadow",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 10892,
            name = "Shadow Word: Pain",
            rank = "6",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 19303,
            name = "Starshards",
            rank = "5",
            icon = "spell_arcane_starfire",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 1100,
            },
        },
    },
    [44] = {
        {
            spell_id = 27799,
            name = "Holy Nova",
            rank = "4",
            icon = "spell_holy_holynova",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 17313,
            name = "Mind Flay",
            rank = "4",
            icon = "spell_shadow_siphonmana",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 19278,
            name = "Devouring Plague",
            rank = "4",
            icon = "spell_shadow_blackplague",
            faction = "Horde",
            races = { "Undead" },
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 10915,
            name = "Flash Heal",
            rank = "5",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 10911,
            name = "Mind Control",
            rank = "2",
            icon = "spell_shadow_shadowworddominate",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 10909,
            name = "Mind Vision",
            rank = "2",
            icon = "spell_holy_mindvision",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 10927,
            name = "Renew",
            rank = "7",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 19310,
            name = "Shadowguard",
            rank = "4",
            icon = "spell_nature_lightningshield",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
    },
    [46] = {
        {
            spell_id = 10963,
            name = "Greater Heal",
            rank = "2",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 10945,
            name = "Mind Blast",
            rank = "7",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 10881,
            name = "Resurrection",
            rank = "4",
            icon = "spell_holy_resurrection",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 10933,
            name = "Smite",
            rank = "7",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
    },
    [48] = {
        {
            spell_id = 15266,
            name = "Holy Fire",
            rank = "6",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 10875,
            name = "Mana Burn",
            rank = "4",
            icon = "spell_shadow_manaburn",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 10937,
            name = "Power Word: Fortitude",
            rank = "5",
            icon = "spell_holy_wordfortitude",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 10899,
            name = "Power Word: Shield",
            rank = "8",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
        {
            spell_id = 21562,
            name = "Prayer of Fortitude",
            rank = "1",
            icon = "spell_holy_prayeroffortitude",
            source = {
                type = "Trainer",
                cost = 28000,
            },
        },
    },
    [50] = {
        {
            spell_id = 14819,
            name = "Divine Spirit",
            rank = "3",
            icon = "spell_holy_divinespirit",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 27870,
            name = "Lightwell",
            rank = "2",
            icon = "spell_holy_summonlightwell",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 44045,
            name = "Chastise",
            rank = "4",
            icon = "spell_holy_chastise",
            faction = "Alliance",
            races = { "Draenei" },
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 19242,
            name = "Desperate Prayer",
            rank = "6",
            icon = "spell_holy_restoration",
            faction = "Alliance",
            races = { "Dwarf", "Human" },
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 10941,
            name = "Fade",
            rank = "5",
            icon = "spell_magic_lesserinvisibilty",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 19274,
            name = "Feedback",
            rank = "4",
            icon = "spell_shadow_ritualofsacrifice",
            faction = "Alliance",
            races = { "Human" },
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 10916,
            name = "Flash Heal",
            rank = "6",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 19284,
            name = "Hex of Weakness",
            rank = "5",
            icon = "spell_shadow_fingerofdeath",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 10951,
            name = "Inner Fire",
            rank = "5",
            icon = "spell_holy_innerfire",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 10960,
            name = "Prayer of Healing",
            rank = "3",
            icon = "spell_holy_prayerofhealing02",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 10928,
            name = "Renew",
            rank = "8",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 10893,
            name = "Shadow Word: Pain",
            rank = "7",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 19304,
            name = "Starshards",
            rank = "6",
            icon = "spell_arcane_starfire",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 19265,
            name = "Touch of Weakness",
            rank = "5",
            icon = "spell_shadow_deadofnight",
            faction = "Horde",
            races = { "Undead", "Blood Elf" },
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 33206,
            name = "Pain Suppression",
            rank = "1",
            icon = "spell_holy_painsupression",
            type = "Talent",
        },
        {
            spell_id = 34861,
            name = "Circle of Healing",
            rank = "1",
            icon = "spell_holy_circleofrenewal",
            type = "Talent",
        },
        {
            spell_id = 34914,
            name = "Vampiric Touch",
            rank = "1",
            icon = "spell_holy_stoicism",
            type = "Talent",
        },
    },
    [52] = {
        {
            spell_id = 27800,
            name = "Holy Nova",
            rank = "5",
            icon = "spell_holy_holynova",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
        {
            spell_id = 17314,
            name = "Mind Flay",
            rank = "5",
            icon = "spell_shadow_siphonmana",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
        {
            spell_id = 19279,
            name = "Devouring Plague",
            rank = "5",
            icon = "spell_shadow_blackplague",
            faction = "Horde",
            races = { "Undead" },
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
        {
            spell_id = 10964,
            name = "Greater Heal",
            rank = "3",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
                cost = 38000,
            },
        },
        {
            spell_id = 10946,
            name = "Mind Blast",
            rank = "8",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 38000,
            },
        },
        {
            spell_id = 10953,
            name = "Mind Soothe",
            rank = "3",
            icon = "spell_holy_mindsooth",
            source = {
                type = "Trainer",
                cost = 38000,
            },
        },
        {
            spell_id = 19311,
            name = "Shadowguard",
            rank = "5",
            icon = "spell_nature_lightningshield",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 1900,
            },
        },
    },
    [54] = {
        {
            spell_id = 15267,
            name = "Holy Fire",
            rank = "7",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 40000,
            },
        },
        {
            spell_id = 10900,
            name = "Power Word: Shield",
            rank = "9",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 40000,
            },
        },
        {
            spell_id = 10934,
            name = "Smite",
            rank = "8",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 40000,
            },
        },
    },
    [56] = {
        {
            spell_id = 34863,
            name = "Circle of Healing",
            rank = "2",
            icon = "spell_holy_circleofrenewal",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2100,
            },
        },
        {
            spell_id = 10917,
            name = "Flash Heal",
            rank = "7",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 42000,
            },
        },
        {
            spell_id = 10876,
            name = "Mana Burn",
            rank = "5",
            icon = "spell_shadow_manaburn",
            source = {
                type = "Trainer",
                cost = 42000,
            },
        },
        {
            spell_id = 27683,
            name = "Prayer of Shadow Protection",
            rank = "1",
            icon = "spell_holy_prayerofshadowprotection",
            source = {
                type = "Trainer",
                cost = 42000,
            },
        },
        {
            spell_id = 10890,
            name = "Psychic Scream",
            rank = "4",
            icon = "spell_shadow_psychicscream",
            source = {
                type = "Trainer",
                cost = 42000,
            },
        },
        {
            spell_id = 10929,
            name = "Renew",
            rank = "9",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 42000,
            },
        },
        {
            spell_id = 10958,
            name = "Shadow Protection",
            rank = "3",
            icon = "spell_shadow_antishadow",
            source = {
                type = "Trainer",
                cost = 42000,
            },
        },
    },
    [58] = {
        {
            spell_id = 19243,
            name = "Desperate Prayer",
            rank = "7",
            icon = "spell_holy_restoration",
            faction = "Alliance",
            races = { "Dwarf", "Human" },
            source = {
                type = "Trainer",
                cost = 2200,
            },
        },
        {
            spell_id = 10965,
            name = "Greater Heal",
            rank = "4",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
                cost = 44000,
            },
        },
        {
            spell_id = 10947,
            name = "Mind Blast",
            rank = "9",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 44000,
            },
        },
        {
            spell_id = 10912,
            name = "Mind Control",
            rank = "3",
            icon = "spell_shadow_shadowworddominate",
            source = {
                type = "Trainer",
                cost = 44000,
            },
        },
        {
            spell_id = 20770,
            name = "Resurrection",
            rank = "5",
            icon = "spell_holy_resurrection",
            source = {
                type = "Trainer",
                cost = 44000,
            },
        },
        {
            spell_id = 10894,
            name = "Shadow Word: Pain",
            rank = "8",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 44000,
            },
        },
        {
            spell_id = 19305,
            name = "Starshards",
            rank = "7",
            icon = "spell_arcane_starfire",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 2200,
            },
        },
    },
    [60] = {
        {
            spell_id = 34864,
            name = "Circle of Healing",
            rank = "3",
            icon = "spell_holy_circleofrenewal",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 27841,
            name = "Divine Spirit",
            rank = "4",
            icon = "spell_holy_divinespirit",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 27801,
            name = "Holy Nova",
            rank = "6",
            icon = "spell_holy_holynova",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 27871,
            name = "Lightwell",
            rank = "3",
            icon = "spell_holy_summonlightwell",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 18807,
            name = "Mind Flay",
            rank = "6",
            icon = "spell_shadow_siphonmana",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 34916,
            name = "Vampiric Touch",
            rank = "2",
            icon = "spell_holy_stoicism",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 44046,
            name = "Chastise",
            rank = "5",
            icon = "spell_holy_chastise",
            faction = "Alliance",
            races = { "Draenei" },
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 19280,
            name = "Devouring Plague",
            rank = "6",
            icon = "spell_shadow_blackplague",
            faction = "Horde",
            races = { "Undead" },
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 10942,
            name = "Fade",
            rank = "6",
            icon = "spell_magic_lesserinvisibilty",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 19275,
            name = "Feedback",
            rank = "5",
            icon = "spell_shadow_ritualofsacrifice",
            faction = "Alliance",
            races = { "Human" },
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 25314,
            name = "Greater Heal",
            rank = "5",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
        {
            spell_id = 19285,
            name = "Hex of Weakness",
            rank = "6",
            icon = "spell_shadow_fingerofdeath",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 15261,
            name = "Holy Fire",
            rank = "8",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 10952,
            name = "Inner Fire",
            rank = "6",
            icon = "spell_holy_innerfire",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 10938,
            name = "Power Word: Fortitude",
            rank = "6",
            icon = "spell_holy_wordfortitude",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 10901,
            name = "Power Word: Shield",
            rank = "10",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 21564,
            name = "Prayer of Fortitude",
            rank = "2",
            icon = "spell_holy_prayeroffortitude",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 10961,
            name = "Prayer of Healing",
            rank = "4",
            icon = "spell_holy_prayerofhealing02",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 25316,
            name = "Prayer of Healing",
            rank = "5",
            icon = "spell_holy_prayerofhealing02",
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
        {
            spell_id = 27681,
            name = "Prayer of Spirit",
            rank = "1",
            icon = "spell_holy_prayerofspirit",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 25315,
            name = "Renew",
            rank = "10",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
        {
            spell_id = 10955,
            name = "Shackle Undead",
            rank = "3",
            icon = "spell_nature_slow",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 19312,
            name = "Shadowguard",
            rank = "6",
            icon = "spell_nature_lightningshield",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 19266,
            name = "Touch of Weakness",
            rank = "6",
            icon = "spell_shadow_deadofnight",
            faction = "Horde",
            races = { "Undead", "Blood Elf" },
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
    },
    [61] = {
        {
            spell_id = 25233,
            name = "Flash Heal",
            rank = "8",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 53000,
            },
        },
        {
            spell_id = 25363,
            name = "Smite",
            rank = "9",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 53000,
            },
        },
    },
    [62] = {
        {
            spell_id = 32379,
            name = "Shadow Word: Death",
            rank = "1",
            icon = "spell_shadow_demonicfortitude",
            source = {
                type = "Trainer",
                cost = 59000,
            },
        },
    },
    [63] = {
        {
            spell_id = 25210,
            name = "Greater Heal",
            rank = "6",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
        {
            spell_id = 25379,
            name = "Mana Burn",
            rank = "6",
            icon = "spell_shadow_manaburn",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
        {
            spell_id = 25372,
            name = "Mind Blast",
            rank = "10",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
    },
    [64] = {
        {
            spell_id = 32546,
            name = "Binding Heal",
            rank = "1",
            icon = "spell_holy_blindingheal",
            source = {
                type = "Trainer",
                cost = 72000,
            },
        },
    },
    [65] = {
        {
            spell_id = 34865,
            name = "Circle of Healing",
            rank = "4",
            icon = "spell_holy_circleofrenewal",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 25217,
            name = "Power Word: Shield",
            rank = "11",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 80000,
            },
        },
        {
            spell_id = 25221,
            name = "Renew",
            rank = "11",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 80000,
            },
        },
        {
            spell_id = 25367,
            name = "Shadow Word: Pain",
            rank = "9",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 80000,
            },
        },
    },
    [66] = {
        {
            spell_id = 25437,
            name = "Desperate Prayer",
            rank = "8",
            icon = "spell_holy_restoration",
            faction = "Alliance",
            races = { "Dwarf", "Human" },
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
        {
            spell_id = 25429,
            name = "Fade",
            rank = "7",
            icon = "spell_magic_lesserinvisibilty",
            source = {
                type = "Trainer",
                cost = 89000,
            },
        },
        {
            spell_id = 25384,
            name = "Holy Fire",
            rank = "9",
            icon = "spell_holy_searinglight",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
        {
            spell_id = 34433,
            name = "Shadowfiend",
            rank = "1",
            icon = "spell_shadow_shadowfiend",
            source = {
                type = "Trainer",
                cost = 89000,
            },
        },
        {
            spell_id = 25446,
            name = "Starshards",
            rank = "8",
            icon = "spell_arcane_starfire",
            faction = "Alliance",
            races = { "Night Elf" },
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
    },
    [67] = {
        {
            spell_id = 25235,
            name = "Flash Heal",
            rank = "9",
            icon = "spell_holy_flashheal",
            source = {
                type = "Trainer",
                cost = 99000,
            },
        },
        {
            spell_id = 25596,
            name = "Mind Soothe",
            rank = "4",
            icon = "spell_holy_mindsooth",
            source = {
                type = "Trainer",
                cost = 99000,
            },
        },
    },
    [68] = {
        {
            spell_id = 25331,
            name = "Holy Nova",
            rank = "7",
            icon = "spell_holy_holynova",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 3250,
            },
        },
        {
            spell_id = 25387,
            name = "Mind Flay",
            rank = "7",
            icon = "spell_shadow_siphonmana",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
        {
            spell_id = 25467,
            name = "Devouring Plague",
            rank = "7",
            icon = "spell_shadow_blackplague",
            faction = "Horde",
            races = { "Undead" },
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
        {
            spell_id = 25213,
            name = "Greater Heal",
            rank = "7",
            icon = "spell_holy_greaterheal",
            source = {
                type = "Trainer",
                cost = 110000,
            },
        },
        {
            spell_id = 25308,
            name = "Prayer of Healing",
            rank = "6",
            icon = "spell_holy_prayerofhealing02",
            source = {
                type = "Trainer",
                cost = 110000,
            },
        },
        {
            spell_id = 33076,
            name = "Prayer of Mending",
            rank = "1",
            icon = "spell_holy_prayerofmendingtga",
            source = {
                type = "Trainer",
                cost = 110000,
            },
        },
        {
            spell_id = 25435,
            name = "Resurrection",
            rank = "6",
            icon = "spell_holy_resurrection",
            source = {
                type = "Trainer",
                cost = 110000,
            },
        },
        {
            spell_id = 25433,
            name = "Shadow Protection",
            rank = "4",
            icon = "spell_shadow_antishadow",
            source = {
                type = "Trainer",
                cost = 110000,
            },
        },
        {
            spell_id = 25477,
            name = "Shadowguard",
            rank = "7",
            icon = "spell_nature_lightningshield",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
    },
    [69] = {
        {
            spell_id = 25431,
            name = "Inner Fire",
            rank = "7",
            icon = "spell_holy_innerfire",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
        {
            spell_id = 25375,
            name = "Mind Blast",
            rank = "11",
            icon = "spell_shadow_unholyfrenzy",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
        {
            spell_id = 25364,
            name = "Smite",
            rank = "10",
            icon = "spell_holy_holysmite",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
    },
    [70] = {
        {
            spell_id = 34866,
            name = "Circle of Healing",
            rank = "5",
            icon = "spell_holy_circleofrenewal",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 25312,
            name = "Divine Spirit",
            rank = "5",
            icon = "spell_holy_divinespirit",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 28275,
            name = "Lightwell",
            rank = "4",
            icon = "spell_holy_summonlightwell",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 44047,
            name = "Chastise",
            rank = "6",
            icon = "spell_holy_chastise",
            faction = "Alliance",
            races = { "Draenei" },
            source = {
                type = "Trainer",
                cost = 2762,
            },
        },
        {
            spell_id = 25441,
            name = "Feedback",
            rank = "6",
            icon = "spell_shadow_ritualofsacrifice",
            faction = "Alliance",
            races = { "Human" },
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
        {
            spell_id = 25470,
            name = "Hex of Weakness",
            rank = "7",
            icon = "spell_shadow_fingerofdeath",
            faction = "Horde",
            races = { "Troll" },
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
        {
            spell_id = 25380,
            name = "Mana Burn",
            rank = "7",
            icon = "spell_shadow_manaburn",
            source = {
                type = "Trainer",
                cost = 110000,
            },
        },
        {
            spell_id = 32375,
            name = "Mass Dispel",
            rank = "1",
            icon = "spell_arcane_massdispel",
            source = {
                type = "Trainer",
                cost = 110000,
            },
        },
        {
            spell_id = 25389,
            name = "Power Word: Fortitude",
            rank = "7",
            icon = "spell_holy_wordfortitude",
            source = {
                type = "Trainer",
                cost = 65000,
            },
        },
        {
            spell_id = 25218,
            name = "Power Word: Shield",
            rank = "12",
            icon = "spell_holy_powerwordshield",
            source = {
                type = "Trainer",
                cost = 140000,
            },
        },
        {
            spell_id = 25392,
            name = "Prayer of Fortitude",
            rank = "3",
            icon = "spell_holy_prayeroffortitude",
            source = {
                type = "Item",
                recipe_item_ids = { 29549 },
                location = "World drop",
            },
        },
        {
            spell_id = 39374,
            name = "Prayer of Shadow Protection",
            rank = "2",
            icon = "spell_holy_prayerofshadowprotection",
            source = {
                type = "Item",
                recipe_item_ids = { 31837 },
                location = "World drop",
            },
        },
        {
            spell_id = 32999,
            name = "Prayer of Spirit",
            rank = "2",
            icon = "spell_holy_prayerofspirit",
            source = {
                type = "Trainer",
                cost = 3400,
            },
        },
        {
            spell_id = 25222,
            name = "Renew",
            rank = "12",
            icon = "spell_holy_renew",
            source = {
                type = "Trainer",
                cost = 140000,
            },
        },
        {
            spell_id = 32996,
            name = "Shadow Word: Death",
            rank = "2",
            icon = "spell_shadow_demonicfortitude",
            source = {
                type = "Trainer",
                cost = 110000,
            },
        },
        {
            spell_id = 25368,
            name = "Shadow Word: Pain",
            rank = "10",
            icon = "spell_shadow_shadowwordpain",
            source = {
                type = "Trainer",
                cost = 140000,
            },
        },
        {
            spell_id = 25461,
            name = "Touch of Weakness",
            rank = "7",
            icon = "spell_shadow_deadofnight",
            faction = "Horde",
            races = { "Undead", "Blood Elf" },
            source = {
                type = "Trainer",
                cost = 6500,
            },
        },
        {
            spell_id = 34917,
            name = "Vampiric Touch",
            rank = "3",
            icon = "spell_holy_stoicism",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
    },
}

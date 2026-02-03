local _, TFG = ...

TFG.WARLOCK_TBC = {
    [1] = {
        {
            spell_id = 5019,
            name = "Shoot",
            rank = "1",
            icon = "ability_shootwand",
        },
        {
            spell_id = 687,
            name = "Demon Skin",
            rank = "1",
            icon = "spell_shadow_ragingscream",
        },
        {
            spell_id = 348,
            name = "Immolate",
            rank = "1",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 10,
            },
        },
        {
            spell_id = 686,
            name = "Shadow Bolt",
            rank = "1",
            icon = "spell_shadow_shadowbolt",
        },
        {
            spell_id = 688,
            name = "Summon Imp",
            rank = "1",
            icon = "spell_shadow_summonimp",
        },
    },
    [4] = {
        {
            spell_id = 172,
            name = "Corruption",
            rank = "1",
            icon = "spell_shadow_abominationexplosion",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 702,
            name = "Curse of Weakness",
            rank = "1",
            icon = "spell_shadow_curseofmannoroth",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
    },
    [6] = {
        {
            spell_id = 1454,
            name = "Life Tap",
            rank = "1",
            icon = "spell_shadow_burningspirit",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
        {
            spell_id = 695,
            name = "Shadow Bolt",
            rank = "2",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 100,
            },
        },
    },
    [8] = {
        {
            spell_id = 980,
            name = "Curse of Agony",
            rank = "1",
            icon = "spell_shadow_curseofsargeras",
            source = {
                type = "Trainer",
                cost = 200,
            },
        },
        {
            spell_id = 5782,
            name = "Fear",
            rank = "1",
            icon = "spell_shadow_possession",
            source = {
                type = "Trainer",
                cost = 200,
            },
        },
    },
    [10] = {
        {
            spell_id = 6201,
            name = "Create Healthstone",
            rank = "1",
            icon = "inv_stone_04",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 696,
            name = "Demon Skin",
            rank = "2",
            icon = "spell_shadow_ragingscream",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 1120,
            name = "Drain Soul",
            rank = "1",
            icon = "spell_shadow_haunting",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 707,
            name = "Immolate",
            rank = "2",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 300,
            },
        },
        {
            spell_id = 697,
            name = "Summon Voidwalker",
            rank = "1",
            icon = "spell_shadow_summonvoidwalker",
        },
    },
    [12] = {
        {
            spell_id = 1108,
            name = "Curse of Weakness",
            rank = "2",
            icon = "spell_shadow_curseofmannoroth",
            source = {
                type = "Trainer",
                cost = 600,
            },
        },
        {
            spell_id = 755,
            name = "Health Funnel",
            rank = "1",
            icon = "spell_shadow_lifedrain",
            source = {
                type = "Trainer",
                cost = 600,
            },
        },
        {
            spell_id = 705,
            name = "Shadow Bolt",
            rank = "3",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 600,
            },
        },
    },
    [14] = {
        {
            spell_id = 6222,
            name = "Corruption",
            rank = "2",
            icon = "spell_shadow_abominationexplosion",
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 704,
            name = "Curse of Recklessness",
            rank = "1",
            icon = "spell_shadow_unholystrength",
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
        {
            spell_id = 689,
            name = "Drain Life",
            rank = "1",
            icon = "spell_shadow_lifedrain02",
            source = {
                type = "Trainer",
                cost = 900,
            },
        },
    },
    [16] = {
        {
            spell_id = 1455,
            name = "Life Tap",
            rank = "2",
            icon = "spell_shadow_burningspirit",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 5697,
            name = "Unending Breath",
            rank = "1",
            icon = "spell_shadow_demonbreath",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
    },
    [18] = {
        {
            spell_id = 693,
            name = "Create Soulstone",
            rank = "1",
            icon = "inv_misc_orb_04",
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 1014,
            name = "Curse of Agony",
            rank = "2",
            icon = "spell_shadow_curseofsargeras",
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
        {
            spell_id = 5676,
            name = "Searing Pain",
            rank = "1",
            icon = "spell_fire_soulburn",
            source = {
                type = "Trainer",
                cost = 1500,
            },
        },
    },
    [20] = {
        {
            spell_id = 706,
            name = "Demon Armor",
            rank = "1",
            icon = "spell_shadow_ragingscream",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 3698,
            name = "Health Funnel",
            rank = "2",
            icon = "spell_shadow_lifedrain",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 1094,
            name = "Immolate",
            rank = "3",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 5740,
            name = "Rain of Fire",
            rank = "1",
            icon = "spell_shadow_rainoffire",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 698,
            name = "Ritual of Summoning",
            rank = "1",
            icon = "spell_shadow_twilight",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 1088,
            name = "Shadow Bolt",
            rank = "4",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 2000,
            },
        },
        {
            spell_id = 713,
            name = "Summon Incubus",
            rank = "1",
            icon = "ability_warlock_incubus",
        },
        {
            spell_id = 712,
            name = "Summon Succubus",
            rank = "1",
            icon = "spell_shadow_summonsuccubus",
        },
    },
    [22] = {
        {
            spell_id = 6202,
            name = "Create Healthstone",
            rank = "2",
            icon = "inv_stone_04",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 6205,
            name = "Curse of Weakness",
            rank = "3",
            icon = "spell_shadow_curseofmannoroth",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 699,
            name = "Drain Life",
            rank = "2",
            icon = "spell_shadow_lifedrain02",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 126,
            name = "Eye of Kilrogg",
            rank = "1",
            icon = "spell_shadow_evileye",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
    },
    [24] = {
        {
            spell_id = 18867,
            name = "Shadowburn",
            rank = "2",
            icon = "spell_shadow_scourgebuild",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 150,
            },
        },
        {
            spell_id = 6223,
            name = "Corruption",
            rank = "3",
            icon = "spell_shadow_abominationexplosion",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 5138,
            name = "Drain Mana",
            rank = "1",
            icon = "spell_shadow_siphonmana",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 8288,
            name = "Drain Soul",
            rank = "2",
            icon = "spell_shadow_haunting",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
        {
            spell_id = 5500,
            name = "Sense Demons",
            rank = "1",
            icon = "spell_shadow_metamorphosis",
            source = {
                type = "Trainer",
                cost = 3000,
            },
        },
    },
    [26] = {
        {
            spell_id = 1714,
            name = "Curse of Tongues",
            rank = "1",
            icon = "spell_shadow_curseoftounges",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 132,
            name = "Detect Invisibility",
            rank = "1",
            icon = "spell_shadow_detectlesserinvisibility",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 1456,
            name = "Life Tap",
            rank = "3",
            icon = "spell_shadow_burningspirit",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
        {
            spell_id = 17919,
            name = "Searing Pain",
            rank = "2",
            icon = "spell_fire_soulburn",
            source = {
                type = "Trainer",
                cost = 4000,
            },
        },
    },
    [28] = {
        {
            spell_id = 710,
            name = "Banish",
            rank = "1",
            icon = "spell_shadow_cripple",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 6366,
            name = "Create Firestone",
            rank = "1",
            icon = "inv_misc_gem_bloodstone_02",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 6217,
            name = "Curse of Agony",
            rank = "3",
            icon = "spell_shadow_curseofsargeras",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 7658,
            name = "Curse of Recklessness",
            rank = "2",
            icon = "spell_shadow_unholystrength",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 3699,
            name = "Health Funnel",
            rank = "3",
            icon = "spell_shadow_lifedrain",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
        {
            spell_id = 1106,
            name = "Shadow Bolt",
            rank = "5",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 5000,
            },
        },
    },
    [30] = {
        {
            spell_id = 20752,
            name = "Create Soulstone",
            rank = "2",
            icon = "inv_misc_orb_04",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 1086,
            name = "Demon Armor",
            rank = "2",
            icon = "spell_shadow_ragingscream",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 709,
            name = "Drain Life",
            rank = "3",
            icon = "spell_shadow_lifedrain02",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 1098,
            name = "Enslave Demon",
            rank = "1",
            icon = "spell_shadow_enslavedemon",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 1949,
            name = "Hellfire",
            rank = "1",
            icon = "spell_fire_incinerate",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 2941,
            name = "Immolate",
            rank = "4",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 6000,
            },
        },
        {
            spell_id = 691,
            name = "Summon Felhunter",
            rank = "1",
            icon = "spell_shadow_summonfelhunter",
        },
        {
            spell_id = 5784,
            name = "Summon Felsteed",
            rank = "1",
            icon = "spell_nature_swiftness",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
    },
    [32] = {
        {
            spell_id = 18868,
            name = "Shadowburn",
            rank = "3",
            icon = "spell_shadow_scourgebuild",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 350,
            },
        },
        {
            spell_id = 1490,
            name = "Curse of the Elements",
            rank = "1",
            icon = "spell_shadow_chilltouch",
            source = {
                type = "Trainer",
                cost = 7000,
            },
        },
        {
            spell_id = 7646,
            name = "Curse of Weakness",
            rank = "4",
            icon = "spell_shadow_curseofmannoroth",
            source = {
                type = "Trainer",
                cost = 7000,
            },
        },
        {
            spell_id = 6213,
            name = "Fear",
            rank = "2",
            icon = "spell_shadow_possession",
            source = {
                type = "Trainer",
                cost = 7000,
            },
        },
        {
            spell_id = 6229,
            name = "Shadow Ward",
            rank = "1",
            icon = "spell_shadow_antishadow",
            source = {
                type = "Trainer",
                cost = 7000,
            },
        },
    },
    [34] = {
        {
            spell_id = 7648,
            name = "Corruption",
            rank = "4",
            icon = "spell_shadow_abominationexplosion",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 5699,
            name = "Create Healthstone",
            rank = "3",
            icon = "inv_stone_04",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 6226,
            name = "Drain Mana",
            rank = "2",
            icon = "spell_shadow_siphonmana",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 6219,
            name = "Rain of Fire",
            rank = "2",
            icon = "spell_shadow_rainoffire",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
        {
            spell_id = 17920,
            name = "Searing Pain",
            rank = "3",
            icon = "spell_fire_soulburn",
            source = {
                type = "Trainer",
                cost = 8000,
            },
        },
    },
    [36] = {
        {
            spell_id = 17951,
            name = "Create Firestone",
            rank = "2",
            icon = "inv_misc_gem_bloodstone_02",
            source = {
                type = "Trainer",
                cost = 9000,
            },
        },
        {
            spell_id = 2362,
            name = "Create Spellstone",
            rank = "1",
            icon = "inv_misc_gem_sapphire_01",
            source = {
                type = "Trainer",
                cost = 9000,
            },
        },
        {
            spell_id = 3700,
            name = "Health Funnel",
            rank = "4",
            icon = "spell_shadow_lifedrain",
            source = {
                type = "Trainer",
                cost = 9000,
            },
        },
        {
            spell_id = 11687,
            name = "Life Tap",
            rank = "4",
            icon = "spell_shadow_burningspirit",
            source = {
                type = "Trainer",
                cost = 9000,
            },
        },
        {
            spell_id = 7641,
            name = "Shadow Bolt",
            rank = "6",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 9000,
            },
        },
    },
    [38] = {
        {
            spell_id = 18879,
            name = "Siphon Life",
            rank = "2",
            icon = "spell_shadow_requiem",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 500,
            },
        },
        {
            spell_id = 11711,
            name = "Curse of Agony",
            rank = "4",
            icon = "spell_shadow_curseofsargeras",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 7651,
            name = "Drain Life",
            rank = "4",
            icon = "spell_shadow_lifedrain02",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
        {
            spell_id = 8289,
            name = "Drain Soul",
            rank = "3",
            icon = "spell_shadow_haunting",
            source = {
                type = "Trainer",
                cost = 10000,
            },
        },
    },
    [40] = {
        {
            spell_id = 18869,
            name = "Shadowburn",
            rank = "4",
            icon = "spell_shadow_scourgebuild",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 550,
            },
        },
        {
            spell_id = 20755,
            name = "Create Soulstone",
            rank = "3",
            icon = "inv_misc_orb_04",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 11733,
            name = "Demon Armor",
            rank = "3",
            icon = "spell_shadow_ragingscream",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 5484,
            name = "Howl of Terror",
            rank = "1",
            icon = "spell_shadow_deathscream",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 11665,
            name = "Immolate",
            rank = "5",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
    },
    [42] = {
        {
            spell_id = 7659,
            name = "Curse of Recklessness",
            rank = "3",
            icon = "spell_shadow_unholystrength",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 11707,
            name = "Curse of Weakness",
            rank = "5",
            icon = "spell_shadow_curseofmannoroth",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 6789,
            name = "Death Coil",
            rank = "1",
            icon = "spell_shadow_deathcoil",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 11683,
            name = "Hellfire",
            rank = "2",
            icon = "spell_fire_incinerate",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 17921,
            name = "Searing Pain",
            rank = "4",
            icon = "spell_fire_soulburn",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
        {
            spell_id = 11739,
            name = "Shadow Ward",
            rank = "2",
            icon = "spell_shadow_antishadow",
            source = {
                type = "Trainer",
                cost = 11000,
            },
        },
    },
    [44] = {
        {
            spell_id = 11671,
            name = "Corruption",
            rank = "5",
            icon = "spell_shadow_abominationexplosion",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 11703,
            name = "Drain Mana",
            rank = "3",
            icon = "spell_shadow_siphonmana",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 11725,
            name = "Enslave Demon",
            rank = "2",
            icon = "spell_shadow_enslavedemon",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 11693,
            name = "Health Funnel",
            rank = "5",
            icon = "spell_shadow_lifedrain",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
        {
            spell_id = 11659,
            name = "Shadow Bolt",
            rank = "7",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 12000,
            },
        },
    },
    [46] = {
        {
            spell_id = 17952,
            name = "Create Firestone",
            rank = "3",
            icon = "inv_misc_gem_bloodstone_02",
            source = {
                type = "Trainer",
                cost = 13000,
            },
        },
        {
            spell_id = 11729,
            name = "Create Healthstone",
            rank = "4",
            icon = "inv_stone_04",
            source = {
                type = "Trainer",
                cost = 13000,
            },
        },
        {
            spell_id = 11721,
            name = "Curse of the Elements",
            rank = "2",
            icon = "spell_shadow_chilltouch",
            source = {
                type = "Trainer",
                cost = 13000,
            },
        },
        {
            spell_id = 11699,
            name = "Drain Life",
            rank = "5",
            icon = "spell_shadow_lifedrain02",
            source = {
                type = "Trainer",
                cost = 13000,
            },
        },
        {
            spell_id = 11688,
            name = "Life Tap",
            rank = "5",
            icon = "spell_shadow_burningspirit",
            source = {
                type = "Trainer",
                cost = 13000,
            },
        },
        {
            spell_id = 11677,
            name = "Rain of Fire",
            rank = "3",
            icon = "spell_shadow_rainoffire",
            source = {
                type = "Trainer",
                cost = 13000,
            },
        },
    },
    [48] = {
        {
            spell_id = 18930,
            name = "Conflagrate",
            rank = "2",
            icon = "spell_fire_fireball",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 700,
            },
        },
        {
            spell_id = 18870,
            name = "Shadowburn",
            rank = "5",
            icon = "spell_shadow_scourgebuild",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 700,
            },
        },
        {
            spell_id = 18880,
            name = "Siphon Life",
            rank = "3",
            icon = "spell_shadow_requiem",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 700,
            },
        },
        {
            spell_id = 18647,
            name = "Banish",
            rank = "2",
            icon = "spell_shadow_cripple",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 17727,
            name = "Create Spellstone",
            rank = "2",
            icon = "inv_misc_gem_sapphire_01",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 11712,
            name = "Curse of Agony",
            rank = "5",
            icon = "spell_shadow_curseofsargeras",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
        {
            spell_id = 6353,
            name = "Soul Fire",
            rank = "1",
            icon = "spell_fire_fireball02",
            source = {
                type = "Trainer",
                cost = 14000,
            },
        },
    },
    [50] = {
        {
            spell_id = 18937,
            name = "Dark Pact",
            rank = "2",
            icon = "spell_shadow_darkritual",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 750,
            },
        },
        {
            spell_id = 20756,
            name = "Create Soulstone",
            rank = "4",
            icon = "inv_misc_orb_04",
            source = {
                type = "Trainer",
                cost = 15000,
            },
        },
        {
            spell_id = 11719,
            name = "Curse of Tongues",
            rank = "2",
            icon = "spell_shadow_curseoftounges",
            source = {
                type = "Trainer",
                cost = 15000,
            },
        },
        {
            spell_id = 17925,
            name = "Death Coil",
            rank = "2",
            icon = "spell_shadow_deathcoil",
            source = {
                type = "Trainer",
                cost = 15000,
            },
        },
        {
            spell_id = 11734,
            name = "Demon Armor",
            rank = "4",
            icon = "spell_shadow_ragingscream",
            source = {
                type = "Trainer",
                cost = 15000,
            },
        },
        {
            spell_id = 11667,
            name = "Immolate",
            rank = "6",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 15000,
            },
        },
        {
            spell_id = 1122,
            name = "Inferno",
            rank = "1",
            icon = "spell_shadow_summoninfernal",
        },
        {
            spell_id = 17922,
            name = "Searing Pain",
            rank = "5",
            icon = "spell_fire_soulburn",
            source = {
                type = "Trainer",
                cost = 15000,
            },
        },
    },
    [52] = {
        {
            spell_id = 11708,
            name = "Curse of Weakness",
            rank = "6",
            icon = "spell_shadow_curseofmannoroth",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 11675,
            name = "Drain Soul",
            rank = "4",
            icon = "spell_shadow_haunting",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 11694,
            name = "Health Funnel",
            rank = "6",
            icon = "spell_shadow_lifedrain",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 11660,
            name = "Shadow Bolt",
            rank = "8",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
        {
            spell_id = 11740,
            name = "Shadow Ward",
            rank = "3",
            icon = "spell_shadow_antishadow",
            source = {
                type = "Trainer",
                cost = 18000,
            },
        },
    },
    [54] = {
        {
            spell_id = 18931,
            name = "Conflagrate",
            rank = "3",
            icon = "spell_fire_fireball",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1000,
            },
        },
        {
            spell_id = 11672,
            name = "Corruption",
            rank = "6",
            icon = "spell_shadow_abominationexplosion",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 11700,
            name = "Drain Life",
            rank = "6",
            icon = "spell_shadow_lifedrain02",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 11704,
            name = "Drain Mana",
            rank = "4",
            icon = "spell_shadow_siphonmana",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 11684,
            name = "Hellfire",
            rank = "3",
            icon = "spell_fire_incinerate",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
        {
            spell_id = 17928,
            name = "Howl of Terror",
            rank = "2",
            icon = "spell_shadow_deathscream",
            source = {
                type = "Trainer",
                cost = 20000,
            },
        },
    },
    [56] = {
        {
            spell_id = 18871,
            name = "Shadowburn",
            rank = "6",
            icon = "spell_shadow_scourgebuild",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1100,
            },
        },
        {
            spell_id = 17953,
            name = "Create Firestone",
            rank = "4",
            icon = "inv_misc_gem_bloodstone_02",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 11717,
            name = "Curse of Recklessness",
            rank = "4",
            icon = "spell_shadow_unholystrength",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 6215,
            name = "Fear",
            rank = "3",
            icon = "spell_shadow_possession",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 11689,
            name = "Life Tap",
            rank = "6",
            icon = "spell_shadow_burningspirit",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
        {
            spell_id = 17924,
            name = "Soul Fire",
            rank = "2",
            icon = "spell_fire_fireball02",
            source = {
                type = "Trainer",
                cost = 22000,
            },
        },
    },
    [58] = {
        {
            spell_id = 18881,
            name = "Siphon Life",
            rank = "4",
            icon = "spell_shadow_requiem",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1200,
            },
        },
        {
            spell_id = 11730,
            name = "Create Healthstone",
            rank = "5",
            icon = "inv_stone_04",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 11713,
            name = "Curse of Agony",
            rank = "6",
            icon = "spell_shadow_curseofsargeras",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 17926,
            name = "Death Coil",
            rank = "3",
            icon = "spell_shadow_deathcoil",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 11726,
            name = "Enslave Demon",
            rank = "3",
            icon = "spell_shadow_enslavedemon",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 11678,
            name = "Rain of Fire",
            rank = "4",
            icon = "spell_shadow_rainoffire",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
        {
            spell_id = 17923,
            name = "Searing Pain",
            rank = "6",
            icon = "spell_fire_soulburn",
            source = {
                type = "Trainer",
                cost = 24000,
            },
        },
    },
    [60] = {
        {
            spell_id = 18932,
            name = "Conflagrate",
            rank = "4",
            icon = "spell_fire_fireball",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1300,
            },
        },
        {
            spell_id = 18938,
            name = "Dark Pact",
            rank = "3",
            icon = "spell_shadow_darkritual",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1300,
            },
        },
        {
            spell_id = 30413,
            name = "Shadowfury",
            rank = "2",
            icon = "spell_shadow_shadowfury",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 30404,
            name = "Unstable Affliction",
            rank = "2",
            icon = "spell_shadow_unstableaffliction_3",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 25311,
            name = "Corruption",
            rank = "7",
            icon = "spell_shadow_abominationexplosion",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 20757,
            name = "Create Soulstone",
            rank = "5",
            icon = "inv_misc_orb_04",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 17728,
            name = "Create Spellstone",
            rank = "3",
            icon = "inv_misc_gem_sapphire_01",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 603,
            name = "Curse of Doom",
            rank = "1",
            icon = "spell_shadow_auraofdarkness",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 11722,
            name = "Curse of the Elements",
            rank = "3",
            icon = "spell_shadow_chilltouch",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 11735,
            name = "Demon Armor",
            rank = "5",
            icon = "spell_shadow_ragingscream",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 11695,
            name = "Health Funnel",
            rank = "7",
            icon = "spell_shadow_lifedrain",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 11668,
            name = "Immolate",
            rank = "7",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 25309,
            name = "Immolate",
            rank = "8",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 18540,
            name = "Ritual of Doom",
            rank = "1",
            icon = "spell_shadow_antimagicshell",
            source = {
                type = "Item",
                recipe_item_ids = { 4213 },
                location = "Dreadlords and Doomguard Commanders in Blasted Lands",
            },
        },
        {
            spell_id = 11661,
            name = "Shadow Bolt",
            rank = "9",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
        {
            spell_id = 25307,
            name = "Shadow Bolt",
            rank = "10",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Item",
                recipe_item_ids = { 21281 },
                location = "Boss Drop in AQ20",
            },
        },
        {
            spell_id = 28610,
            name = "Shadow Ward",
            rank = "4",
            icon = "spell_shadow_antishadow",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 23161,
            name = "Summon Dreadsteed",
            rank = "1",
            icon = "ability_mount_dreadsteed",
            source = {
                type = "Quest",
                quest_item_ids = { 7631 },
                location = "Quest Reward from 'Mor'zul Bloodbringer' quest chain at your class trainer in any capital city",
            },
        },
    },
    [61] = {
        {
            spell_id = 27224,
            name = "Curse of Weakness",
            rank = "7",
            icon = "spell_shadow_curseofmannoroth",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
    },
    [62] = {
        {
            spell_id = 27219,
            name = "Drain Life",
            rank = "7",
            icon = "spell_shadow_lifedrain02",
            source = {
                type = "Trainer",
                cost = 30000,
            },
        },
        {
            spell_id = 28176,
            name = "Fel Armor",
            rank = "1",
            icon = "spell_shadow_felarmour",
            source = {
                type = "Trainer",
                cost = 34000,
            },
        },
        {
            spell_id = 25307,
            name = "Shadow Bolt",
            rank = "10",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 26000,
            },
        },
    },
    [63] = {
        {
            spell_id = 27263,
            name = "Shadowburn",
            rank = "7",
            icon = "spell_shadow_scourgebuild",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1300,
            },
        },
        {
            spell_id = 27264,
            name = "Siphon Life",
            rank = "5",
            icon = "spell_shadow_requiem",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 27221,
            name = "Drain Mana",
            rank = "5",
            icon = "spell_shadow_siphonmana",
            source = {
                type = "Trainer",
                cost = 38000,
            },
        },
    },
    [64] = {
        {
            spell_id = 29722,
            name = "Incinerate",
            rank = "1",
            icon = "spell_fire_burnout",
            source = {
                type = "Trainer",
                cost = 42000,
            },
        },
        {
            spell_id = 27211,
            name = "Soul Fire",
            rank = "3",
            icon = "spell_fire_fireball02",
            source = {
                type = "Trainer",
                cost = 42000,
            },
        },
    },
    [65] = {
        {
            spell_id = 27266,
            name = "Conflagrate",
            rank = "5",
            icon = "spell_fire_fireball",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2300,
            },
        },
        {
            spell_id = 27216,
            name = "Corruption",
            rank = "8",
            icon = "spell_shadow_abominationexplosion",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
        {
            spell_id = 27210,
            name = "Searing Pain",
            rank = "7",
            icon = "spell_fire_soulburn",
            source = {
                type = "Trainer",
                cost = 46000,
            },
        },
    },
    [66] = {
        {
            spell_id = 27250,
            name = "Create Firestone",
            rank = "5",
            icon = "inv_misc_gem_bloodstone_02",
            source = {
                type = "Trainer",
                cost = 51000,
            },
        },
        {
            spell_id = 28172,
            name = "Create Spellstone",
            rank = "4",
            icon = "inv_misc_gem_sapphire_01",
            source = {
                type = "Trainer",
                cost = 51000,
            },
        },
        {
            spell_id = 29858,
            name = "Soulshatter",
            rank = "1",
            icon = "spell_arcane_arcane01",
            source = {
                type = "Trainer",
                cost = 51000,
            },
        },
    },
    [67] = {
        {
            spell_id = 27218,
            name = "Curse of Agony",
            rank = "7",
            icon = "spell_shadow_curseofsargeras",
            source = {
                type = "Trainer",
                cost = 57000,
            },
        },
        {
            spell_id = 27217,
            name = "Drain Soul",
            rank = "5",
            icon = "spell_shadow_haunting",
            source = {
                type = "Trainer",
                cost = 57000,
            },
        },
        {
            spell_id = 27259,
            name = "Health Funnel",
            rank = "8",
            icon = "spell_shadow_lifedrain",
            source = {
                type = "Trainer",
                cost = 57000,
            },
        },
    },
    [68] = {
        {
            spell_id = 27230,
            name = "Create Healthstone",
            rank = "6",
            icon = "inv_stone_04",
            source = {
                type = "Trainer",
                cost = 63000,
            },
        },
        {
            spell_id = 27223,
            name = "Death Coil",
            rank = "4",
            icon = "spell_shadow_deathcoil",
            source = {
                type = "Trainer",
                cost = 63000,
            },
        },
        {
            spell_id = 27213,
            name = "Hellfire",
            rank = "4",
            icon = "spell_fire_incinerate",
            source = {
                type = "Trainer",
                cost = 63000,
            },
        },
        {
            spell_id = 27222,
            name = "Life Tap",
            rank = "7",
            icon = "spell_shadow_burningspirit",
            source = {
                type = "Trainer",
                cost = 56700,
            },
        },
        {
            spell_id = 29893,
            name = "Ritual of Souls",
            rank = "1",
            icon = "spell_shadow_shadesofdarkness",
            source = {
                type = "Trainer",
                cost = 63000,
            },
        },
    },
    [69] = {
        {
            spell_id = 27226,
            name = "Curse of Recklessness",
            rank = "5",
            icon = "spell_shadow_unholystrength",
            source = {
                type = "Trainer",
                cost = 70000,
            },
        },
        {
            spell_id = 27228,
            name = "Curse of the Elements",
            rank = "4",
            icon = "spell_shadow_chilltouch",
            source = {
                type = "Trainer",
                cost = 70000,
            },
        },
        {
            spell_id = 30909,
            name = "Curse of Weakness",
            rank = "8",
            icon = "spell_shadow_curseofmannoroth",
            source = {
                type = "Trainer",
                cost = 70000,
            },
        },
        {
            spell_id = 27220,
            name = "Drain Life",
            rank = "8",
            icon = "spell_shadow_lifedrain02",
            source = {
                type = "Trainer",
                cost = 70000,
            },
        },
        {
            spell_id = 28189,
            name = "Fel Armor",
            rank = "2",
            icon = "spell_shadow_felarmour",
            source = {
                type = "Trainer",
                cost = 70000,
            },
        },
        {
            spell_id = 27215,
            name = "Immolate",
            rank = "9",
            icon = "spell_fire_immolation",
            source = {
                type = "Trainer",
                cost = 70000,
            },
        },
        {
            spell_id = 27212,
            name = "Rain of Fire",
            rank = "5",
            icon = "spell_shadow_rainoffire",
            source = {
                type = "Trainer",
                cost = 70000,
            },
        },
        {
            spell_id = 27209,
            name = "Shadow Bolt",
            rank = "11",
            icon = "spell_shadow_shadowbolt",
            source = {
                type = "Trainer",
                cost = 70000,
            },
        },
    },
    [70] = {
        {
            spell_id = 30912,
            name = "Conflagrate",
            rank = "6",
            icon = "spell_fire_fireball",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 3900,
            },
        },
        {
            spell_id = 27265,
            name = "Dark Pact",
            rank = "4",
            icon = "spell_shadow_darkritual",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 1300,
            },
        },
        {
            spell_id = 30546,
            name = "Shadowburn",
            rank = "8",
            icon = "spell_shadow_scourgebuild",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 3900,
            },
        },
        {
            spell_id = 30414,
            name = "Shadowfury",
            rank = "3",
            icon = "spell_shadow_shadowfury",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 30911,
            name = "Siphon Life",
            rank = "6",
            icon = "spell_shadow_requiem",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 30405,
            name = "Unstable Affliction",
            rank = "3",
            icon = "spell_shadow_unstableaffliction_3",
            type = "Talent",
            source = {
                type = "Trainer",
                cost = 2500,
            },
        },
        {
            spell_id = 27238,
            name = "Create Soulstone",
            rank = "6",
            icon = "inv_misc_orb_04",
            source = {
                type = "Trainer",
                cost = 78000,
            },
        },
        {
            spell_id = 30910,
            name = "Curse of Doom",
            rank = "2",
            icon = "spell_shadow_auraofdarkness",
            source = {
                type = "Trainer",
                cost = 78000,
            },
        },
        {
            spell_id = 27260,
            name = "Demon Armor",
            rank = "6",
            icon = "spell_shadow_ragingscream",
            source = {
                type = "Trainer",
                cost = 78000,
            },
        },
        {
            spell_id = 30908,
            name = "Drain Mana",
            rank = "6",
            icon = "spell_shadow_siphonmana",
            source = {
                type = "Trainer",
                cost = 78000,
            },
        },
        {
            spell_id = 32231,
            name = "Incinerate",
            rank = "2",
            icon = "spell_fire_burnout",
            source = {
                type = "Trainer",
                cost = 78000,
            },
        },
        {
            spell_id = 30459,
            name = "Searing Pain",
            rank = "8",
            icon = "spell_fire_soulburn",
            source = {
                type = "Trainer",
                cost = 78000,
            },
        },
        {
            spell_id = 27243,
            name = "Seed of Corruption",
            rank = "1",
            icon = "spell_shadow_seedofdestruction",
            source = {
                type = "Trainer",
                cost = 78000,
            },
        },
        {
            spell_id = 30545,
            name = "Soul Fire",
            rank = "4",
            icon = "spell_fire_fireball02",
            source = {
                type = "Trainer",
                cost = 78000,
            },
        },
    },
}

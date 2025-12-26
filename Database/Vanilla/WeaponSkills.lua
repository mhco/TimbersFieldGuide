local _, TFG = ...

TFG.WEAPONS_VANILLA = {
    ["bows"] = {
        ["name"] = "Bows",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_weapon_bow_05",
        ["id"] = 264
    },
    ["crossbows"] = {
        ["name"] = "Crossbows",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_weapon_crossbow_01",
        ["id"] = 5011
    },
    ["daggers"] = {
        ["name"] = "Daggers",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/ability_steelmelee",
        ["id"] = 1180
    },
    ["fist_weapons"] = {
        ["name"] = "Fist Weapons",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_gauntlets_04",
        ["id"] = 15590
    },
    ["guns"] = {
        ["name"] = "Guns",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_weapon_rifle_01",
        ["id"] = 266
    },
    ["one_handed_axes"] = {
        ["name"] = "Axes",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_axe_01",
        ["id"] = 196
    },
    ["one_handed_maces"] = {
        ["name"] = "Maces",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_mace_01",
        ["id"] = 198
    },
    ["one_handed_swords"] = {
        ["name"] = "Swords",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/ability_meleedamage",
        ["id"] = 201
    },
    ["polearms"] = {
        ["name"] = "Polearms",
        ["rank"] = 1,
        ["cost"] = 10000,
        ["texture"] = "Interface/ICONS/inv_spear_06",
        ["id"] = 200
    },
    ["staves"] = {
        ["name"] = "Staves",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_staff_08",
        ["id"] = 227
    },
    ["thrown"] = {
        ["name"] = "Thrown",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_throwingknife_02",
        ["id"] = 2567
    },
    ["two_handed_axes"] = {
        ["name"] = "Two-Handed Axes",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_axe_04",
        ["id"] = 197
    },
    ["two_handed_maces"] = {
        ["name"] = "Two-Handed Maces",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/inv_mace_04",
        ["id"] = 199
    },
    ["two_handed_swords"] = {
        ["name"] = "Two-Handed Swords",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/ability_meleedamage",
        ["id"] = 202
    },
    ["wands"] = {
        ["name"] = "Wands",
        ["rank"] = 1,
        ["cost"] = 1000,
        ["texture"] = "Interface/ICONS/ability_shootwand",
        ["id"] = 5009
    }
}

TFG.WEAPON_SKILLS_VANILLA = {
    [1] = { -- Warrior.
        TFG.copy(weapons.bows),
        TFG.copy(weapons.crossbows),
        TFG.copy(weapons.daggers),
        TFG.copy(weapons.fist_weapons),
        TFG.copy(weapons.guns),
        TFG.copy(weapons.one_handed_axes),
        TFG.copy(weapons.one_handed_maces),
        TFG.copy(weapons.one_handed_swords),
        TFG.copy(weapons.polearms),
        TFG.copy(weapons.staves),
        TFG.copy(weapons.thrown),
        TFG.copy(weapons.two_handed_axes),
        TFG.copy(weapons.two_handed_maces),
        TFG.copy(weapons.two_handed_swords)
    },
    [2] = { -- Paladin.
        TFG.copy(weapons.one_handed_axes),
        TFG.copy(weapons.one_handed_maces),
        TFG.copy(weapons.one_handed_swords),
        TFG.copy(weapons.polearms),
        TFG.copy(weapons.two_handed_axes),
        TFG.copy(weapons.two_handed_maces),
        TFG.copy(weapons.two_handed_swords)
    },
    [3] = { -- Hunter.
        TFG.copy(weapons.bows),
        TFG.copy(weapons.crossbows),
        TFG.copy(weapons.daggers),
        TFG.copy(weapons.fist_weapons),
        TFG.copy(weapons.guns),
        TFG.copy(weapons.one_handed_axes),
        TFG.copy(weapons.one_handed_swords),
        TFG.copy(weapons.polearms),
        TFG.copy(weapons.staves),
        TFG.copy(weapons.thrown),
        TFG.copy(weapons.two_handed_axes),
        TFG.copy(weapons.two_handed_swords)
    },
    [4] = { -- Rogue.
        TFG.copy(weapons.bows),
        TFG.copy(weapons.crossbows),
        TFG.copy(weapons.daggers),
        TFG.copy(weapons.fist_weapons),
        TFG.copy(weapons.guns),
        TFG.copy(weapons.one_handed_maces),
        TFG.copy(weapons.one_handed_swords),
        TFG.copy(weapons.thrown)
    },
    [5] = { -- Priest.
        TFG.copy(weapons.daggers),
        TFG.copy(weapons.one_handed_maces),
        TFG.copy(weapons.staves),
        TFG.copy(weapons.wands)
    },
    [6] = { -- Shaman.
        TFG.copy(weapons.daggers),
        TFG.copy(weapons.one_handed_axes),
        TFG.copy(weapons.one_handed_maces),
        TFG.copy(weapons.staves),
        TFG.copy(weapons.two_handed_axes),
        TFG.copy(weapons.two_handed_maces)
    },
    [7] = { -- Mage.
        TFG.copy(weapons.daggers),
        TFG.copy(weapons.one_handed_swords),
        TFG.copy(weapons.staves),
        TFG.copy(weapons.wands)
    },
    [8] = { -- Warlock.
        TFG.copy(weapons.daggers),
        TFG.copy(weapons.one_handed_swords),
        TFG.copy(weapons.staves),
        TFG.copy(weapons.wands)
    },
    [9] = { -- Druid.
        TFG.copy(weapons.daggers),
        TFG.copy(weapons.fist_weapons),
        TFG.copy(weapons.one_handed_maces),
        TFG.copy(weapons.staves),
        TFG.copy(weapons.two_handed_maces)
    },
}

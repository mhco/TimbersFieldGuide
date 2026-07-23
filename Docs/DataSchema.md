# Database schema

Reference for the Lua data files under `TimbersFieldGuide/Database/`. The code
that actually reads these fields is `Core/Model.lua` (see `normalizeSource` and
the accessors exported at the bottom of that file); if this document and the
code ever disagree, the code wins and this file needs updating.

## Layout and registration

```
Database/
  <Expansion>/            ClassicEra, BurningCrusade
    Classes/              one file per class, plus HunterPets, WarlockPets, RoguePoisons
    Professions/          one file per profession
    Skills/               WeaponSkills, Riding (BC only)
```

Each file defines one global table on the addon namespace, named
`TFG.<NAME>_<EXPANSION>`, e.g. `TFG.ALCHEMY_BURNING_CRUSADE`. New tables must
be registered in `Core/Database.lua` (`TFG.DATABASE_FILES`) and the file added
to the `.toc`, or they will never load.

## Common shape

A database table maps numeric buckets to arrays of entries:

```lua
TFG.ALCHEMY_BURNING_CRUSADE = {
    [1]   = { entry, entry, ... },   -- bucket key = skill level (professions)
    [50]  = { entry, ... },
    ...
}
```

What the bucket key means depends on the file:

| File kind      | Bucket key                                  |
|----------------|---------------------------------------------|
| Classes / Pets | character level the ability trains at       |
| Professions    | profession skill level the recipe trains at |
| RoguePoisons   | character level                             |
| Riding         | character level                             |
| WeaponSkills   | not numeric: keyed by class token (`druid`, `warrior`, ...) |

A file may also carry an optional `__CONFIG` metadata key (ignored by the
bucket iteration in `Core/Database.lua`) that tells the list view how to group
rows:

```lua
TFG.RIDING_BURNING_CRUSADE.__CONFIG = { mode = "level" }   -- "Level N" headers
TFG.WEAPON_SKILLS_BURNING_CRUSADE.__CONFIG = { mode = "class" } -- grouped by class, player's class first
```

General authoring rules, all entry kinds:

- Omit empty fields entirely. No `cost = 0`, no `location = ""`, no
  `quest_ids = {}` placeholders.
- `rank` is a number (`rank = 2`), never a string.
- `icon` is the short icon name (`"inv_potion_91"`), not a full texture path.
- Omit `source` entirely when the thing is learned automatically by leveling.

## The `source` array

Shared by every entry kind. `source` is an **array of source objects**, one per
independent way to obtain the entry (Horde vendor and Alliance vendor are two
sources; a trainer and a rare drop are two sources; and so on).

```lua
source = {
    {
        type = "Vendor",
        item_id = 22905,
        cost = 40000,
        location = "Logistics Officer Ulrike, Honor Hold (Honored)",
        faction = "Alliance",
        phase = 1,
    },
    {
        type = "Vendor",
        item_id = 24001,
        cost = 40000,
        location = "Quartermaster Urgronn, Thrallmar (Honored)",
        faction = "Horde",
        phase = 1,
    },
},
```

Fields, all optional except `type`:

| Field        | Type   | Meaning |
|--------------|--------|---------|
| `type`       | string | How it is obtained: `Trainer`, `Vendor`, `Drop`, `Quest`, `Discovery`, `Reputation`. |
| `item_id`    | number | Item ID of the recipe/pattern/design/tome the player learns from. Omit when there is no physical item (trainer-taught, discovery). |
| `cost`       | number | Price in copper (vendor price or training cost). Omit if free. |
| `location`   | string | Human-readable "where": vendor name and spot, dungeon, quest giver, rep level. Shown as the primary text of the source line in the popup, so name the vendor/drop here rather than repeating the type. Omit if there is nothing useful to say. |
| `faction`    | string | `Alliance` or `Horde`. Display label only, see Faction below. Only used on entries whose top-level faction is neutral. Omit otherwise. |
| `quest_id`   | number | For `Quest` sources: the quest ID. The popup resolves the quest title from the client API at runtime. |
| `quest_name` | string | Optional authored fallback title for a `Quest` source, used only when the client API cannot resolve `quest_id` to a name. |
| `phase`      | number | Content phase in which this source becomes available. Omit for launch (treated as phase 1). |

Legacy note: `type = "Item"` still renders (as "Vendor" when `cost > 0`,
otherwise "Recipe") but is a pre-migration leftover; do not author new data
with it. Likewise the old single-object `source = { type = ... }` form and the
old `recipe_item_ids` / `quest_ids` list fields are gone; always write the
array form with per-source `item_id` / `quest_id`.

## Phase

- Effective phase of an entry = `entry.phase` if set (explicit override),
  otherwise the **minimum** phase across its sources, where a source without a
  phase counts as 1.
- An entry with no phase anywhere is treated as always available.
- Prefer per-source `phase`; only set the top-level `entry.phase` when you need
  to override the derived value.
- The phase filter, the phase dropdown range, the grid indicator and the
  tooltip all go through `TFG.GetEffectivePhase`.

## Faction

Two different fields with two different jobs, same value space
(`"Alliance"` / `"Horde"`):

- **Top-level `entry.faction` is the filter.** The entry is hidden from the
  other faction unless the "show enemy" toggle is on, and is excluded from
  known/progress counts for the other faction. Omit it (or use `""`) for
  entries available to both.
- **Per-source `faction` is a label.** All sources are always listed in the
  popup regardless of the player's faction; the label just tags which side the
  source serves, and the list sorts own-faction and neutral sources first.
  Only used on entries that are themselves neutral (a filtered entry implies
  its faction already).

Never combine a top-level faction with a source labeled for the opposite
faction; the validator treats that as an error.

## Class entries

`Database/<Expansion>/Classes/*.lua`, including the pet files. Canonical
template: header comment of `Database/BurningCrusade/Classes/Priest.lua`.

```lua
{
    spell_id = 1243,
    name = "Power Word: Fortitude",
    rank = 1,                  -- number
    icon = "spell_holy_wordfortitude",
    type = "Ability",          -- "Ability" | "Talent"; needed because ids cannot discriminate
    categories = { ... },      -- optional grouping for the category dropdown
    group = "",                -- optional rank-chain key: entries sharing a group are ranks of one spell line
    faction = "Alliance",      -- FILTER, see Faction above; omit for both factions
    races = { "Night Elf" },   -- optional race restriction; omit for all races
    source = { ... },          -- see The source array; omit if learned on level-up
    phase = 1,                 -- entry override; usually omit
}
```

Notes:

- `type = "Talent"` drives the talent checkbox filtering and known-rank logic.
  Plain trainable abilities can omit `type` (absent means ability).
- `races` also accepts a legacy singular `race = "Night Elf, Tauren"` string,
  but author the array form.
- `group` lets the list mark higher ranks of a line the player has invested in
  (used heavily by RoguePoisons, e.g. `group = "instant_poison"`).

## Profession entries

`Database/<Expansion>/Professions/*.lua`. Canonical template: header comment
of `Database/BurningCrusade/Professions/Alchemy.lua`.

Professions have **no top-level `type`**. The entry kind is implicit in which
id field is present:

- `spell_id` = something you learn or do (a recipe, or the profession rank
  itself).
- `item_id` = a world item shown in the guide (rare: gathering nodes etc.).
- `product` present = a craftable recipe.

```lua
{
    spell_id = 3230,
    name = "Elixir of Minor Agility",
    categories = { "Elixirs" },        -- e.g. Elixirs, Potions, Gear, Profession Training
    icon = "inv_potion_91",
    source = { ... },                  -- see The source array; omit if learned by leveling up the skill
    product = { item_id = 2457, qty = 1 },
    materials = {
        { item_id = 2452, qty = 1 },
        { item_id = 765,  qty = 1 },
    },
    levels = { 50, 80, 100, 120 },     -- orange / yellow / green / gray skill-up thresholds
    phase = 1,                         -- entry override; usually omit
}
```

Notes:

- `product.qty` and `materials[n].qty` default to 1; the reader also accepts a
  legacy `quantity` key, but author `qty`.
- `levels` is always the four difficulty thresholds in
  orange/yellow/green/gray order. The first value doubles as the skill level
  shown as "learnable at".
- Profession rank entries (Apprentice/Journeyman/...) are ordinary entries in
  the `Profession Training` category with a `Trainer` source and no product.

## Skill entries

`Database/<Expansion>/Skills/`.

**WeaponSkills** is keyed by lowercase class token instead of a numeric
bucket, with `__CONFIG = { mode = "class" }`. Entries are minimal and use `id`
rather than `spell_id`:

```lua
TFG.WEAPON_SKILLS_BURNING_CRUSADE = {
    druid = {
        {
            id = 199,                -- weapon skill line / spell id
            name = "Two-Handed Maces",
            icon = "inv_mace_04",
            source = { { type = "Trainer", cost = 1000 } },
        },
        ...
    },
    ...
}
```

**Riding** uses numeric character-level buckets with
`__CONFIG = { mode = "level" }` and normal class-style entries (`spell_id`,
`rank`, `source`).

The reader (`Core/Model.lua`) accepts `id` as a fallback for `spell_id`
everywhere, but only WeaponSkills should use it.

## Validation

`Tests/Validate.ps1` runs static checks over the database files and the model
code (phase plumbing, known bad patterns, the faction invariant). Run it after
any data change; it must pass before handing over a build.

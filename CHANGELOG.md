# Changelog

## v2026.07.23 (2026-07-23)

This release is a full redesign of the addon. The old dropdown-driven window is replaced with browsable pages for classes, professions, and skills, and recipes now carry much richer data: every place you can get them, what they cost, and which content phase unlocks them.

### New
- Rebuilt the navigation as data-driven pages: pick a class, profession, or skill from landing pages instead of dropdown menus
- Redesigned the recipe popup: what it makes, skill-up levels, materials, and every source for the recipe with location, cost, and phase
- Recipes can now list multiple sources (for example a Horde and an Alliance vendor), with your own faction and neutral sources listed first and faction tags colored blue/red
- Recipes are tagged with the content phase they become available in and are hidden until their phase; the popup shows a phase badge
- Magister's Terrace re-issue recipes now also show their original pre-Sunwell sources
- Rogue poisons moved to their own page under the Rogue class instead of the professions list

### Fixed
- Duplicated recipe materials
- Profession known-spell counts, search, and skill-range display
- Flarecore patterns: sold by the Thorium Brotherhood at the listed reputation and price, not dropped from Molten Core trash
- Click outside the recipe popup to close it

### Housekeeping
- Updated for game clients 1.15.9 and 2.5.6
- The addon zip now includes the license
- Reorganized the code and database files internally; documentation moved to the Docs folder

## v2026.07.07 (2026-07-08)

- Updated TOC file with latest version
- Added compressed files to gitignore for protection


## v2026.07.01a (2026-07-02)

- Bump version to v2026.07.01a
- Add .pkgmeta and ship the license with the addon
- Nest the addon payload in a TimbersFieldGuide subfolder
- Ignore CurseForge build output
- Bump version to v2026.07.01
- Add phase screenshot and Lua syntax-check test
- Use plain hyphens in the /tfg usage text
- Fix duplicated recipe materials
- Left-align popup Skill Levels when there is no product
- Centralize colors in UI/Theme.lua; tidy Util and entry points
- Rename Layout.lua to UI/ListView.lua
- Extract the recipe popup into UI/RecipePopup.lua
- Extract the data model into Core/Model.lua
- Group UI files into UI/ and Launchers/ folders
- Drop the read-shim's legacy source handling
- Canonicalize remaining quest sources
- Gate recipes by effective phase; color faction squares
- Apply per-source phase tags from PhaseReview
- Consolidate Rogue poison data into one file
- Give the Magister's Terrace re-issue recipes real original sources
- Recipe popup: phase badge and click-outside-to-close
- Enrich multi-source recipes into true source arrays
- Loosen the phase-tag profession sentinel to a subset guard
- Convert skill source fields to the source array shape
- Convert profession source fields to the source array shape
- Convert class source fields to the source array shape
- Preload popup item data and refresh when it arrives
- Add source-array read shim and redesign the recipe popup
- Reflow the filter row so hidden controls leave no gap
- Remove inert legacy in-frame chrome; fix profession known/search/range
- Rename data symbols and folders to version-based names
- Migrate to data-driven navigation UI


## v2026.06.19 (2026-06-19)




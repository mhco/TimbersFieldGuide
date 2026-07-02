param(
    [string]$Root = (Join-Path (Split-Path -Parent $PSScriptRoot) "TimbersFieldGuide")
)

$ErrorActionPreference = "Stop"
$failures = [System.Collections.Generic.List[string]]::new()

function Assert-True {
    param(
        [bool]$Condition,
        [string]$Message
    )
    if (-not $Condition) {
        $failures.Add($Message)
    }
}

function Get-RelativePath {
    param([string]$Path)
    return $Path.Substring($Root.Length + 1).Replace("\", "/")
}

$tocPath = Join-Path $Root "TimbersFieldGuide.toc"
$tocLines = Get-Content -LiteralPath $tocPath |
    Where-Object { $_ -and -not $_.StartsWith("#") }
$tocFiles = $tocLines | ForEach-Object { $_.Replace("\", "/") }

foreach ($relativePath in $tocFiles) {
    Assert-True (Test-Path -LiteralPath (Join-Path $Root $relativePath)) "TOC references missing file: $relativePath"
}

$databaseFiles = Get-ChildItem -LiteralPath (Join-Path $Root "Database") -Recurse -Filter "*.lua"
foreach ($file in $databaseFiles) {
    $relativePath = Get-RelativePath $file.FullName
    Assert-True ($tocFiles -contains $relativePath) "Database file is not loaded by the TOC: $relativePath"
}

$definitions = @{}
foreach ($file in $databaseFiles) {
    $content = Get-Content -LiteralPath $file.FullName -Raw
    foreach ($match in [regex]::Matches($content, "TFG\.([A-Z][A-Z0-9_]*)\s*=")) {
        $definitions[$match.Groups[1].Value] = Get-RelativePath $file.FullName
    }
}

$databaseCore = Get-Content -LiteralPath (Join-Path $Root "Core/Database.lua") -Raw
$databaseCoreWithoutComments = $databaseCore -replace "(?m)--.*$", ""
$references = [regex]::Matches($databaseCoreWithoutComments, "file\s*=\s*TFG\.([A-Z][A-Z0-9_]*)") |
    ForEach-Object { $_.Groups[1].Value } |
    Sort-Object -Unique

foreach ($reference in $references) {
    Assert-True $definitions.ContainsKey($reference) "Database registry reference has no definition: TFG.$reference"
}

Assert-True ($databaseCore -match "currentPhase\s*=\s*2") "TBC currentPhase must default to 2."
Assert-True ($databaseCore -match "DISCOVERY_BUCKET\s*=\s*999") "Discovery bucket constant must remain 999."
Assert-True ($databaseCore -match 'shaman\s*=\s*\{[\s\S]*?color\s*=\s*TFG\.CLASS_COLORS\["PALADIN"\]') "Vanilla Shaman must retain the intentional Paladin color."
Assert-True ($databaseCoreWithoutComments -notmatch '\{\s*name\s*=\s*"[^"]+"\s*,\s*file\s*=\s*TFG\.') "Selectable child views must define a stable key before name/file."

$vanillaFirstAid = Get-Content -LiteralPath (Join-Path $Root "Database/ClassicEra/Professions/FirstAid.lua") -Raw
$tbcFirstAid = Get-Content -LiteralPath (Join-Path $Root "Database/BurningCrusade/Professions/FirstAid.lua") -Raw
Assert-True ($vanillaFirstAid -match "TFG\.FIRST_AID_CLASSIC_ERA\s*=") "Vanilla First Aid symbol is incorrect."
Assert-True ($tbcFirstAid -match "TFG\.FIRST_AID_BURNING_CRUSADE\s*=") "TBC First Aid symbol is incorrect."

$layout = Get-Content -LiteralPath (Join-Path $Root "UI/ListView.lua") -Raw
$model = Get-Content -LiteralPath (Join-Path $Root "Core/Model.lua") -Raw
$recipePopup = Get-Content -LiteralPath (Join-Path $Root "UI/RecipePopup.lua") -Raw
$theme = Get-Content -LiteralPath (Join-Path $Root "UI/Theme.lua") -Raw
Assert-True ($layout -notmatch '::\(%d\+\)') "Runtime selection parsing still depends on numeric child indexes."
Assert-True ($model -match "function getEffectivePhase") "Phase availability must use the effective (min-over-sources) phase."
Assert-True ($model -match "entryPhase\s*==\s*nil\s*then\s*return\s*true") "Missing phase values must remain unrestricted."
Assert-True ($model -match "phase\s*<=\s*selectedPhase|entryPhase\s*<=\s*selectedPhase") "Phase filtering must be cumulative."
Assert-True ($layout -notmatch 'extractCategoriesFromDatabase[\s\S]{0,900}?isEntryAvailableInPhase') "Category options must be extracted from the full database, not the selected phase."
Assert-True ($layout -match "No entries match the current filters") "Filtered empty-state message is missing."
Assert-True ($layout -match "This view is not available for this expansion") "Unavailable-view message is missing."
Assert-True ($layout -match "renderPool\s*=\s*\{") "Main-list row/icon pooling is missing."
Assert-True ($recipePopup -match "activeIconCount") "Profession popup icon pooling is missing."
Assert-True ($layout -match "isIconInsideScrollViewport") "Offscreen icons must not retain mouse interaction."
Assert-True ($layout -match "tfgPhaseIndicator") "Phased profession icons must display a phase-number indicator."
# (Category/Phase dropdown signature guards now live in the navigation shell;
# they are asserted against TestUI.lua further below.)
foreach ($eventName in "PLAYER_LEVEL_UP", "SKILL_LINES_CHANGED", "SPELLS_CHANGED", "LEARNED_SPELL_IN_TAB") {
    Assert-True ($layout -match [regex]::Escape($eventName)) "Live refresh event is missing: $eventName"
}
Assert-True ($layout -notmatch 'TimbersFieldGuideDB[\s\S]{0,40}phase') "Phase selection must not be persisted."

$frame = Get-Content -LiteralPath (Join-Path $Root "UI/Window.lua") -Raw
Assert-True ($frame -match "frame:Hide\(\)") "Main frame must explicitly start hidden."
Assert-True ($frame -notmatch "DebugWindow|tryRegisterDebugTab") "External debug-window integration must remain removed."

$minimap = Get-Content -LiteralPath (Join-Path $Root "Launchers/Minimap.lua") -Raw
Assert-True ($minimap -notmatch 'HookScript\("OnClick"') "Minimap right-click must not be hooked twice."

# The split Poisons.lua details file was consolidated into RoguePoisons.lua.
$activePoisons = Get-Content -LiteralPath (Join-Path $Root "Database/BurningCrusade/Classes/RoguePoisons.lua") -Raw
Assert-True (-not (Test-Path -LiteralPath (Join-Path $Root "Database/BurningCrusade/Professions/Poisons.lua"))) "The split Poisons.lua details file must be removed after consolidation."
Assert-True ($activePoisons -match "TFG\.ROGUE_POISONS_BURNING_CRUSADE\s*=") "TBC Rogue Poison symbol is incorrect."
Assert-True (($activePoisons -match "product\s*=\s*\{\s*item_id") -and ($activePoisons -match "materials\s*=\s*\{")) "Consolidated Rogue Poisons must carry the crafting details (product/materials)."

$phasedProfessionFiles = Get-ChildItem -LiteralPath (Join-Path $Root "Database/BurningCrusade/Professions") -Filter "*.lua" |
    Where-Object {
        $content = Get-Content -LiteralPath $_.FullName -Raw
        $content = $content -replace '(?s)--\[\[.*?\]\]', '' -replace '(?m)--.*$', ''
        $content -match 'phase\s*=\s*[2-9]'
    } |
    ForEach-Object { $_.BaseName } |
    Sort-Object
# The source-array migration legitimately spreads phase tags to more professions
# (per-source phases on Sunwell/Magister's Terrace re-issue alternates), so this is
# a subset guard: the originally phased professions must keep their tags, but new
# additions are allowed. Specific phase anchors are asserted individually below.
foreach ($corePhasedProfession in @("Enchanting", "Jewelcrafting", "Tailoring")) {
    Assert-True ($phasedProfessionFiles -contains $corePhasedProfession) "Profession '$corePhasedProfession' must retain its future-phase tags."
}

$tailoring = Get-Content -LiteralPath (Join-Path $Root "Database/BurningCrusade/Professions/Tailoring.lua") -Raw
Assert-True ($tailoring -match 'spell_id\s*=\s*36315[\s\S]{0,400}?phase\s*=\s*2') "Belt of Blasting must be marked as Phase 2."
Assert-True ($tailoring -match 'spell_id\s*=\s*40020[\s\S]{0,400}?phase\s*=\s*3') "Black Temple Tailoring recipes must be marked as Phase 3."
Assert-True ($tailoring -match 'spell_id\s*=\s*50194[\s\S]{0,400}?phase\s*=\s*2') "Mycah's Botanical Bag must be marked as Phase 2."
Assert-True ($tailoring -match 'spell_id\s*=\s*46128[\s\S]{0,400}?phase\s*=\s*5') "Sunwell Tailoring recipes must be marked as Phase 5."

$weaponSkills = Get-Content -LiteralPath (Join-Path $Root "Database/BurningCrusade/Skills/WeaponSkills.lua") -Raw
Assert-True ($weaponSkills -notmatch 'name\s*=\s*"One-Handed Swords"[\s\S]{0,160}?source\s*=\s*\{[\s\S]{0,160}?icon\s*=[\s\S]{0,160}?source\s*=\s*\{') "TBC Weapon Skills still contains the duplicate source field."

$testUI = Get-Content -LiteralPath (Join-Path $Root "UI/Navigation.lua") -Raw
$slash = Get-Content -LiteralPath (Join-Path $Root "Launchers/Slash.lua") -Raw
Assert-True ($testUI -match "function TFG\.ToggleTestUI") "Navigation mockup toggle is missing."
Assert-True ($testUI -match '"Classes"[\s\S]*"Professions"[\s\S]*"Skills"') "Navigation mockup bottom tabs are missing."
Assert-True ($testUI -match 'closeTab[\s\S]*expansionTab') "Navigation mockup expansion and close controls must be adjacent top tabs."
Assert-True ($testUI -match 'selectPage\("about"\)') "The title tab must open the About page."
Assert-True ($testUI -notmatch 'browserPanel|renderBrowser') "Bottom navigation must use dedicated pages, not an overlay browser."
Assert-True ($testUI -match 'TAB_HEIGHT\s*=\s*42') "Navigation mockup tabs must share the reduced common height."
Assert-True ($testUI -match 'TAB_GAP\s*=\s*7') "Navigation mockup tab groups must share a common gap."
Assert-True ($testUI -match 'applyTabBackdrop') "Navigation mockup tabs must share borderless styling."
Assert-True ($testUI -match 'hasSubpages\s*and\s*-\(TAB_HEIGHT\s*\+\s*12\)\s*or\s*-8') "Pages without subpages must expand into the secondary-tab space."
Assert-True ($theme -match 'tabSelected\s*=\s*\{\s*0\.14,\s*0\.14,\s*0\.13') "Active tabs must match the active chrome section."
Assert-True ($theme -match 'content\s*=\s*\{\s*0\.34,\s*0\.34,\s*0\.34') "The page and scrollable content must share the medium-gray surface."
Assert-True ($testUI -match 'tab\.activeColor\s*=\s*COLORS\.content') "The active subpage tab must merge into the page surface."
# The new shell re-hosts the live render engine and drives navigation from the
# database registry rather than hardcoded mockup tables.
Assert-True ($testUI -match 'MountEngineInto') "The new UI must mount the live render engine, not draw placeholder rows."
Assert-True ($testUI -match 'getPlayerProfessions') "Top profession tabs must come from the player's skills, not a hardcoded list."
Assert-True ($testUI -match 'categoryDropdown\._sig') "The category dropdown must not be reinitialized while its option set is unchanged."
Assert-True ($testUI -match 'phaseDropdown\._sig') "The phase dropdown must not be reinitialized while its option set is unchanged."
Assert-True ($testUI -notmatch 'MOCK_QUICK_PROFESSIONS') "Hardcoded mock profession tabs must be removed."
Assert-True ($testUI -notmatch 'CLASS_SPECIAL_CHILDREN') "Class child pages must come from the registry, not a hardcoded UI table."
Assert-True ($testUI -notmatch 'RUNES_ICON') "The unconditional Runes child tab must be removed."
Assert-True ($slash -match 'TFG\.ToggleMainUI') "/tfg must open the main navigation UI."
Assert-True ($slash -notmatch 'ToggleTestUI2') "The retired /tfg test2 command must be removed."

if ($failures.Count -gt 0) {
    Write-Host "Validation failed:" -ForegroundColor Red
    foreach ($failure in $failures) {
        Write-Host " - $failure" -ForegroundColor Red
    }
    exit 1
}

Write-Host "Timber's Field Guide validation passed." -ForegroundColor Green

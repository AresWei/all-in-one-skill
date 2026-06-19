$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$skillPath = Join-Path $root "skills/ALL-IN-ONE/SKILL.md"
$readmePath = Join-Path $root "README.md"
$readmeZhPath = Join-Path $root "README.zh-CN.md"
$usagePath = Join-Path $root "docs/usage.md"
$testMatrixPath = Join-Path $root "docs/test-matrix.md"
$notesPath = Join-Path $root "docs/optimization-notes.md"
$enImagePath = Join-Path $root "assets/all-in-one-routing-tutorial-en.png"
$zhImagePath = Join-Path $root "assets/all-in-one-routing-tutorial-zh.png"

function Assert-True {
    param(
        [bool] $Condition,
        [string] $Message
    )
    if (-not $Condition) {
        throw "Validation failed: $Message"
    }
    Write-Output "ok: $Message"
}

$skill = Get-Content -Raw -LiteralPath $skillPath
$readme = Get-Content -Raw -LiteralPath $readmePath
$readmeZh = Get-Content -Raw -LiteralPath $readmeZhPath
$usage = Get-Content -Raw -LiteralPath $usagePath

Assert-True (Test-Path -LiteralPath $skillPath) "skill file exists"
Assert-True ($skill -match '(?s)^---\s*\r?\nname:\s*ALL-IN-ONE\s*\r?\ndescription:\s*Use when') "frontmatter is valid"
Assert-True ($skill -match '## When to Use') "skill has trigger boundary"
Assert-True ($skill -match '## Runtime Discovery') "skill has runtime discovery table"
Assert-True ($skill -match 'process=\[\.\.\.\]; domain=\[\.\.\.\]; tools=\[\.\.\.\]; unavailable=\[\.\.\.\]') "skill has structured output contract"
Assert-True ($skill -match 'Do not load all skills or plugin docs into context') "skill forbids full-context loading"
Assert-True ($skill -match 'Request plugin installation only for an exact user request') "skill guards plugin installation"
Assert-True ($skill -match 'Do not bypass user instructions, AGENTS\.md') "skill preserves instruction priority"
Assert-True (-not ($skill -match '(?i)install all plugins|enable all plugins|load every skill')) "skill avoids unsafe all-capability promises"

Assert-True (Test-Path -LiteralPath $enImagePath) "English image exists"
Assert-True (Test-Path -LiteralPath $zhImagePath) "Chinese image exists"
Assert-True ($readme -match 'README.zh-CN.md') "English README links Chinese README"
Assert-True ($readmeZh -match 'README.md') "Chinese README links English README"
Assert-True ($readme -match 'assets/all-in-one-routing-tutorial-en\.png') "English README uses English image"
Assert-True ($readmeZh -match 'assets/all-in-one-routing-tutorial-zh\.png') "Chinese README uses Chinese image"
Assert-True ($usage -match 'scripts/validate-skill\.ps1') "usage guide references validator"
Assert-True (Test-Path -LiteralPath $testMatrixPath) "test matrix exists"
Assert-True (Test-Path -LiteralPath $notesPath) "optimization notes exist"

Write-Output "ALL-IN-ONE validation passed."

param(
    [Parameter(Mandatory = $true)]
    [string]$Name,

    [Parameter(Mandatory = $false)]
    [string]$Prompt = ""
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Convert-ToSlug {
    param([string]$Value)
    $lower = $Value.ToLowerInvariant()
    $slug = $lower -replace "[^a-z0-9]+", "-"
    $slug = $slug.Trim("-")
    if ([string]::IsNullOrWhiteSpace($slug)) {
        throw "Unable to derive slug from Name."
    }
    return $slug
}

$skillRoot = Split-Path -Parent $PSScriptRoot
$packsDir = Join-Path $skillRoot "references/style-packs"
if (-not (Test-Path $packsDir)) {
    New-Item -ItemType Directory -Path $packsDir -Force | Out-Null
}

$slug = Convert-ToSlug -Value $Name
$target = Join-Path $packsDir "$slug.md"

if (Test-Path $target) {
    throw "Style pack already exists: $target"
}

$promptBlock = if ([string]::IsNullOrWhiteSpace($Prompt)) {
    "<No source prompt captured. Fill manually.>"
} else {
    $Prompt
}

$content = @"
# $Name

## Source Prompt
$promptBlock

## Intent
<Describe the visual target in 2-4 sentences.>

## Do
- <Directive 1>
- <Directive 2>
- <Directive 3>

## Avoid
- <Anti-pattern 1>
- <Anti-pattern 2>

## Tokens
- Color:
- Type:
- Space:
- Radius:
- Depth:
- Motion:

## Component Notes
- Hero:
- Navigation:
- Buttons:
- Cards:
- Forms:
- Footer:

## Motion Notes
- <Motion scope, timing, easing>

## Responsive Notes
- <Mobile adaptation rule>
- <Desktop enhancement rule>
"@

Set-Content -Path $target -Value $content -Encoding UTF8
Write-Output "Created style pack: $target"

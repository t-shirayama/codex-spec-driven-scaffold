$ErrorActionPreference = "Stop"

$pattern = "FR-XXX|NFR-XXX|SPEC-XXX|Feature Name|<[A-Za-z0-9_-]+>|YYYY-MM-DD|001-feature-name|screen-0[0-9]|feature-area-[0-9]{2}"
$paths = @("README.md", "AGENTS.md", "docs", ".github")
$globs = @(
  "-g", "!docs/templates/**",
  "-g", "!docs/examples/**",
  "-g", "!docs/specs/001-feature-name/**",
  "-g", "!docs/development/commands/placeholder-check.md"
)

& rg -n $pattern @paths @globs
$exitCode = $LASTEXITCODE

if ($exitCode -eq 0) {
  Write-Host "Placeholder candidates were found. Replace them or confirm they are intentional."
  exit 1
}

if ($exitCode -eq 1) {
  Write-Host "No placeholder candidates found."
  exit 0
}

exit $exitCode

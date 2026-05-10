#!/bin/sh
set -eu

if rg -n \
  "FR-XXX|NFR-XXX|SPEC-XXX|Feature Name|<[A-Za-z0-9_-]+>|YYYY-MM-DD|001-feature-name|screen-0[0-9]|feature-area-[0-9]{2}" \
  README.md AGENTS.md docs .github \
  -g '!docs/templates/**' \
  -g '!docs/examples/**' \
  -g '!docs/specs/001-feature-name/**' \
  -g '!docs/development/commands/placeholder-check.md'
then
  echo "Placeholder candidates were found. Replace them or confirm they are intentional."
  exit 1
fi

echo "No placeholder candidates found."

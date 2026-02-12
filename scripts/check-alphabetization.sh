#!/usr/bin/env bash
# Validate that bullet entries within each section of an awesome-list README
# are alphabetized (case-insensitive) by their bracketed link text.
#
# Usage: scripts/check-alphabetization.sh [README.md]
#
# A "section" starts at any `## ` heading and ends at the next `## ` heading.
# Only top-level bullets matching the pattern `- [Name](...)` are checked.
# Nested bullets and prose lines are ignored.

set -euo pipefail

file="${1:-README.md}"

if [[ ! -f "$file" ]]; then
  echo "error: file not found: $file" >&2
  exit 2
fi

awk '
  function lower(s) { return tolower(s) }
  /^## / {
    if (section != "" && errors == 0 && length(entries) > 1) {
      # Already validated above per-line.
    }
    section = $0
    delete entries
    last = ""
    next
  }
  /^- \[/ {
    # Extract bracketed name.
    match($0, /^- \[([^]]+)\]/, m)
    if (m[1] == "") next
    name = lower(m[1])
    if (last != "" && name < last) {
      printf "section %s: \"%s\" should come before \"%s\"\n", section, m[1], last_orig > "/dev/stderr"
      errors++
    }
    last = name
    last_orig = m[1]
  }
  END {
    if (errors > 0) {
      printf "alphabetization check: %d error(s)\n", errors > "/dev/stderr"
      exit 1
    }
    print "alphabetization check: ok"
  }
' "$file"

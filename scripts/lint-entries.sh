#!/usr/bin/env bash
#
# lint-entries.sh — validate README list entries and Contents/heading sync.
#
# Enforces the entry rules documented in CONTRIBUTING.md, which nothing else
# in CI currently checks:
#
#   * Every list entry matches: "- [Name](URL) - Description."
#   * The description ends in a period.
#   * The description is under 100 characters.
#   * No entry contains an emoji.
#   * Every "## " section heading has a matching anchor in the "## Contents"
#     table of contents, and every Contents anchor points at a real heading.
#
# Failures are reported one per line as "README.md:<line>: <reason>" on stderr,
# and the script exits non-zero if any check fails.
#
# Dependencies: bash, grep and sed only. No bash 4+ features are used so the
# script runs unchanged on macOS's bundled bash 3.2 and on CI.
#
# Usage: scripts/lint-entries.sh [path/to/README.md]

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
README="${1:-$REPO_ROOT/README.md}"
LABEL="$(basename "$README")"

# Descriptions must be shorter than this many characters.
MAX_DESC=100

# Section headings that are intentionally absent from the Contents list.
SKIP_HEADINGS='Contents
Contributing'

# UTF-8 byte patterns for the emoji blocks a contributor is likely to paste:
#   F0 9F ..     -> U+1F000–U+1FFFF (emoticons, pictographs, transport, ...)
#   E2 98-9E ..  -> U+2600–U+27BF   (miscellaneous symbols and dingbats)
#   E2 AC/AD ..  -> U+2B00–U+2B7F   (stars and arrows such as U+2B50)
EMOJI_RE=$'\xf0\x9f|\xe2[\x98-\x9e]|\xe2\xac|\xe2\xad'

if [ ! -f "$README" ]; then
  printf 'lint-entries: %s: no such file\n' "$README" >&2
  exit 2
fi

status=0
entries=0

fail() {
  # $1 = line number, $2 = message
  printf '%s:%s: %s\n' "$LABEL" "$1" "$2" >&2
  status=1
}

# GitHub-style anchor slug for a heading title.
slug() {
  printf '%s\n' "$1" \
    | sed -e 's/[^[:alnum:] -]//g' \
          -e 's/  */ /g' \
          -e 's/^ //' \
          -e 's/ $//' \
          -e 's/ /-/g' \
          -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'
}

# ---------------------------------------------------------------------------
# 1. Entry format checks.
# ---------------------------------------------------------------------------
while IFS= read -r pair; do
  [ -n "$pair" ] || continue
  lineno=${pair%%:*}
  text=${pair#*:}

  # Table-of-contents links point at "#anchor"; they are validated in step 2.
  case "$text" in
    '- ['*'](#'*) continue ;;
  esac

  entries=$((entries + 1))

  # Structure: - [Name](URL) - Description
  if ! printf '%s' "$text" | grep -qE '^- \[[^]]+\]\([^)]+\) - .+$'; then
    fail "$lineno" "entry must match '- [Name](URL) - Description.'"
    continue
  fi

  # No emoji anywhere on the line.
  if printf '%s' "$text" | LC_ALL=C grep -Eq "$EMOJI_RE"; then
    fail "$lineno" "entry must not contain an emoji"
  fi

  # Description is everything after ") - ".
  desc=$(printf '%s' "$text" | sed -e 's/^- \[[^]]*\]([^)]*) - //')

  # Must end in a period.
  case "$desc" in
    *.) : ;;
    *)  fail "$lineno" "description must end in a period" ;;
  esac

  # Must be under MAX_DESC characters.
  len=${#desc}
  if [ "$len" -ge "$MAX_DESC" ]; then
    fail "$lineno" "description is $len characters (must be under $MAX_DESC)"
  fi
done <<EOF
$(grep -nE '^- \[' "$README" || true)
EOF

# ---------------------------------------------------------------------------
# 2. Contents <-> heading synchronisation.
# ---------------------------------------------------------------------------

# All Contents anchors (one per line), e.g. "core-apis-and-subsystems".
toc_anchors=$(grep -E '^- \[[^]]+\]\(#[^)]*\)' "$README" \
  | sed -n 's/^- \[[^]]*\](#\([^)]*\)).*/\1/p' || true)

# Every non-skipped heading must appear in the Contents list. Collect their
# slugs so the reverse direction can be checked afterwards.
heading_slugs=""
while IFS= read -r pair; do
  [ -n "$pair" ] || continue
  lineno=${pair%%:*}
  head=${pair#*:}
  head=${head#'## '}

  skip=0
  while IFS= read -r s; do
    [ -n "$s" ] || continue
    if [ "$head" = "$s" ]; then
      skip=1
      break
    fi
  done <<EOS
$SKIP_HEADINGS
EOS
  if [ "$skip" -eq 1 ]; then
    continue
  fi

  hslug=$(slug "$head")
  heading_slugs="$heading_slugs$hslug
"

  if ! printf '%s\n' "$toc_anchors" | grep -Fxq "$hslug"; then
    fail "$lineno" "section '## $head' is missing from the Contents list"
  fi
done <<EOF
$(grep -nE '^## ' "$README" || true)
EOF

# Every Contents anchor must resolve to a real heading.
while IFS= read -r pair; do
  [ -n "$pair" ] || continue
  lineno=${pair%%:*}
  text=${pair#*:}
  anchor=$(printf '%s' "$text" | sed -n 's/^- \[[^]]*\](#\([^)]*\)).*/\1/p')
  if [ -z "$anchor" ]; then
    continue
  fi
  if ! printf '%s\n' "$heading_slugs" | grep -Fxq "$anchor"; then
    fail "$lineno" "Contents entry '#$anchor' has no matching section heading"
  fi
done <<EOF
$(grep -nE '^- \[[^]]+\]\(#[^)]*\)' "$README" || true)
EOF

if [ "$status" -eq 0 ]; then
  printf 'lint-entries: %s entries checked, Contents in sync — OK\n' "$entries"
fi

exit "$status"

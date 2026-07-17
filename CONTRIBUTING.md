# Contributing to Awesome Modern Drupal

Thanks for considering a contribution. The goal of this list is to surface high-signal resources for Drupal 10.3+/11 — not to be exhaustive.

## Inclusion criteria

A resource is a good fit if it meets all of these:

- **Modern**: targets Drupal 10.3+ or Drupal 11. Anything D7/D8-only does not belong here.
- **Maintained**: last commit / release / publication within the past 18 months.
- **Substantive**: solves a real problem; not a wrapper around a single function.
- **Discoverable**: has a public canonical URL — drupal.org project page, GitHub repo, official site.

If you're not sure, open an issue first.

## How to add a resource

1. Find the right section. If your resource doesn't fit any existing section, open an issue rather than inventing a new section in your PR.
2. Place your entry **by relevance** within the section — this list is curated in rough order of how central each resource is to a modern Drupal build, not alphabetically. Put broadly useful, foundational resources higher; niche ones lower.
3. Use this exact format:

   ```text
   - [Name](URL) - One-line description ending in a period.
   ```

4. Keep the description under 100 characters. Describe what the resource *does*, not why it is great.
5. Open one PR per entry. Bulk PRs are hard to review.

## How to remove a resource

If a project is dead (no commits in 24 months, abandoned, archived, broken site), open an issue or PR titled `Remove: <name>` with a one-line reason.

## Style

- Use Drupal project pages (`https://www.drupal.org/project/<name>`) for Drupal modules.
- Use canonical GitHub URLs for non-Drupal tools.
- No emojis in entries.
- No marketing language ("blazing fast", "the best", "must-have").

## Reviewing

Maintainers will check:

- The entry is grouped by relevance within its section.
- Description quality.
- The link target is live and matches the description.
- The resource passes inclusion criteria.

CI runs markdownlint, an entry-format check, and a dead-link check on every
pull request.

`scripts/lint-entries.sh` enforces the entry rules automatically: it flags any
entry that does not match `- [Name](URL) - Description.`, whose description does
not end in a period, runs to 100 characters or more, or contains an emoji, and
it verifies that every `##` section heading has a matching anchor in the
Contents list (and vice versa). Run it locally before opening a PR:

```sh
bash scripts/lint-entries.sh
```

## Maintainer

This list is maintained by [Mykola Podpriatov](https://github.com/mykolapodpriatov). For questions about a contribution, open an issue at [github.com/mykolapodpriatov/awesome-modern-drupal](https://github.com/mykolapodpriatov/awesome-modern-drupal/issues).

## Code of Conduct

This project follows the [Contributor Covenant](code-of-conduct.md). By contributing you agree to abide by it.

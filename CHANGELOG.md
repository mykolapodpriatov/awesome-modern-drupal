# Changelog

All notable changes to this list are documented here.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Changed

- Switched the contribution model from alphabetical ordering to relevance-based
  grouping within each section, and updated `CONTRIBUTING.md` accordingly.
- Conformed `README.md` to awesome-list entry conventions (entry casing,
  descriptions no longer repeat the item name, footer license note).

### Removed

- The alphabetization CI job and `scripts/check-alphabetization.sh`, which
  contradicted the relevance-based curation.
- The `awesome-lint` CI job: it depends on live GitHub repository metadata
  (topics `awesome`/`awesome-list`, GitHub-detected license) that cannot be
  validated from repository files alone.

### Added

- `.markdownlint-cli2.yaml` so markdownlint passes on awesome-list formatting.
- A maintainer/contact line in `CONTRIBUTING.md` and `code-of-conduct.md`.

## [1.0.0] - 2026-05-28

### Added

- Initial curated list with 20 sections covering Drupal 10.3+ / 11 era resources.
- 119 entries across Core APIs, site building, editorial, media, performance, search, decoupled, auth, commerce, migration, dev tools, testing, static analysis, CI/CD, hosting, theming, articles, podcasts, conferences, and communities.
- `CONTRIBUTING.md` with inclusion criteria, entry format, and review checklist.
- Code of Conduct (Contributor Covenant 2.1).
- GitHub issue and PR templates.
- CI workflow running markdownlint and dead-link checking.

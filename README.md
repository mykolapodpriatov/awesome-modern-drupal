# Awesome Modern Drupal [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of resources for modern Drupal 10.3+/11 development.

Focused on what's relevant today: Single Directory Components, Recipes, OOP hooks, decoupled architectures, modern DevOps, and the contrib ecosystem that powers Drupal in 2026.

## Contents

- [Core APIs and Subsystems](#core-apis-and-subsystems)
- [Site Building Modules](#site-building-modules)
- [Editorial Experience](#editorial-experience)
- [Media](#media)
- [Performance](#performance)
- [Search](#search)
- [Contributing](#contributing)

## Core APIs and Subsystems

Core building blocks shipped with Drupal itself. These are the foundations every modern site uses.

- [Single Directory Components](https://www.drupal.org/docs/develop/theming-drupal/using-single-directory-components) - Co-locate Twig, CSS, JS, and schema per component. Stable in core since 10.3.
- [Recipes](https://www.drupal.org/docs/extending-drupal/drupal-recipes) - Apply curated configuration + dependencies to a site without becoming code dependencies.
- [Project Browser](https://www.drupal.org/project/project_browser) - In-admin discovery and installation of contrib modules.
- [Symfony Mailer](https://www.drupal.org/project/symfony_mailer) - Modern replacement for the legacy mail system, backed by symfony/mailer.
- [Hooks as Object Methods](https://www.drupal.org/node/3442349) - Implement hooks via `#[Hook]` attributes on service methods (Drupal 11.1+).
- [BigPipe](https://www.drupal.org/docs/core-modules-and-themes/core-modules/bigpipe-module) - Stream the page shell and lazy-load slow placeholders. In core.
- [Cache API](https://www.drupal.org/docs/drupal-apis/cache-api/cache-api) - Cache tags, contexts, and max-age — the spine of Drupal performance.

## Site Building Modules

The contrib modules a typical 2026 build leans on.

- [Layout Builder](https://www.drupal.org/docs/8/core/modules/layout-builder) - Core visual layout for content and entity types.
- [Paragraphs](https://www.drupal.org/project/paragraphs) - Reusable structured content blocks.
- [Group](https://www.drupal.org/project/group) - Group-based content, membership, and permissions.
- [ECA: Event - Condition - Action](https://www.drupal.org/project/eca) - Visual workflow/automation builder; modern successor to Rules.
- [Workspaces](https://www.drupal.org/docs/core-modules-and-themes/core-modules/workspaces-module) - Content staging and previews in core.
- [Webform](https://www.drupal.org/project/webform) - The de facto form builder for Drupal.
- [Field Group](https://www.drupal.org/project/field_group) - Group fields in form and display layouts.
- [Pathauto](https://www.drupal.org/project/pathauto) - Automatic URL alias generation.
- [Token](https://www.drupal.org/project/token) - Token UI and additional tokens for use across modules.
- [Redirect](https://www.drupal.org/project/redirect) - Manage URL redirects.
- [Metatag](https://www.drupal.org/project/metatag) - SEO meta tags per entity.

## Editorial Experience

Anything that makes editors and content teams faster.

- [Gin](https://www.drupal.org/project/gin) - Modern admin theme; the community default.
- [Gin Toolbar](https://www.drupal.org/project/gin_toolbar) - Gin-matching admin toolbar.
- [Claro](https://www.drupal.org/docs/core-modules-and-themes/core-themes/claro-theme) - Core admin theme, refreshed admin defaults.
- [Coffee](https://www.drupal.org/project/coffee) - Spotlight-style admin search.
- [Mercury Editor](https://www.drupal.org/project/mercury_editor) - Inline visual page builder on top of Paragraphs.
- [CKEditor 5](https://www.drupal.org/docs/core-modules-and-themes/core-modules/ckeditor-5) - Core rich text editor.
- [Linkit](https://www.drupal.org/project/linkit) - Autocomplete for internal links in CKEditor.
- [Admin Toolbar](https://www.drupal.org/project/admin_toolbar) - Hover-enabled multi-level admin menu.

## Media

- [Media](https://www.drupal.org/docs/core-modules-and-themes/core-modules/media-module) - Core media entity and reference fields.
- [Media Library](https://www.drupal.org/docs/core-modules-and-themes/core-modules/media-library-module) - Core library UI for browsing and inserting media.
- [Focal Point](https://www.drupal.org/project/focal_point) - Editor-defined image focal points respected by image styles.
- [Image Style Quality](https://www.drupal.org/project/image_style_quality) - Per-image-style JPEG/WebP quality overrides.
- [Crop API](https://www.drupal.org/project/crop) - Foundation for crop-based effects used by Focal Point and others.
- [SVG Image](https://www.drupal.org/project/svg_image) - Use SVG files in image fields.

## Performance

- [Purge](https://www.drupal.org/project/purge) - Coordinated cache invalidation framework for external caches.
- [Varnish Purger](https://www.drupal.org/project/varnish_purge) - Purge integration for Varnish.
- [Memcache](https://www.drupal.org/project/memcache) - Memcached cache backend.
- [Redis](https://www.drupal.org/project/redis) - Redis cache backend (and lock, flood, queue backends).
- [Advanced CSS/JS Aggregation](https://www.drupal.org/project/advagg) - Granular aggregation tuning beyond core defaults.
- [HTTP Cache Control](https://www.drupal.org/project/http_cache_control) - Tune Cache-Control headers per response.

## Search

- [Search API](https://www.drupal.org/project/search_api) - Pluggable search abstraction.
- [Search API Solr](https://www.drupal.org/project/search_api_solr) - Solr backend for Search API.
- [Elasticsearch Connector](https://www.drupal.org/project/elasticsearch_connector) - Elasticsearch / OpenSearch backend.
- [Facets](https://www.drupal.org/project/facets) - Faceted navigation for Search API.
- [Search API Autocomplete](https://www.drupal.org/project/search_api_autocomplete) - Autocomplete suggestions for Search API.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). PRs welcome — please follow the inclusion criteria there.

## License

[CC0](LICENSE) — to the extent possible under law, the maintainers have waived all copyright and related rights to this work.

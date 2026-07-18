# Awesome Modern Drupal [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

[![CI](https://github.com/mykolapodpriatov/awesome-modern-drupal/actions/workflows/lint.yml/badge.svg)](https://github.com/mykolapodpriatov/awesome-modern-drupal/actions/workflows/lint.yml)

> A curated list of resources for modern Drupal 10.3+/11 development.

Focused on what's relevant today: Single Directory Components, Recipes, OOP hooks, decoupled architectures, modern DevOps, and the contrib ecosystem that powers Drupal in 2026.

## Contents

- [Core APIs and Subsystems](#core-apis-and-subsystems)
- [Site Building Modules](#site-building-modules)
- [Editorial Experience](#editorial-experience)
- [Media](#media)
- [Performance](#performance)
- [Search](#search)
- [AI and Automation](#ai-and-automation)
- [Decoupled and Headless](#decoupled-and-headless)
- [Authentication and Authorization](#authentication-and-authorization)
- [Security](#security)
- [Commerce](#commerce)
- [Migration](#migration)
- [Developer Tools](#developer-tools)
- [Testing](#testing)
- [Static Analysis and Code Quality](#static-analysis-and-code-quality)
- [CI and CD](#ci-and-cd)
- [Hosting](#hosting)
- [Frontend and Theming](#frontend-and-theming)
- [Articles and Tutorials](#articles-and-tutorials)
- [Podcasts](#podcasts)
- [Conferences and Events](#conferences-and-events)
- [Communities](#communities)

## Core APIs and Subsystems

Core building blocks shipped with Drupal itself. These are the foundations every modern site uses.

- [Single Directory Components](https://www.drupal.org/docs/develop/theming-drupal/using-single-directory-components) - Co-locate Twig, CSS, JS, and schema per component. Stable in core since 10.3.
- [Recipes](https://www.drupal.org/docs/extending-drupal/drupal-recipes) - Apply curated configuration + dependencies to a site without becoming code dependencies.
- [Project Browser](https://www.drupal.org/project/project_browser) - In-admin discovery and installation of contrib modules.
- [Symfony Mailer](https://www.drupal.org/project/symfony_mailer) - Modern replacement for the legacy mail system, backed by Symfony Mailer.
- [Hooks as Object Methods](https://www.drupal.org/node/3442349) - Implement hooks via `#[Hook]` attributes on service methods (Drupal 11.1+).
- [BigPipe](https://www.drupal.org/docs/core-modules-and-themes/core-modules/bigpipe-module) - Stream the page shell and lazy-load slow placeholders. In core.
- [Cache API](https://www.drupal.org/docs/drupal-apis/cache-api/cache-api) - Cache tags, contexts, and max-age — the spine of Drupal performance.

## Site Building Modules

The contrib modules a typical 2026 build leans on.

- [Layout Builder](https://www.drupal.org/docs/8/core/modules/layout-builder) - Core visual layout for content and entity types.
- [Paragraphs](https://www.drupal.org/project/paragraphs) - Reusable structured content blocks.
- [Group](https://www.drupal.org/project/group) - Content, membership, and permissions scoped to groups.
- [ECA: Event - Condition - Action](https://www.drupal.org/project/eca) - Visual workflow/automation builder; modern successor to Rules.
- [Workspaces](https://www.drupal.org/docs/core-modules-and-themes/core-modules/workspaces-module) - Content staging and previews in core.
- [Webform](https://www.drupal.org/project/webform) - The de facto form builder for Drupal.
- [Field Group](https://www.drupal.org/project/field_group) - Group fields in form and display layouts.
- [Pathauto](https://www.drupal.org/project/pathauto) - Automatic URL alias generation.
- [Token](https://www.drupal.org/project/token) - UI and additional placeholder values for use across modules.
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
- [Redis](https://www.drupal.org/project/redis) - Cache backend (and lock, flood, queue backends) backed by Redis.
- [Advanced CSS/JS Aggregation](https://www.drupal.org/project/advagg) - Granular aggregation tuning beyond core defaults.
- [HTTP Cache Control](https://www.drupal.org/project/http_cache_control) - Tune Cache-Control headers per response.

## Search

- [Search API](https://www.drupal.org/project/search_api) - Pluggable search abstraction.
- [Search API Solr](https://www.drupal.org/project/search_api_solr) - Solr backend for Search API.
- [Elasticsearch Connector](https://www.drupal.org/project/elasticsearch_connector) - Elasticsearch / OpenSearch backend.
- [Facets](https://www.drupal.org/project/facets) - Faceted navigation for Search API.
- [Search API Autocomplete](https://www.drupal.org/project/search_api_autocomplete) - Autocomplete suggestions for Search API.

## AI and Automation

The Drupal AI ecosystem that matured in 2025-2026: a provider-agnostic core, agents, and vector search.

- [AI (Artificial Intelligence)](https://www.drupal.org/project/ai) - Provider-agnostic framework for adding LLM features to Drupal.
- [AI Agents](https://www.drupal.org/project/ai_agents) - Build tool-using agents that act on Drupal content and configuration.
- [OpenAI Provider](https://www.drupal.org/project/ai_provider_openai) - Connect the AI module to OpenAI GPT, embedding, and image models.
- [Anthropic Provider](https://www.drupal.org/project/ai_provider_anthropic) - Connect the AI module to Anthropic Claude models.
- [AI Search](https://www.drupal.org/project/ai_search) - RAG and semantic search that indexes content as vector embeddings.
- [Milvus VDB Provider](https://www.drupal.org/project/ai_vdb_provider_milvus) - Milvus vector database backend for AI Search.
- [ECA: Event - Condition - Action](https://www.drupal.org/project/eca) - No-code automation that can orchestrate AI actions on events and conditions.

## Decoupled and Headless

- [JSON:API](https://www.drupal.org/docs/core-modules-and-themes/core-modules/jsonapi-module) - Core JSON:API-compliant REST API.
- [JSON:API Extras](https://www.drupal.org/project/jsonapi_extras) - Rename, hide, and reshape JSON:API resources.
- [Decoupled Router](https://www.drupal.org/project/decoupled_router) - Resolve a Drupal path to its entity from a decoupled frontend.
- [GraphQL Compose](https://www.drupal.org/project/graphql_compose) - Modern GraphQL schema generated from entity types.
- [Next.js for Drupal](https://next-drupal.org/) - First-party Next.js framework for headless Drupal.
- [Subrequests](https://www.drupal.org/project/subrequests) - Batch multiple internal requests in one HTTP round-trip.
- [Consumers](https://www.drupal.org/project/consumers) - Track decoupled clients and their identity.

## Authentication and Authorization

- [Simple OAuth](https://www.drupal.org/project/simple_oauth) - OAuth2 + OpenID Connect provider, the standard for headless Drupal auth.
- [OpenID Connect](https://www.drupal.org/project/openid_connect) - Login via Google, GitHub, Okta, Keycloak, and other OIDC providers.
- [SAML SP](https://www.drupal.org/project/samlauth) - SAML Service Provider integration.
- [Externalauth](https://www.drupal.org/project/externalauth) - Map external identities to Drupal accounts.
- [Key](https://www.drupal.org/project/key) - Manage secrets and API keys outside config sync.

## Security

- [Security Kit](https://www.drupal.org/project/seckit) - Hardens sites against XSS, clickjacking, CSRF, and other risks via HTTP headers.
- [TFA](https://www.drupal.org/project/tfa) - Adds a second authentication factor such as TOTP to Drupal logins.
- [Password Policy](https://www.drupal.org/project/password_policy) - Enforce configurable password strength and expiration rules.
- [Honeypot](https://www.drupal.org/project/honeypot) - Anti-spam for forms using honeypot and timestamp methods, no CAPTCHA needed.
- [CAPTCHA](https://www.drupal.org/project/captcha) - Challenge-response test on forms to block automated submissions.
- [Antibot](https://www.drupal.org/project/antibot) - Block form spam with JavaScript, requiring no interaction from real users.
- [Automated Logout](https://www.drupal.org/project/autologout) - Log inactive users out after a configurable session timeout.
- [Security Review](https://www.drupal.org/project/security_review) - Automated checklist that audits a site for common security misconfigurations.

## Commerce

- [Drupal Commerce](https://www.drupal.org/project/commerce) - The flagship Drupal-native commerce platform.
- [Commerce Stripe](https://www.drupal.org/project/commerce_stripe) - Stripe payment gateway.
- [Commerce PayPal](https://www.drupal.org/project/commerce_paypal) - PayPal payment gateway.
- [Commerce Shipping](https://www.drupal.org/project/commerce_shipping) - Shipping rates and methods.
- [Commerce Recurring Framework](https://www.drupal.org/project/commerce_recurring) - Subscriptions and recurring billing.

## Migration

- [Migrate Plus](https://www.drupal.org/project/migrate_plus) - Extends core Migrate with extra sources, processes, and config entities.
- [Migrate Tools](https://www.drupal.org/project/migrate_tools) - Drush commands for managing and running migrations.
- [Migrate Source CSV](https://www.drupal.org/project/migrate_source_csv) - Migrate from CSV files.
- [Migrate Source JSON](https://www.drupal.org/project/migrate_source_json) - Migrate from JSON via Migrate Plus.
- [Feeds](https://www.drupal.org/project/feeds) - Recurring imports from external sources.
- [Migrate Upgrade](https://www.drupal.org/project/migrate_upgrade) - Generate migrations from a Drupal 6/7 source.

## Developer Tools

- [Devel](https://www.drupal.org/project/devel) - Generators, kint dumps, helper routes.
- [Webprofiler](https://www.drupal.org/docs/develop/development-tools/webprofiler) - Symfony web profiler integration; ships inside Devel.
- [Drush](https://www.drush.org/) - The Drupal command-line shell.
- [DDEV](https://ddev.com/) - The community standard for local Drupal development.
- [Lando](https://lando.dev/) - Container-based local dev alternative.
- [Composer](https://getcomposer.org/) - Dependency manager for PHP and Drupal projects.
- [Twig Tweak](https://www.drupal.org/project/twig_tweak) - Useful Twig functions and filters for site builders.
- [Maillog](https://www.drupal.org/project/maillog) - Capture outgoing mail in a Drupal log instead of sending.

## Testing

- [PHPUnit](https://phpunit.de/) - The PHP testing framework Drupal builds on.
- [Drupal Test Traits](https://gitlab.com/weitzman/drupal-test-traits) - Run PHPUnit tests against an existing Drupal site.
- [Behat Drupal Extension](https://github.com/jhedstrom/drupalextension) - Behat steps and contexts for Drupal.
- [Nightwatch.js](https://www.drupal.org/docs/develop/automated-testing/javascript-functional-tests) - Core JavaScript end-to-end test runner.
- [Playwright](https://playwright.dev/) - Modern cross-browser E2E framework many Drupal teams use today.
- [Cypress](https://www.cypress.io/) - Component and E2E testing widely used with decoupled Drupal frontends.

## Static Analysis and Code Quality

- [PHPStan](https://phpstan.org/) - PHP static analyzer.
- [phpstan-drupal](https://github.com/mglaman/phpstan-drupal) - PHPStan extension that understands Drupal's container, hooks, and APIs.
- [phpstan-deprecation-rules](https://github.com/phpstan/phpstan-deprecation-rules) - Catch usage of deprecated APIs.
- [Drupal Coder](https://www.drupal.org/project/coder) - PHPCS sniffs for Drupal and DrupalPractice standards.
- [Drupal Rector](https://github.com/palantirnet/drupal-rector) - Automated deprecation rewriter for Drupal upgrades.
- [GrumPHP](https://github.com/phpro/grumphp) - Composer-installed pre-commit framework.
- [twigcs](https://github.com/friendsoftwig/twigcs) - Coding standard checker for Twig templates.

## CI and CD

- [Acquia Pipelines](https://docs.acquia.com/acquia-cloud-platform/pipelines) - Acquia-native CI/CD for Acquia Cloud projects.
- [Pantheon Build Tools](https://docs.pantheon.io/guides/build-tools) - Build/test/deploy automation for Pantheon sites.
- [GitLab Templates for Drupal](https://project.pages.drupalcode.org/gitlab_templates/) - Official GitLab CI templates used on drupal.org itself.
- [DDEV in CI](https://docs.ddev.com/en/stable/users/topics/remote-docker/) - Run the same DDEV environment locally and in CI.

## Hosting

- [Pantheon](https://pantheon.io/) - Drupal-specialized hosting with multidev environments.
- [Acquia Cloud Platform](https://www.acquia.com/products/drupal-cloud) - Acquia's managed Drupal hosting.
- [Platform.sh](https://platform.sh/) - Git-driven managed PaaS with strong Drupal support.
- [Lagoon](https://lagoon.sh/) - Open-source Drupal hosting platform from amazee.io.
- [amazee.io](https://www.amazee.io/) - Managed Drupal hosting on Lagoon and Kubernetes.

## Frontend and Theming

- [Olivero](https://www.drupal.org/docs/core-modules-and-themes/core-themes/olivero-theme) - Core default front-end theme.
- [Radix](https://www.drupal.org/project/radix) - Bootstrap-based base theme with a modern build pipeline.
- [Storybook integration](https://www.drupal.org/project/storybook) - Storybook + Drupal SDC integration.
- [Components](https://www.drupal.org/project/components) - Namespaced Twig templates outside `templates/`.
- [Twig Field Value](https://www.drupal.org/project/twig_field_value) - Access raw field values in Twig.

## Articles and Tutorials

- [Lullabot Articles](https://www.lullabot.com/articles) - Long-form, technically deep Drupal writing.
- [Drupalize.Me Blog](https://drupalize.me/blog) - Tutorials and architectural posts.
- [Acquia Engineering Blog](https://www.acquia.com/blog) - Posts from Acquia's engineering and product teams.
- [Drupal.org Documentation](https://www.drupal.org/documentation) - Authoritative core docs.
- [OSTraining Drupal Tutorials](https://www.ostraining.com/blog/drupal/) - Practical Drupal tutorials.

## Podcasts

- [Talking Drupal](https://talkingdrupal.com/) - Weekly community podcast.
- [Lullabot Podcast](https://www.lullabot.com/podcasts) - Drupal architecture and engineering conversations.
- [DrupalEasy Podcast](https://www.drupaleasy.com/podcast) - Long-running Drupal podcast.

## Conferences and Events

- [DrupalCon](https://events.drupal.org/) - The annual flagship Drupal Association conference.
- [BadCamp](https://badcamp.org/) - Bay Area Drupal Camp.
- [MidCamp](https://www.midcamp.org/) - Midwest Drupal Camp (Chicago).
- [Florida DrupalCamp](https://fldrupal.camp/) - Long-running US regional camp.
- [Drupal Mountain Camp](https://drupalmountaincamp.ch/) - Swiss Drupal camp.
- [DrupalSouth](https://drupalsouth.org/) - Annual Drupal conference for Australia and New Zealand.

## Communities

- [Drupal Slack](https://www.drupal.org/community/contributor-guide/reference-information/talk/slack) - The community chat, with channels for nearly every topic.
- [Drupal Stack Exchange](https://drupal.stackexchange.com/) - Q&A site.
- [/r/drupal](https://www.reddit.com/r/drupal/) - Reddit community.
- [Drupal.org Forums](https://www.drupal.org/forum) - Official forums (still active for long-form discussion).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). PRs welcome — please follow the inclusion criteria there.

Maintained by [Mykola Podpriatov](https://github.com/mykolapodpriatov) at [github.com/mykolapodpriatov/awesome-modern-drupal](https://github.com/mykolapodpriatov/awesome-modern-drupal).

To the extent possible under law, the maintainers have waived all copyright and related rights to this work under [CC0](LICENSE).

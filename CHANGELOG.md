# Changelog

All notable changes to this project are documented here. Format loosely
follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/); versions
follow `shard.yml`'s own `version:` field (synced via `make version`, then
tagged via `make tag`).

## [Unreleased]

## [0.1.5] - 2026-10-11

- Upgraded to ameba 1.7.0 and standardized the CI pipeline (split lint/test
  jobs, pinned Crystal version, shards cache).
- Fixed `make lint`/`make fix` for ameba 1.7.0, which dropped the
  `postinstall` script that used to build `lib/ameba/bin/ameba`
  automatically; the Makefile and CI now compile it explicitly with
  `crystal build lib/ameba/bin/ameba.cr -o lib/ameba/bin/ameba`.
- Fixed 209 new `Style/PercentLiteralDelimiters` violations (ameba 1.7.0)
  by switching `%i(...)` literals to `%i[...]` in `src/builder/attributes.cr`
  and `src/builder/tags.cr`.

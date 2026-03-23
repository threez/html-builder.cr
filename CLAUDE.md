# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
# Install dependencies
shards install

# Run tests
crystal spec -v

# Format code
crystal tool format

# Lint (requires shards install first to build ameba)
make lint

# Generate docs
crystal docs

# Run all checks
make all
```

To run a single spec file: `crystal spec spec/html-builder_spec.cr -v`

## Architecture

This is a Crystal shard (`html-builder`) that provides a DSL for building HTML using the `HTML::Builder` module.

**Code generation via macros at compile time** — the key architectural insight is in `src/html-builder.cr` line 117:

```crystal
{{ run("./builder/dsl") }}
```

This runs `src/builder/dsl.cr` as a **compile-time program** (not a macro) that prints Crystal method definitions to stdout. Those definitions are then injected into the `HTML::Builder` module. This means `dsl.cr` is executed by the Crystal compiler during compilation to generate typed tag methods for every HTML tag.

**File roles:**

- `src/builder/attributes.cr` — defines `HTML::Builder::Attributes`, a constant hash mapping attribute symbols to their allowed tags and metadata. Attributes with a `:name` key get that as the rendered HTML attribute name (e.g., `accept_charset` → `"accept-charset"`).
- `src/builder/tags.cr` — defines `Tags` (block-capable tags), `EmptyTags` (self-closing: `input`, `img`, `link`, `br`, `hr`, `meta`, `source`), `RenamedTags` (DSL name → HTML name: `para` → `p`, `select_tag` → `select`), and builds `TagAttributes` by inverting the attributes hash.
- `src/builder/dsl.cr` — the compile-time codegen program. Reads `Tags`/`EmptyTags`/`TagAttributes`/`RenamedTags` and emits typed Crystal method signatures for each tag, constraining attributes to those actually valid for each tag.
- `src/html-builder.cr` — the main module. Includes `@io : IO` and `@indent : Int32` instance variables (callers must provide `@io`). Implements `tag`, `text`, `raw`, `doctype`, and `tag_attributes`. Runs dsl.cr via `{{ run(...) }}`.

**Usage pattern:** Include `HTML::Builder` in a class that has `@io : IO`. All HTML rendering writes to `@io`. The DSL enforces valid attribute names per tag at compile time.

**Special attribute handling in `tag_attributes`:**
- `:style` hash/NamedTuple → renders as `style="key: value;"`
- `:on` hash/NamedTuple → renders as `on{event}="handler"` (e.g., `onclick="..."`)
- Other hashes → renders as `{attr}-{key}="value"` (used for `data-*` and `aria-*`)
- `:class` in DSL is aliased to `_class` parameter to avoid Crystal keyword conflict

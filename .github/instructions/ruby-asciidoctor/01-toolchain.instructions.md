---
name: Ruby Asciidoctor Toolchain
description: Toolchain and version compatibility for Ruby Asciidoctor and plugins
applyTo: '**'
---
# Toolchain & Version Compatibility

- **Asciidoctor**: Use the latest stable Ruby gem (currently `~> 2.0`).
- **asciidoctor-pdf**: Use `~> 2.3` for best compatibility with Asciidoctor 2.x.
- **asciidoctor-epub3**: Use `~> 2.3` for EPUB3 output.
- **asciidoctor-reveal.js**: Use `~> 5.0` for Reveal.js slide decks.
- **asciidoctor-diagram**: Use `~> 3.0.1` for diagram support.

> **Tip:** Pin plugin versions in your `Gemfile` to avoid breaking changes.

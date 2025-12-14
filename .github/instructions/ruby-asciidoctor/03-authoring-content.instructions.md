---
name: Ruby Asciidoctor Authoring Content
description: Authoring AsciiDoc content best practices for Ruby Asciidoctor
applyTo: '**'
---
# Authoring AsciiDoc Content

- Follow the [AsciiDoc Syntax Reference](https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/).
- Use semantic sectioning (`=`, `==`, `===`) for clear hierarchy.
- Prefer attributes for reusable values (e.g., `:revnumber:`, `:author:`).
- Use includes (`include::chapter1.adoc[]`) for modularity.
- Use admonitions (`NOTE:`, `TIP:`, `WARNING:`) for emphasis.
- For diagrams, use supported macros (e.g., `plantuml::`, `mermaid::`).

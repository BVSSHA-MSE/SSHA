---
name: Ruby Asciidoctor Project Structure
description: Project structure best practices for Ruby Asciidoctor documentation
applyTo: 'src/**/*.rb, src/**/*.adoc, output/**/*.html, output/**/*.pdf, output/**/*.epub'
---
# Project Structure

Place all AsciiDoc sources in a dedicated directory (e.g., `src/`).
Use a single entrypoint file (e.g., `index.adoc`) and modularize content with includes.
Store images and diagrams in subdirectories (e.g., `src/images/`, `src/diagrams/`).

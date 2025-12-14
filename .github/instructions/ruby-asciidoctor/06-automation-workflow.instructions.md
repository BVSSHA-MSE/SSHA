---
name: Ruby Asciidoctor Automation & Workflow
description: Automation and workflow best practices for Ruby Asciidoctor documentation
applyTo: 'src/**/*.rb, src/**/*.adoc, output/**/*.html, output/**/*.pdf, output/**/*.epub'
---
# Automation & Workflow

- Automate generation and conversion steps in Rake tasks or Ruby scripts.
- Use `bundle exec` to ensure correct gem versions.
- Validate outputs for each format.

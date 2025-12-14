---
name: Ruby Asciidoctor Ruby API Usage
description: Best practices for using the Ruby API to generate and convert AsciiDoc content
applyTo: 'src/**/*.rb, src/**/*.adoc, output/**/*.html, output/**/*.pdf, output/**/*.epub'
---
# Ruby API Usage

- Use the Ruby API to generate AsciiDoc content and convert to target formats.
- Example: Generate AsciiDoc content as a string and write to file:
  ```ruby
  adoc_content = """
  = My Document
  Author Name
  :toc:
  :sectnums:

  == Introduction

  This is generated content.
  """
  File.write('generated/generated.adoc', adoc_content)
  ```
- Convert to HTML:
  ```ruby
  require 'asciidoctor'
  Asciidoctor.convert_file 'generated/generated.adoc', to_file: 'generated/generated.html', safe: :safe
  ```
- Convert to PDF:
  ```ruby
  require 'asciidoctor-pdf'
  Asciidoctor.convert_file 'generated/generated.adoc', to_file: 'generated/generated.pdf', backend: 'pdf', safe: :safe
  ```
- Convert to EPUB3:
  ```ruby
  require 'asciidoctor-epub3'
  Asciidoctor.convert_file 'generated/generated.adoc', to_file: 'generated/generated.epub', backend: 'epub3', safe: :safe
  ```
- Convert to Reveal.js:
  ```ruby
  require 'asciidoctor-revealjs'
  Asciidoctor.convert_file 'generated/generated.adoc', to_file: 'generated/generated-revealjs.html', backend: 'revealjs', safe: :safe
  ```
- For diagrams, require `asciidoctor-diagram` before conversion.

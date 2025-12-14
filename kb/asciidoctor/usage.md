# Asciidoctor Usage Guide

## Overview
Asciidoctor is a fast, open-source toolchain for converting AsciiDoc documents to HTML, PDF, EPUB3, and more. It is widely used for technical documentation, books, and slide decks.

## Installation

### Ruby Gem
```sh
gem install asciidoctor
gem install asciidoctor-pdf
gem install asciidoctor-epub3
gem install asciidoctor-revealjs
gem install asciidoctor-diagram
```

### Bundler (Recommended)
Add to `Gemfile`:
```ruby
gem 'asciidoctor', '~> 2.0'
gem 'asciidoctor-pdf', '~> 2.3'
gem 'asciidoctor-epub3', '~> 2.3'
gem 'asciidoctor-revealjs', '~> 5.0'
gem 'asciidoctor-diagram', '~> 3.0.1'
```
Then run:
```sh
bundle install
```

## Authoring AsciiDoc

- Use `= Title` for document title, `==` for sections.
- Admonitions: `NOTE:`, `TIP:`, `WARNING:`
- Lists: `*` for unordered, `.` for ordered.
- Images: `image::path.png[Alt text]`
- Includes: `include::chapter.adoc[]`
- Diagrams: `plantuml::diagram.puml[]`, `mermaid::diagram.mmd[]`

## Conversion Commands

### HTML
```sh
asciidoctor src/index.adoc -o output/index.html
```

### PDF
```sh
asciidoctor-pdf src/index.adoc -o output/index.pdf
```

### EPUB3
```sh
asciidoctor-epub3 src/index.adoc -o output/index.epub
```

### Reveal.js Slides
```sh
asciidoctor-revealjs src/slides.adoc -o output/slides.html
```

### With Bundler
```sh
bundle exec asciidoctor ...
```

## Ruby API Example

```ruby
require 'asciidoctor'
Asciidoctor.convert_file 'src/index.adoc', to_file: 'output/index.html'
```

## Output Customization

- Stylesheet: `-a stylesheet=custom.css`
- Table of Contents: `:toc:`
- Section Numbers: `:sectnums:`
- PDF Theme: `-a pdf-theme=theme.yml`

## Best Practices

- Pin gem versions in `Gemfile`
- Modularize content with includes
- Store images/diagrams in subdirectories
- Validate outputs for each format
- Use alt text for accessibility

## References

- [AsciiDoc Syntax Reference](https://docs.asciidoctor.org/asciidoc/latest/syntax-quick-reference/)
- [Asciidoctor User Manual](https://docs.asciidoctor.org/asciidoctor/latest/)
- [asciidoctor-pdf Docs](https://docs.asciidoctor.org/pdf-converter/latest/)
- [asciidoctor-epub3 Docs](https://docs.asciidoctor.org/epub3-converter/latest/)
- [asciidoctor-reveal.js Docs](https://docs.asciidoctor.org/reveal.js-converter/latest/)
- [asciidoctor-diagram Docs](https://docs.asciidoctor.org/diagram-extension/latest/)

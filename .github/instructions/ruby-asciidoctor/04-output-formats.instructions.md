---
name: Ruby Asciidoctor Output Formats
description: Output format best practices for HTML, PDF, EPUB3, Reveal.js, and diagrams
applyTo: '**'
---
# Output Format Best Practices

## HTML
- Use the default Asciidoctor HTML5 backend.
- Customize with a stylesheet via the `-a stylesheet=custom.css` attribute.
- Use `:toc:` and `:sectnums:` for navigation.

## PDF
- Use `asciidoctor-pdf` with the default or a custom theme (`-a pdf-theme=theme.yml`).
- Avoid features not supported in PDF (e.g., interactive HTML elements).
- Use high-resolution images for print quality.

## EPUB3
- Use `asciidoctor-epub3` for e-book output.
- Structure content with clear chapters and sections.
- Test output on multiple EPUB readers for compatibility.

## Reveal.js
- Use `asciidoctor-reveal.js` for slide decks.
- Use `==` for slide titles and `===` for vertical slides.
- Use `:revealjs_theme:` attribute to select a theme.
- Limit slide content for readability.

## Diagrams
- Use `asciidoctor-diagram` for PlantUML, Graphviz, Mermaid, etc.
- Store source diagrams in version control.
- Use vector formats (SVG) for scalability.

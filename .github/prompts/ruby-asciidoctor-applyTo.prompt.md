Please provide options for updating the applyTo frontmatter of the instructions in `.github/instructions/ruby-asciidoctor` and `.github/instructions/ruby-asciidoctor.instructions.md`. It is adding context during sessions that are not relevant to it. I need the instructions to be more specific to relevant directories and file types.

src - code
output - generated outputs containing the various output file types
docs - no longer relevant to ruby-asciidoctor instructions

Questions:
- What file types might belong to which instructions?
- What directories are relevant to Ruby Asciidoctor and its plugins?
- What other updates might be relevant for the instruction set?
- Why would these updates be beneficial?

To update the `applyTo` frontmatter of the instructions in `.github/instructions/ruby-asciidoctor` and `.github/instructions/ruby-asciidoctor.instructions.md`, we can consider the following options based on the context provided:
1. **File Types and Their Relevant Instructions:**
   - **Source Code Files:** `.rb` (Ruby files), `.adoc` (AsciiDoc files) - These would be relevant to the core Ruby Asciidoctor instructions.
   - **Output Files:** `.html`, `.pdf`, `.epub`, `.revealjs` - These would be relevant to instructions related to output formats and conversions yet ruby code may still be involved since they are used for processing and generating these outputs.

2. **Relevant Directories for Ruby Asciidoctor and Its Plugins:**
    - **src/**: This directory typically contains the source code files, which are directly relevant to Ruby Asciidoctor.
    - **output/**: This directory may contain generated output files, which could be relevant for instructions on how to handle or generate these outputs using Ruby Asciidoctor.

3. **Benefits of These Updates:**
   - **Clarity and Relevance:** By specifying the `applyTo` field more precisely, users will find the instructions more relevant to their specific use cases, reducing confusion.
   - **Improved Usability:** Clearer instructions tailored to specific file types and directories will enhance the usability of the documentation for developers working with Ruby Asciidoctor.
   - **Reduced Errors:** Specifying compatible versions and best practices can help prevent errors related to version mismatches and improper usage of plugins.

Based on the analysis, here are some suggested updates for the `applyTo` frontmatter of the instructions in `.github/instructions/ruby-asciidoctor` and `.github/instructions/ruby-asciidoctor.instructions.md`:
```md
---
applyTo: 'src/**/*.rb, src/**/*.adoc, output/**/*.html, output/**/*.pdf, output/**/*.epub'
---
```
This update specifies that the instructions apply to Ruby source files and AsciiDoc files in the `src/` directory, as well as various output file types in the `output/` directory.
```md
---
applyTo: 'src/**/*.rb, src/**/*.adoc'
---
```
This update narrows the scope to only Ruby source files and AsciiDoc files, focusing on the core functionality of Ruby Asciidoctor.
```md
---
applyTo: 'output/**/*.html, output/**/*.pdf, output/**/*.epub'
---
```
This update focuses solely on the output files, which may be relevant for instructions related to generating and handling these formats.

```md
---
applyTo: 'src/**/*.rb, src/**/*.adoc, output/**/*.html, output/**/*.pdf'
---
```
This update includes both source files and common output formats, providing a balanced scope for the instructions.

These options provide flexibility in tailoring the `applyTo` field to better suit the specific needs of users working with Ruby Asciidoctor and its plugins.
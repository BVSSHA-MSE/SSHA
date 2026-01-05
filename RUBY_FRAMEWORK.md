# A Fluent Ruby Framework for Building AsciiDoc
A domain-driven, Clean Architecture approach for generating valid AsciiDoc through a fluent Ruby DSL, with syntax relegated to infrastructure.

## Executive summary
This framework treats documentation as a structured domain model, then translates that model into AsciiDoc as an output adapter. The result is a system that can generate books, articles, and collections (websites) with explicit invariants, predictable rendering, and testable boundaries.

Core principles:
- Documentation is a first-class engineered system: structure, reuse, and automation are designed intentionally.
- Domain objects model intent (book, part, chapter, section, blocks).
- Rendering is infrastructure: it owns AsciiDoc syntax rules and formatting choices.
- Tests replace static guarantees: domain invariants, renderer output, and architectural guardrails.
- Ruby ergonomics come from message passing, blocks, and Enumerable traversal.

---

## 1. The AsciiDoc mental model your generator must respect

### 1.1 Processor reality: parse, then convert
An AsciiDoc processor accepts source text, parses it into a structured document model, then converts that model to the chosen output backend (HTML, DocBook, PDF, and others). Your builder generates the source text, but it should align with the parser’s expectations.

Key implications for a generator:
- Generate predictable, line-oriented structure, because blocks are line-oriented.
- Prefer explicit separation between blocks, because blocks are expected to be bounded by blank lines or document boundaries.
- Keep output normalized, because processors normalize input lines.

### 1.2 Normalization rules that matter for output stability
Processors normalize lines, including forcing UTF-8 and stripping trailing spaces, then join lines using "\n" when producing rendered output. This matters for golden file tests and diffs. Your renderer should:
- Emit UTF-8 by default.
- Avoid trailing spaces.
- Use "\n" consistently.

Include files have special normalization behavior: only include files with recognized AsciiDoc extensions are fully normalized; others get only end-of-line removal. If your framework emits include directives, you should keep encoding and extensions explicit when needed.

### 1.3 Blocks: the unit of structure
A block is a discrete, line-oriented chunk of content. Blocks can be nested, but only where the block’s content model allows it.

Block boundary discipline (generator rule-of-thumb):
- Put an empty line between blocks.
- Ensure metadata lines belong directly above the block they describe.
- Avoid interleaving delimited blocks.

Block boundary forms:
- Implicit: paragraphs, lists, block macros.
- Explicit: delimited blocks bounded by delimiter lines.
- Sections: defined by a title prefixed by one or more "=" characters.

### 1.4 Context and content model
Every block has a context (its type) and a content model (how its content is processed). Content models include:
- compound: contains child blocks (example: sections)
- simple: paragraph text with substitutions
- verbatim: verbatim text with verbatim substitutions (example: listing blocks)
- raw: unprocessed passthrough
- empty: no content (example: image blocks)
- table: fixed structure

Design implication:
- Your domain should express intent: "this is a source block", "this is a sidebar", "this is an admonition".
- Your renderer should map intent to the right structural container and content model.

Important nuance:
- "source" is expressed as a block style applied to a listing (or literal) structural container. A generator should implement source by emitting a listing-style block with the source style and optional language hint.

### 1.5 Nesting delimited blocks safely
Delimited blocks cannot be interleaved. If a delimited block nests another delimited block with the same structural container, the nested delimiter length must differ so the parser can distinguish them.

Generator design implication:
- Your renderer needs a delimiter strategy for nested blocks:
  - Maintain a stack of delimiters.
  - When nesting the same delimiter type, increase or decrease delimiter length.
  - Guarantee closing delimiters match opening delimiters.

### 1.6 Doctype is structural and schema-like
Doctype declares the expected structure of the document.
- article: default structure
- book: allows multiple level-0 sections that act as part titles; supports special sections (appendix, dedication, preface, bibliography, glossary, index, colophon)
- manpage: special header and section conventions
- inline: read a single paragraph and apply inline formatting without wrapping paragraph tags

Generator design implication:
- Your domain document type should drive structure and rendering rules.
- Your rules engine should validate doctype-specific constraints.

---

## 2. Book semantics in AsciiDoc: what to model explicitly

### 2.1 Multi-part books
In book doctype, parts occupy the top level in the hierarchy.
- A part is a level 0 section title ("=").
- A part must contain at least one level 1 section.
- The first part is the first level 0 section after the document title.
- A part may have a part intro, which is the content between the part title and the first section in the part.
- Part intro can be marked explicitly using the partintro style on the sole block before the first section.

### 2.2 Chapters and special sections
In book doctype:
- A chapter is a level 1 section without a block style.
- Special sections like preface, colophon, appendix are declared using section styles (block style lines like "[preface]" or "[appendix]").
- In a multi-part book, special sections can be made siblings of parts by writing them with a level 0 title and the correct style; the parser adjusts their level but preserves them as siblings in the hierarchy.
- Nested section levels must be sequential.

### 2.3 Numbering and signifiers
- Book part numbers are controlled by the partnums attribute, separate from sectnums.
- The "Part" prefix can be customized via part-signifier, and removed by unsetting part-signifier.
- Chapter signifiers can be applied when sectnums is set, via chapter-signifier.

Generator design implication:
- Model numbering and signifiers as document attributes; avoid manual string concatenation in titles.
- Provide first-class helpers for these attributes in the DSL.

---

## 3. Architecture: domain core, syntax edges

### 3.1 Target properties
A useful AsciiDoc builder should:
- Model documentation as a rich domain; avoid stringly-typed construction.
- Support books, articles, websites, and pages as explicit document types.
- Keep AsciiDoc syntax at the infrastructure boundary.
- Leverage Ruby’s message passing and Enumerable semantics.
- Stay evolvable through tests and boundaries.

### 3.2 Clean Architecture mapping
- Domain: pure Ruby, behavior-rich objects (document, part, chapter, section, blocks, rules).
- Application: use cases and DSL that coordinate building and validation.
- Infrastructure: renderers, Asciidoctor invocation, persistence, integration.
- Interfaces: CLI, Rake tasks, web delivery mechanisms.

### 3.3 Project layout
A practical structure:
```
my_doc_builder/
  lib/
    my_doc_builder.rb
    my_doc_builder/
      domain/
        document.rb
        nodes.rb
        rules.rb
      application/
        dsl.rb
        build_book.rb
      infrastructure/
        renderers/
          asciidoc_renderer.rb
          html_renderer.rb
        persistence/
          filesystem_repository.rb
      interfaces/
        cli.rb
  spec/
    domain/
    application/
    infrastructure/
```

---

## 4. Domain model: intent-revealing objects with invariants

### 4.1 A minimal node protocol
A small protocol enables composition and traversal:

```ruby
module MyDocBuilder
  module Domain
    module Node
      def children = (@children ||= [])

      def with_child(child)
        children << child
        self
      end

      def each_node(&block)
        return enum_for(:each_node) unless block
        yield self
        children.each { |child| child.each_node(&block) }
      end
    end
  end
end
```

### 4.2 Value objects for header metadata
Attributes and Author are value objects:

```ruby
module MyDocBuilder
  module Domain
    class Attributes
      def initialize(hash = {})
        @hash = hash.transform_keys(&:to_sym).freeze
      end

      def [](key) = @hash[key.to_sym]
      def to_h = @hash
      def merge(other) = self.class.new(@hash.merge(other.to_h))
    end

    class Author
      def initialize(name:, email: nil)
        raise ArgumentError, "name required" if name.to_s.strip.empty?
        @name = name.freeze
        @email = email&.freeze
        freeze
      end

      def to_str
        email ? "#{name} <#{email}>" : name
      end

      attr_reader :name, :email
    end
  end
end
```

### 4.3 Document aggregate root and document types
Document is the aggregate root; Book, Article, Website are specialized documents that set baseline attributes such as doctype.

```ruby
module MyDocBuilder
  module Domain
    class Document
      include Node

      def initialize(title:, author: nil, attributes: Attributes.new)
        @title = title.to_s
        raise ArgumentError, "title required" if @title.strip.empty?
        @author = author
        @attributes = attributes
      end

      attr_reader :title, :author, :attributes

      def with_attribute(key, value = nil)
        kv = value.nil? ? { key.to_sym => "" } : { key.to_sym => value }
        @attributes = @attributes.merge(Attributes.new(kv))
        self
      end

      def add(child) = with_child(child)
    end

    class Book < Document
      def initialize(**kwargs)
        super(**kwargs)
        with_attribute(:doctype, "book")
      end
    end

    class Article < Document
      def initialize(**kwargs)
        super(**kwargs)
        with_attribute(:doctype, "article")
      end
    end

    class Website < Document
      def initialize(**kwargs)
        super(**kwargs)
        with_attribute(:doctype, "article")
      end

      def pages = children
      def add_page(page) = with_child(page)
    end
  end
end
```

### 4.4 Structural nodes and blocks
A domain node set for books:

```ruby
module MyDocBuilder
  module Domain
    class Part
      include Node
      def initialize(title:) = (@title = title.to_s).tap { raise ArgumentError if @title.empty? }
      attr_reader :title
      def add_chapter(chapter) = with_child(chapter)
      def chapters = children
    end

    class Chapter
      include Node
      def initialize(title:) = (@title = title.to_s).tap { raise ArgumentError if @title.empty? }
      attr_reader :title
      def add_section(section) = with_child(section)
      def sections = children
    end

    class Section
      include Node
      def initialize(title:, level: 2)
        @title = title.to_s
        @level = Integer(level)
        raise ArgumentError, "level must be >= 1" if @level < 1
      end
      attr_reader :title, :level

      def paragraph(text) = with_child(ParagraphBlock.new(text))
      def unordered_list(*items) = with_child(UnorderedListBlock.new(items))
      def source(code, language: nil) = with_child(SourceBlock.new(code, language: language))
    end

    class ParagraphBlock
      def initialize(text) = (@text = text.to_s)
      attr_reader :text
    end

    class UnorderedListBlock
      def initialize(items) = (@items = Array(items).flatten.map(&:to_s))
      attr_reader :items
    end

    class SourceBlock
      def initialize(code, language: nil)
        @code = code.to_s
        @language = language&.to_s
      end
      attr_reader :code, :language
    end
  end
end
```

Option set:
- Keep blocks as leaf nodes (above).
- Promote blocks to richer objects (context, attributes, substitutions) when you need admonitions, sidebars, tables, and nested delimited blocks.

### 4.5 Rules: making structure safe
Rules encode invariants and fail fast. This is where you align domain structure with AsciiDoc structure rules.

```ruby
module MyDocBuilder
  module Domain
    class Rules
      class Violation < StandardError; end

      def validate_book!(book)
        parts = book.children.grep(Part)
        return if parts.empty?

        parts.each do |part|
          raise Violation, "Part '#{part.title}' must contain at least one chapter" if part.chapters.empty?
        end
      end

      def validate_sections!(node)
        node.each_node do |n|
          next unless n.is_a?(Section)
          parent = parent_of(node, n)
          next unless parent.is_a?(Section)
          raise Violation, "Nested section levels must be sequential" unless n.level == parent.level + 1
        end
      end

      private

      def parent_of(root, target)
        stack = [[nil, root]]
        until stack.empty?
          parent, current = stack.pop
          return parent if current.equal?(target)
          current.children.each { |c| stack << [current, c] }
        end
        nil
      end
    end
  end
end
```

If you choose to support book special sections (preface, appendix, colophon) and part intro, add explicit domain objects or explicit section styles so validation can verify correct level and placement.

---

## 5. DSL: fluent Ruby that reads like an executable outline

### 5.1 DSL shape
You can implement the DSL using blocks, instance_eval, and a stack. The DSL is an adapter that translates fluent calls into domain objects.

```ruby
module MyDocBuilder
  module Application
    module DSL
      def book(title:, author: nil, **attrs, &block)
        doc = Domain::Book.new(title: title, author: author && Domain::Author.new(**author))
        attrs.each { |k, v| doc.with_attribute(k, v) }
        Builder.new(doc).instance_eval(&block) if block
        doc
      end

      def article(title:, author: nil, **attrs, &block)
        doc = Domain::Article.new(title: title, author: author && Domain::Author.new(**author))
        attrs.each { |k, v| doc.with_attribute(k, v) }
        Builder.new(doc).instance_eval(&block) if block
        doc
      end

      class Builder
        def initialize(root) = (@stack = [root])
        def current = @stack.last

        def part(title, &block)
          node = Domain::Part.new(title: title)
          current.with_child(node)
          @stack << node
          instance_eval(&block) if block
          @stack.pop
          node
        end

        def chapter(title, &block)
          node = Domain::Chapter.new(title: title)
          current.with_child(node)
          @stack << node
          instance_eval(&block) if block
          @stack.pop
          node
        end

        def section(title, level: nil, &block)
          node = Domain::Section.new(title: title, level: infer_section_level(current, level))
          current.with_child(node)
          @stack << node
          instance_eval(&block) if block
          @stack.pop
          node
        end

        def p(text) = current.paragraph(text)
        def ul(*items) = current.unordered_list(*items)
        def src(code, language: nil) = current.source(code, language: language)

        private

        def infer_section_level(parent, level)
          return level if level
          return 1 if parent.is_a?(Domain::Document)
          return 1 if parent.is_a?(Domain::Chapter) || parent.is_a?(Domain::Part)
          return parent.level + 1 if parent.is_a?(Domain::Section)
          1
        end
      end
    end
  end
end
```

### 5.2 DSL options you can choose deliberately
Option A: instance_eval DSL (above)
- Very fluent, reads like a document outline.
- Requires disciplined method naming to avoid collisions.

Option B: explicit builder receiver
- Less magic: builder.part { ... } instead of implicit receiver.
- Safer if you expect users to mix this DSL into large codebases.

Option C: functional constructors
- No DSL, only constructors and composition.
- Highest explicitness, lowest syntactic sugar.

---

## 6. Rendering: AsciiDoc is an adapter

### 6.1 Renderer responsibilities
Renderers translate the domain tree into valid AsciiDoc.
- This is where delimiters, section markers, styles, and spacing rules live.
- Keep renderers deterministic and side-effect free.
- Prefer emitting arrays of lines, then joining once.

### 6.2 Minimal AsciiDoc renderer
```ruby
module MyDocBuilder
  module Infrastructure
    module Renderers
      class AsciidocRenderer
        def render(document)
          lines = []
          lines << "= #{document.title}"
          lines << document.author.to_s if document.author
          document.attributes.to_h.each do |key, value|
            lines << (value == "" ? ":#{key}:" : ":#{key}: #{value}")
          end
          lines << ""
          lines.concat(render_children(document))
          normalize(lines).join("\n").rstrip + "\n"
        end

        private

        def render_children(node)
          node.children.flat_map { |child| render_node(child) }
        end

        def render_node(node)
          case node
          when MyDocBuilder::Domain::Part
            ["= #{node.title}", "", *render_children(node)]
          when MyDocBuilder::Domain::Chapter
            ["== #{node.title}", "", *render_children(node)]
          when MyDocBuilder::Domain::Section
            [("#" * 0), "#{("=" * (node.level + 1))} #{node.title}", "", *render_children(node)]
              .reject(&:empty?)
          when MyDocBuilder::Domain::ParagraphBlock
            [node.text, ""]
          when MyDocBuilder::Domain::UnorderedListBlock
            node.items.map { |i| "* #{i}" } + [""]
          when MyDocBuilder::Domain::SourceBlock
            header = node.language ? ["[source,#{node.language}]"] : []
            header + ["----", node.code, "----", ""]
          else
            [""]
          end
        end

        def normalize(lines)
          lines.map do |line|
            line.to_s.encode("UTF-8").rstrip
          end
        end
      end
    end
  end
end
```

The section rendering line above demonstrates the need to separate "semantic level" from "emitted marker level". For books, part and chapter levels are special cases; for articles, section levels differ. Keep a dedicated mapping function per doctype so you can reason about it and test it.

### 6.3 Doctype-aware section mapping strategy
Recommendation:
- In the domain: store a semantic level (for example: chapter is chapter, section is section).
- In the renderer: compute emitted markers based on doctype and position:
  - Book:
    - document title: level 0 marker "="
    - part: level 0 marker "="
    - chapter: level 1 marker "=="
    - section: level >= 2 marker "===" and deeper
  - Article:
    - section: level 1 marker "=="
    - subsection: level 2 marker "===" and deeper

If you support special sections:
- Emit style lines like "[preface]" or "[appendix]" immediately before the section title.
- Enforce their level and placement using the rules engine.

### 6.4 Attribute precedence and "soft setting"
Attribute assignment precedence typically places CLI or API assignments above document assignments. A generator that is also used from CLIs should support a notion of "soft setting" by appending "@" to the attribute value or name, allowing document assignments to override.

Suggested DSL conveniences:
- attribute(:imagesdir, "images", precedence: :soft) emits ":imagesdir@: images" or equivalent CLI usage.
- unset_attribute(:sectids, precedence: :soft) models "!sectids=@".

---

## 7. Composition: include directives and docs-as-code practices
For long-form publishing:
- Use book doctype when building multi-chapter outputs.
- Compose large documents via include directives and shared attributes.
- Validate content separately from PDF layout and theme concerns.

If you emit include directives, provide nodes like:
- IncludeDirective(path:, tags:, level_offset:, encoding:)
and render them as include:: lines with attribute lists.

Operational caution:
- Include file normalization depends on extension recognition and encoding settings. Prefer consistent .adoc extensions and UTF-8 unless you have a strong reason to diverge.

---

## 8. Application layer: use cases, ports, and boundary discipline

### 8.1 Use case orchestration
A use case coordinates validation, rendering, and optional persistence. Ports are behavioral contracts, expressed as "responds to render" and "responds to write".

```ruby
module MyDocBuilder
  module Application
    class BuildBook
      def initialize(rules: Domain::Rules.new, renderer:, repo: nil)
        @rules = rules
        @renderer = renderer
        @repo = repo
      end

      def call(document:, output_path: nil)
        @rules.validate_book!(document)
        asciidoc = @renderer.render(document)
        @repo&.write(output_path, asciidoc) if output_path
        asciidoc
      end
    end
  end
end
```

### 8.2 Repository adapter
```ruby
module MyDocBuilder
  module Infrastructure
    module Persistence
      class FilesystemRepository
        def write(path, content)
          raise ArgumentError, "path required" unless path
          dir = File.dirname(path)
          Dir.mkdir(dir) unless Dir.exist?(dir)
          File.write(path, content, mode: "w:utf-8")
        end
      end
    end
  end
end
```

---

## 9. Testing: safety net and long-term maintainability

Tests serve three roles:
- Domain: protect invariants and structure rules.
- Renderer: validate syntax output, spacing, doctype mapping.
- Architecture: prevent domain from depending on infrastructure.

Example specs:
```ruby
feature "Book structure validation" do
  Given(:rules) { MyDocBuilder::Domain::Rules.new }

  scenario "rejects a multipart book with an empty part" do
    Given(:book) { MyDocBuilder::Domain::Book.new(title: "X") }
    Given(:part) { MyDocBuilder::Domain::Part.new(title: "Part I") }
    Given { book.with_child(part) }

    When { rules.validate_book!(book) }

    Then { error.should be_a(MyDocBuilder::Domain::Rules::Violation) }
    Then { error.message.should == "Part 'Part I' must contain at least one chapter" }
  end
end
```

```ruby
feature "AsciiDoc rendering" do
  Given(:renderer) { MyDocBuilder::Infrastructure::Renderers::AsciidocRenderer.new }

  scenario "renders a part, chapter, and section structure" do
    Given(:doc) { MyDocBuilder::Domain::Book.new(title: "T") }
    Given(:part) { MyDocBuilder::Domain::Part.new(title: "P") }
    Given(:chap) { MyDocBuilder::Domain::Chapter.new(title: "C") }
    Given(:sec) { MyDocBuilder::Domain::Section.new(title: "S", level: 2) }

    Given { sec.paragraph("Hi") }
    Given { chap.with_child(sec) }
    Given { part.with_child(chap) }
    Given { doc.with_child(part) }

    When(:output) { renderer.render(doc) }

    Then { output.should include("= T") }
    Then { output.should include("= P") }
    Then { output.should include("== C") }
    Then { output.should include("=== S") }
    Then { output.should include("Hi") }
  end
end
```

Golden output tests:
- Render representative books and compare the full AsciiDoc output to versioned fixtures.
- Keep fixtures stable by normalizing trailing whitespace and using consistent line endings.

---

## 10. Worked example: multi-part book from the DSL

```ruby
include MyDocBuilder::Application::DSL

doc = book(
  title: "Multi-Part Book Example",
  author: { name: "Jane Dev", email: "jane@example.com" },
  toc: "",
  sectnums: "",
  partnums: ""
) do
  part "Defensive Operations" do
    chapter "An Introduction to DefenseOps" do
      section "Why it matters" do
        p "Model docs like you model code: explicit boundaries."
      end
    end
  end

  part "Managing Werewolves" do
    chapter "Operational Playbooks" do
      section "On-call" do
        ul "Keep changes small", "Keep adapters boring", "Test behavior"
      end
      section "Snippet" do
        src "puts 'howl'", language: "ruby"
      end
    end
  end
end

renderer = MyDocBuilder::Infrastructure::Renderers::AsciidocRenderer.new
puts renderer.render(doc)
```

---

## 11. Extension points: grow without breaking the core

### 11.1 Rich block attributes and custom blocks
AsciiDoc differentiates between document attributes, element attributes, block attributes, and macro attributes. Expand your model only when required:
- Add an AttributeList value object for blocks and macros.
- Add a DelimitedBlock node that carries a structural container and delimiter policy.
- Add a CustomBlock node that selects structural containers to provide reasonable fallback behavior when extensions are absent.

### 11.2 Multiple renderers
Keep the domain stable and add alternative renderers (HTML, Markdown, DocBook). A stub HTML renderer can be used for fast previews in development.

### 11.3 Asciidoctor invocation at the boundary
If you want PDF or HTML builds:
- Generate AsciiDoc in your framework.
- Invoke Asciidoctor or asciidoctor-pdf at the boundary, passing attributes via CLI or API.
- Keep build automation separate from content generation.

---

## 12. Operational checklist

Content generation:
- Deterministic rendering and normalized output.
- Domain validation for doctype-specific structure.
- High-value golden output tests.

Build pipeline:
- Run lint or validation to detect missing includes and broken references.
- Run Asciidoctor builds in CI.
- Treat PDF layout validation as a separate concern from content correctness.

---

## Sources used
- AsciiDoc Language Specification (pre-release) PDF: blocks, contexts, content models, doctype rules, book parts and special sections, attribute precedence.
- "Designing a Domain-Driven, Clean Architecture Ruby Framework for AsciiDoc" PDF: architecture goals and layer mapping.
- "Ruby Code Samples: DDD / Clean Architecture AsciiDoc Builder Framework" PDF: domain nodes, DSL, renderer, ports/adapters, tests.
- "Ruby for .NET Developers" PDF: boundaries, tests, docs-as-code perspective with Asciidoctor.

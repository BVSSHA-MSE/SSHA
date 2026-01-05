# Phase 1 Definition: DDD + Clean Architecture for a Ruby AsciiDoc Builder

This document defines **Phase 1** of the system: what is *present today*, expressed concretely across **Domain**, **Application**, and **Infrastructure** layers, with illustrative Ruby code samples.

---

## Domain Layer

### Aggregate Root: `Domain::Document`

Owns identity, header metadata, attributes, and the document tree.

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
    end
  end
end
```

---

### Document Specializations

```ruby
class Book < Document
  def initialize(**args)
    super(**args)
    with_attribute(:doctype, "book")
  end
end

class Article < Document
  def initialize(**args)
    super(**args)
    with_attribute(:doctype, "article")
  end
end
```

---

### Tree Protocol: `Domain::Node`

Minimal protocol enabling composition and traversal.

```ruby
module Node
  def children = (@children ||= [])

  def with_child(child)
    children << child
    self
  end

  def each_node(&block)
    return enum_for(:each_node) unless block
    yield self
    children.each { |c| c.each_node(&block) }
  end
end
```

---

### Value Objects

#### `Author`

```ruby
class Author
  def initialize(name:, email: nil)
    raise ArgumentError if name.to_s.strip.empty?
    @name = name.freeze
    @email = email&.freeze
    freeze
  end

  def to_s
    email ? "#{name} <#{email}>" : name
  end

  attr_reader :name, :email
end
```

#### `Attributes`

```ruby
class Attributes
  def initialize(hash = {})
    @hash = hash.transform_keys(&:to_sym).freeze
  end

  def to_h = @hash
  def [](k) = @hash[k.to_sym]
  def merge(other) = self.class.new(@hash.merge(other.to_h))
end
```

---

### Structural Entities

#### `Part`, `Chapter`, `Section`

```ruby
class Part
  include Node
  def initialize(title:)
    @title = title.to_s
    raise ArgumentError if @title.empty?
  end
  attr_reader :title
end

class Chapter
  include Node
  def initialize(title:)
    @title = title.to_s
    raise ArgumentError if @title.empty?
  end
  attr_reader :title
end

class Section
  include Node
  def initialize(title:, level:)
    @title = title.to_s
    @level = Integer(level)
    raise ArgumentError if @level < 1
  end
  attr_reader :title, :level

  def paragraph(text)
    with_child(ParagraphBlock.new(text))
  end
end
```

---

### Leaf Blocks

```ruby
class ParagraphBlock
  def initialize(text)
    @text = text.to_s
  end
  attr_reader :text
end

class UnorderedListBlock
  def initialize(items)
    @items = Array(items).map(&:to_s)
  end
  attr_reader :items
end

class SourceBlock
  def initialize(code, language: nil)
    @code = code.to_s
    @language = language&.to_s
  end
  attr_reader :code, :language
end
```

---

### Domain Service: `Rules`

```ruby
class Rules
  class Violation < StandardError; end

  def validate_book!(book)
    parts = book.children.grep(Part)
    parts.each do |part|
      raise Violation, "Part must contain a chapter" if part.children.empty?
    end
  end
end
```

---

## Application Layer

### DSL Construction Adapter

```ruby
module Application
  module DSL
    def book(title:, author: nil, **attrs, &block)
      doc = Domain::Book.new(
        title: title,
        author: author && Domain::Author.new(**author)
      )
      attrs.each { |k, v| doc.with_attribute(k, v) }
      Builder.new(doc).instance_eval(&block) if block
      doc
    end
  end
end
```

### Builder

```ruby
class Builder
  def initialize(root)
    @stack = [root]
  end

  def current = @stack.last

  def part(title, &block)
    node = Domain::Part.new(title: title)
    current.with_child(node)
    @stack << node
    instance_eval(&block) if block
    @stack.pop
  end

  def chapter(title, &block)
    node = Domain::Chapter.new(title: title)
    current.with_child(node)
    @stack << node
    instance_eval(&block) if block
    @stack.pop
  end

  def section(title, level: 2, &block)
    node = Domain::Section.new(title: title, level: level)
    current.with_child(node)
    @stack << node
    instance_eval(&block) if block
    @stack.pop
  end

  def p(text)
    current.paragraph(text)
  end
end
```

---

### Use Case: `BuildBook`

```ruby
class BuildBook
  def initialize(rules:, renderer:, repo: nil)
    @rules = rules
    @renderer = renderer
    @repo = repo
  end

  def call(document:, output_path: nil)
    @rules.validate_book!(document)
    output = @renderer.render(document)
    @repo&.write(output_path, output)
    output
  end
end
```

---

## Infrastructure Layer

### AsciiDoc Renderer

```ruby
class AsciidocRenderer
  def render(document)
    lines = []
    lines << "= #{document.title}"
    lines << document.author.to_s if document.author

    document.attributes.to_h.each do |k, v|
      lines << (v.empty? ? ":#{k}:" : ":#{k}: #{v}")
    end

    lines << ""
    document.children.each { |c| lines.concat(render_node(c)) }

    lines.join("\n").rstrip + "\n"
  end

  def render_node(node)
    case node
    when Part
      ["= #{node.title}", ""]
    when Chapter
      ["== #{node.title}", ""]
    when Section
      ["#{'=' * (node.level + 1)} #{node.title}", ""]
    when ParagraphBlock
      [node.text, ""]
    else
      []
    end
  end
end
```

---

### Persistence Adapter

```ruby
class FilesystemRepository
  def write(path, content)
    File.write(path, content, mode: "w:utf-8")
  end
end
```

---

## Summary

Phase 1 delivers:

- Explicit domain modeling of document structure
- Strong aggregate boundaries and invariants
- Fluent DSL isolated from core domain
- Deterministic AsciiDoc rendering
- Clean separation of concerns across layers

This foundation is intentionally minimal and stable, designed to support future expansion without erosion of architectural clarity.

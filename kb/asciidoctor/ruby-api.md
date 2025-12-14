# Asciidoctor Ruby API Usage

## Core Methods

- **Convert string:**  
  ```ruby
  Asciidoctor.convert(asciidoc_string, options = {})
  ```
- **Convert file:**  
  ```ruby
  Asciidoctor.convert_file('input.adoc', to_file: 'output.html', backend: 'html5', safe: :safe)
  ```
- **Load document (no conversion):**  
  ```ruby
  doc = Asciidoctor.load(asciidoc_string, options = {})
  ```
- **Load file:**  
  ```ruby
  doc = Asciidoctor.load_file('input.adoc', options = {})
  ```

## Common Options

- `:attributes` — Hash of document attributes (`{ 'toc' => true }`)
- `:backend` — Output format (`'html5'`, `'pdf'`, etc.)
- `:safe` — Safe mode (`:unsafe`, `:safe`, `:server`, `:secure`)
- `:to_file` — Output file path or `false` for string output
- `:mkdirs` — Auto-create output directories

## Extensions

- Register custom processors:
  ```ruby
  Asciidoctor::Extensions.register do
    block_macro :hello do |parent, target, attrs|
      create_paragraph parent, "Hello, #{target}!", attrs
    end
  end
  ```

## Example: Convert with Attributes

```ruby
Asciidoctor.convert_file(
  'doc.adoc',
  to_file: 'doc.html',
  attributes: { 'toc' => true, 'sectnums' => true },
  safe: :safe
)
```

## References

- [API Docs](https://docs.asciidoctor.org/asciidoctor/latest/api/)
- [Extension Guide](https://docs.asciidoctor.org/asciidoctor/latest/extensions/)

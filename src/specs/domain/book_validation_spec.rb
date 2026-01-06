
feature %(We believe that book-specific rules will prevent structurally invalid multipart books,
and will result in deterministic AsciiDoc hierarchy.
We'll know it is true when a multipart book rejects parts without chapters.) do
  scenario "validate_book! rejects a multipart book with an empty part" do
    Given(:rules) { AsciiDocBuilder::Domain::Rules.new }
    Given(:book) { AsciiDocBuilder::Domain::Book.new(title: "X") }
    Given(:part) { AsciiDocBuilder::Domain::Part.new(title: "Part I") }
    Given { book.with_child(part) }

    When(:error) do
      begin
        rules.validate_book!(book)
        nil
      rescue => e
        e
      end
    end

    Then { error.is_a?(AsciiDocBuilder::Domain::Rules::Violation) == true }
    Then { error.message.include?("must contain at least one chapter") == true }
  end

  scenario "validate_book! accepts a book without parts" do
    Given(:rules) { AsciiDocBuilder::Domain::Rules.new }
    Given(:book) { AsciiDocBuilder::Domain::Book.new(title: "X") }

    When(:error) do
      begin
        rules.validate_book!(book)
        nil
      rescue => e
        e
      end
    end

    Then { error == nil }
  end

  scenario "validate_book! accepts a multipart book when each part has at least one chapter" do
    Given(:rules) { AsciiDocBuilder::Domain::Rules.new }
    Given(:book) { AsciiDocBuilder::Domain::Book.new(title: "X") }
    Given(:part) { AsciiDocBuilder::Domain::Part.new(title: "Part I") }
    Given(:chapter) { AsciiDocBuilder::Domain::Chapter.new(title: "C1") }

    Given { part.with_child(chapter) }
    Given { book.with_child(part) }

    When(:error) do
      begin
        rules.validate_book!(book)
        nil
      rescue => e
        e
      end
    end

    Then { error == nil }
  end
end
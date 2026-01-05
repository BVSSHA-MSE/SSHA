
feature %(We believe that author metadata modeled as a value object will reduce malformed header output,
and will result in predictable author-line emission.
We'll know it is true when author name is required and email is optional in serialization.) do
  scenario "Author rejects a blank name" do
    Given(:build_author) { -> { AsciiDocBuilder::Domain::Author.new(name: "  ") } }

    When(:error) do
      begin
        build_author.call
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("name required") == true }
  end

  scenario "Author rejects a missing name" do
    Given(:build_author) { -> { AsciiDocBuilder::Domain::Author.new(name: nil) } }

    When(:error) do
      begin
        build_author.call
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("name required") == true }
  end

  scenario "Author renders without email" do
    Given(:author) { AsciiDocBuilder::Domain::Author.new(name: "Jane Dev") }

    Then { author.to_s == "Jane Dev" }
  end

  scenario "Author renders with email" do
    Given(:author) { AsciiDocBuilder::Domain::Author.new(name: "Jane Dev", email: "jane@example.com") }

    Then { author.to_s == "Jane Dev <jane@example.com>" }
  end
end
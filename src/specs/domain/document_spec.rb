
feature %(We believe that requiring a non-empty document title will prevent invalid headers,
and will result in deterministic rendering preconditions.
We'll know it is true when blank titles are rejected with an ArgumentError.) do
  scenario "Document rejects a blank title" do
    Given(:build_document) { -> { AsciiDocBuilder::Domain::Document.new(title: "   ") } }

    When(:error) do
      begin
        build_document.call
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("title required") == true }
  end

  scenario "Document rejects a missing title" do
    Given(:build_document) { -> { AsciiDocBuilder::Domain::Document.new(title: nil) } }

    When(:error) do
      begin
        build_document.call
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("title required") == true }
  end

  scenario "Document accepts a non-empty title" do
    Given(:document) { AsciiDocBuilder::Domain::Document.new(title: "My Title") }

    Then { document.title == "My Title" }
  end
end
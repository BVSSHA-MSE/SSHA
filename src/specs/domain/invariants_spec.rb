
feature %(We believe that structural nodes enforce basic invariants at construction time,
and will result in earlier failures with clearer error localization.
We'll know it is true when empty titles and invalid section levels are rejected.) do
  scenario "Part rejects an empty title" do
    Given(:build_part) { -> { AsciiDocBuilder::Domain::Part.new(title: "") } }

    When(:error) do
      begin
        build_part.call
        nil
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("Title cannot be empty") == true }
  end

  scenario "Chapter rejects an empty title" do
    Given(:build_chapter) { -> { AsciiDocBuilder::Domain::Chapter.new(title: "") } }

    When(:error) do
      begin
        build_chapter.call
        nil
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("Title cannot be empty") == true }
  end

  scenario "Section rejects an empty title" do
    Given(:build_section) { -> { AsciiDocBuilder::Domain::Section.new(title: "", level: 1) } }

    When(:error) do
      begin
        build_section.call
        nil
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("Title cannot be empty") == true }
  end

  scenario "Section rejects a level less than 1" do
    Given(:build_section) { -> { AsciiDocBuilder::Domain::Section.new(title: "S", level: 0) } }

    When(:error) do
      begin
        build_section.call
        nil
      rescue => e
        e
      end
    end

    Then { error.is_a?(ArgumentError) == true }
    Then { error.message.include?("level must be") == true }
  end
end
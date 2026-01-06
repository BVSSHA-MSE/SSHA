
feature %(We believe that section-level sequencing rules will prevent ambiguous hierarchy,
and will result in predictable emitted heading markers.
We'll know it is true when nested section levels cannot skip.) do
  scenario "validate_sections! rejects a nested section that skips a level" do
    Given(:rules) { AsciiDocBuilder::Domain::Rules.new }
    Given(:root) { AsciiDocBuilder::Domain::Book.new(title: "T") }
    Given(:parent_section) { AsciiDocBuilder::Domain::Section.new(title: "Parent", level: 2) }
    Given(:child_section) { AsciiDocBuilder::Domain::Section.new(title: "Child", level: 4) }

    Given { parent_section.with_child(child_section) }
    Given { root.with_child(parent_section) }

    When(:error) do
      begin
        rules.validate_sections!(root)
        nil
      rescue => e
        e
      end
    end

    Then { error.is_a?(AsciiDocBuilder::Domain::Rules::Violation) == true }
    Then { error.message.include?("Nested section levels must be sequential") == true }
  end

  scenario "validate_sections! accepts sequential nesting" do
    Given(:rules) { AsciiDocBuilder::Domain::Rules.new }
    Given(:root) { AsciiDocBuilder::Domain::Book.new(title: "T") }
    Given(:parent_section) { AsciiDocBuilder::Domain::Section.new(title: "Parent", level: 2) }
    Given(:child_section) { AsciiDocBuilder::Domain::Section.new(title: "Child", level: 3) }

    Given { parent_section.with_child(child_section) }
    Given { root.with_child(parent_section) }

    When(:error) do
      begin
        rules.validate_sections!(root)
        nil
      rescue => e
        e
      end
    end

    Then { error == nil }
  end
end
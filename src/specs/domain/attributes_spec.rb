
feature %(We believe that document attributes modeled as an immutable value object will prevent accidental mutation,
and will result in explicit, merge-based evolution of header state.
We'll know it is true when keys normalize to symbols and merge produces a new value object.) do
  scenario "Attributes normalize keys to symbols" do
    Given(:attributes) { AsciiDocBuilder::Domain::Attributes.new("toc" => "") }

    When (:toc) { attributes[:toc] }

    Then { toc == "" }
  end

  scenario "Attributes normalize multiple keys to symbols" do
    Given(:attributes) { AsciiDocBuilder::Domain::Attributes.new("toc" => "", "sectnums" => "") }

    When (:toc) { attributes[:toc] }
    When (:sectnums) { attributes[:sectnums] }

    Then { toc == "" }
    Then { sectnums == "" }
  end

  scenario "Attributes merge produces a new instance with combined keys" do
    Given(:left) { AsciiDocBuilder::Domain::Attributes.new(toc: "") }
    Given(:right) { AsciiDocBuilder::Domain::Attributes.new(sectnums: "") }

    When(:merged) { left.merge(right) }

    Then { merged[:toc] == "" }
    Then { merged[:sectnums] == "" }
    Then { merged.equal?(left) == false }
    Then { merged.equal?(right) == false }
  end
end
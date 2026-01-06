
feature %(We believe that a minimal node protocol enables composition and traversal without infrastructure coupling,
and will result in predictable tree iteration.
We'll know it is true when each_node yields the root and all descendants in a stable traversal.) do
  scenario "each_node yields root then descendants" do
    Given(:doc) { AsciiDocBuilder::Domain::Book.new(title: "T") }
    Given(:part) { AsciiDocBuilder::Domain::Part.new(title: "P") }
    Given(:chapter) { AsciiDocBuilder::Domain::Chapter.new(title: "C") }
    Given(:section) { AsciiDocBuilder::Domain::Section.new(title: "S", level: 2) }

    Given { section.paragraph("Hello") }
    Given { chapter.with_child(section) }
    Given { part.with_child(chapter) }
    Given { doc.with_child(part) }

    When(:node_classes) { doc.each_node.map { |n| n.class } }

    Then { node_classes.include?(AsciiDocBuilder::Domain::Book) == true }
    Then { node_classes.include?(AsciiDocBuilder::Domain::Part) == true }
    Then { node_classes.include?(AsciiDocBuilder::Domain::Chapter) == true }
    Then { node_classes.include?(AsciiDocBuilder::Domain::Section) == true }
    Then { node_classes.include?(AsciiDocBuilder::Domain::ParagraphBlock) == true }
  end
end
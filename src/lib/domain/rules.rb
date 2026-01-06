
module AsciiDocBuilder
  module Domain
    class Rules
      class Violation < StandardError; end

      def validate_sections!(root)
        validate_section_hierarchy!(root, expected_level: 1, root_level: 1)
      end

      private

      def validate_section_hierarchy!(section, expected_level:, root_level: nil)
        current_level = section.respond_to?(:level) ? section.level : root_level
        section.children.each do |child|
          if child.level != current_level + 1
            raise Violation, "Nested section levels must be sequential. Expected level #{current_level + 1}, got #{child.level}."
          end
          validate_section_hierarchy!(child, expected_level: current_level + 1, root_level: root_level)
        end
      end
    end
  end
end
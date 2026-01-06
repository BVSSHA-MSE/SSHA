
module AsciiDocBuilder
  module Domain
    class Section < Node
      attr_reader :title, :level

      def initialize(title:, level:)
        raise ArgumentError, "Title cannot be empty" if title.strip.empty?
        raise ArgumentError, "Section level must be greater than or equal to 1" if level < 1
        super()
        @title = title
        @level = level
      end

      def paragraph(content)
        with_child(ParagraphBlock.new(content: content))
      end
    end
  end
end

module AsciiDocBuilder
  module Domain
    class Section < Node
      attr_reader :title, :level

      def initialize(title:, level:)
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
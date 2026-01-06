
module AsciiDocBuilder
  module Domain
    class ParagraphBlock < Node
      attr_reader :content

      def initialize(content:)
        super()
        @content = content
      end
    end
  end
end
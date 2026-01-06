
module AsciiDocBuilder
  module Domain
    class Chapter < Node
      attr_reader :title

      def initialize(title:)
        raise ArgumentError, "Title cannot be empty" if title.strip.empty?
        super()
        @title = title
      end
    end
  end
end
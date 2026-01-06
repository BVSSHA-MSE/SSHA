
module AsciiDocBuilder
  module Domain
    class Book < Node
      attr_reader :title

      def initialize(title:)
        super()
        @title = title
      end
    end
  end
end
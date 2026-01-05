
module AsciiDocBuilder
  module Domain
    class Document
      attr_reader :title

      def initialize(title:)
        raise ArgumentError, "title required" if title.nil? || title.strip.empty?

        @title = title
      end
    end
  end
end
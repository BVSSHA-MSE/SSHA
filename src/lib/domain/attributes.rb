
module AsciiDocBuilder
  module Domain
    class Attributes
      def initialize(attributes = {})
        @attributes = attributes.transform_keys(&:to_sym).freeze
      end

      def [](key)
        @attributes[key.to_sym]
      end

      def merge(other)
        merged_attributes = @attributes.merge(other.to_h)
        self.class.new(merged_attributes)
      end

      def to_h
        @attributes
      end
    end
  end
end
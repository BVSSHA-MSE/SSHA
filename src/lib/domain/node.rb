
module AsciiDocBuilder
  module Domain
    class Node
      attr_reader :children

      def initialize
        @children = []
      end

      def with_child(child)
        @children << child
        self
      end

      def each_node(&block)
        return enum_for(:each_node) unless block_given?

        yield self
        children.each { |child| child.each_node(&block) }
      end
    end
  end
end
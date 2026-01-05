
module AsciiDocBuilder::Domain
  class Author
    attr_reader :name, :email

    def initialize(name:, email: nil)
      raise ArgumentError, "name required" if name.nil? || name.strip.empty?

      @name = name.strip
      @email = email
    end

    def to_s
      email ? "#{name} <#{email}>" : name
    end
  end
end
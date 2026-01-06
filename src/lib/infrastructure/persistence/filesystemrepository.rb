
module AsciiDocBuilder
  module Infrastructure
    module Persistence
      class FilesystemRepository
        def write(path, content)
          raise ArgumentError, "path required" if path.nil?
          # Implementation for writing to the filesystem
        end
      end
    end
  end
end
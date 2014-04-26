module Configspec
  module Type
    class File < Base
      def sourced_from?(from)
        backend.copy_file(from, @name)
      end

      def linked_to?(to)
        backend.make_link(@name, to)
      end
    end
  end
end


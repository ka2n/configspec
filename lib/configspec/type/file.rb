module Configspec
  module Type
    class File < Base
      def sourced_from?(from)
        backend.copy_file(from, @name)
      end

      def directory?
        backend.make_directory(@name)
      end

      def mode?(mode)
        backend.change_mode(@name, mode)
      end

      def owned_by?(user)
        backend.make_owned_by(@name, user)
      end

      def grouped_into?(group)
        backend.make_grouped_into(@name, group)
      end

      def linked_to?(to)
        backend.make_link(@name, to)
      end

      def readable?(by_whom)
        backend.change_mode_by_symbol(@name, "r", by_whom)
      end

      def writable?(by_whom)
        backend.change_mode_by_symbol(@name, "w", by_whom)
      end

      def executable?(by_whom)
        backend.change_mode_by_symbol(@name, "x", by_whom)
      end
    end
  end
end


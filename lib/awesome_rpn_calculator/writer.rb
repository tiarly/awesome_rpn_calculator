# frozen_string_literal: true

module AwesomeRPNCalculator
  class Writer
    class << self
      def write(message)
        puts "> #{message}"
      end
    end
  end
end

# frozen_string_literal: true

module AwesomeRPNCalculator
  class Scanner
    class << self
      def read
        input = $stdin.gets
        input.chomp
      end
    end
  end
end

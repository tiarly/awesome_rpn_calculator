# frozen_string_literal: true

module AwesomeRPNCalculator
  class Scanner
    class << self
      def read
        $stdin.gets.chomp
      rescue
        nil
      end
    end
  end
end

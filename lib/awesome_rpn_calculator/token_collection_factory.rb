# frozen_string_literal: true

module AwesomeRPNCalculator
  class TokenCollectionFactory
    class << self
      def call(input)
        input.split(' ').map { |item| Token.new(item) }
      end
    end
  end
end

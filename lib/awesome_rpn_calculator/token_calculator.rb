# frozen_string_literal: true

module AwesomeRPNCalculator
  class TokenCalculator
    class << self
      def call(operator, first_token, second_token)
        Token.new(
          operator.call(first_token.to_number, second_token.to_number)
        )
      end
    end
  end
end

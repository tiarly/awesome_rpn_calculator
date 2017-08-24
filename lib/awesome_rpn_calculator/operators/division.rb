# frozen_string_literal: true

module AwesomeRPNCalculator
  module Operators
    class Division
      class << self
        def call(first_operand, second_operand)
          first_operand / second_operand
        rescue ZeroDivisionError
          raise Errors::ZeroDivision
        end
      end
    end
  end
end

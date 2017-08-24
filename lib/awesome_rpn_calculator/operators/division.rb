# frozen_string_literal: true

module AwesomeRPNCalculator
  module Operators
    class Division
      DivisionByZeroError = Class.new(StandardError)

      class << self
        def call(first_operand, second_operand)
          raise DivisionByZeroError if second_operand.zero?
          first_operand / second_operand
        end
      end
    end
  end
end

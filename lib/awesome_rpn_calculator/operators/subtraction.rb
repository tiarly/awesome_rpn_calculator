# frozen_string_literal: true

module AwesomeRPNCalculator
  module Operators
    class Subtraction
      class << self
        def call(first_operand, second_operand)
          first_operand - second_operand
        end
      end
    end
  end
end

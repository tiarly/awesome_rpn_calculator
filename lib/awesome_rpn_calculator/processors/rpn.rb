# frozen_string_literal: true

module AwesomeRPNCalculator
  module Processors
    class RPN
      def initialize
        @stack = Stack.new []
      end

      def process(tokens)
        tokens.each do |token|
          calculate(token.operator) if token.operator?
          stack.add(token) if token.numeric?
        end

        stack.last
      end

      private

      attr_accessor :stack

      def calculate(operator)
        raise Errors::NotEnoughOperandsForCalculation unless stack.calculable?

        first_operand, last_operand = stack.pop(2)
        stack.add(TokenCalculator.call(operator, first_operand, last_operand))
      end
    end
  end
end

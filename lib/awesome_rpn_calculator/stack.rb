# frozen_string_literal: true

module AwesomeRPNCalculator
  class Stack
    MINIMAL_CALCULATION_NUMBER = 2

    def initialize(value)
      @stack = value
    end

    def add(value)
      stack << value
    end

    def last
      stack.last
    end

    def pop(amount)
      stack.pop(amount)
    end

    def calculable?
      stack.size >= MINIMAL_CALCULATION_NUMBER
    end

    private

    attr_accessor :stack
  end
end

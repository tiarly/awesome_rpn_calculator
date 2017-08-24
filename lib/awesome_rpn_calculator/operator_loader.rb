# frozen_string_literal: true

require_relative 'operators/division'
require_relative 'operators/multiplication'
require_relative 'operators/subtraction'
require_relative 'operators/sum'

module AwesomeRPNCalculator
  class OperatorLoader
    OPERATORS = {
      '/' => Operators::Division,
      '*' => Operators::Multiplication,
      '-' => Operators::Subtraction,
      '+' => Operators::Sum
    }.freeze

    class << self
      def call(key)
        OPERATORS[key].tap do |operator|
          raise Errors::InvalidInitialization unless operator
        end
      end
    end
  end
end

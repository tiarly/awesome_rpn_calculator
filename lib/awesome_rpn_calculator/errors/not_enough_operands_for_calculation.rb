# frozen_string_literal: true

module Errors
  class NotEnoughOperandsForCalculation < Base
    def message
      'Not enough operands to perfrom this calculation!'
    end
  end
end

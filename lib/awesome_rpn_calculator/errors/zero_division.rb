# frozen_string_literal: true

module Errors
  class ZeroDivision < Base
    def message
      'Why are you trying to divide something by zero?'
    end
  end
end

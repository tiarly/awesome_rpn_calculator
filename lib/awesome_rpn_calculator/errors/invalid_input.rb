# frozen_string_literal: true

module Errors
  class InvalidInput < Base
    def message
      'This is not a valid input!'
    end
  end
end

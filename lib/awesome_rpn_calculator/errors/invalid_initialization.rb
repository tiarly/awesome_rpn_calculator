# frozen_string_literal: true

module Errors
  class InvalidInitialization < Base
    def message
      'It seems you have tried to start up with an invalid configuration!'
    end
  end
end

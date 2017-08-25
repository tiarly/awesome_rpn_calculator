# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    module Commands
      class InputParser
        class << self
          LETTERS_REGEX = /[a-zA-Z]+/

          def execute(input, _)
            raise Errors::InvalidInput if LETTERS_REGEX.match?(input)
          end
        end
      end
    end
  end
end

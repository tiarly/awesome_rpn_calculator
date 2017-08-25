# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    module Commands
      class Quit
        EXIT_SIGNAL = 'q'

        class << self
          def execute(input, _)
            exit if InputEntry.new(input).exit_signal?
          end
        end

        class InputEntry
          def initialize(input)
            @input = input
          end

          def exit_signal?
            @input == EXIT_SIGNAL
          end
        end
      end
    end
  end
end

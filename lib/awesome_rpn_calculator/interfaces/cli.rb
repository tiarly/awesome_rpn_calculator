# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    class CLI
      extend Interfaceable

      class << self
        def start(_)
          while (stdin = scanner.read)
            # @TODO process calculations from stdin input
          end
        rescue StandardError
          writer.write 'An error has happend. Please try again.'
        end

        private

        def scanner
          @scanner ||= Scanner
        end

        def writer
          @writer ||= Writer
        end
      end
    end
  end
end

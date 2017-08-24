# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    class CLI
      extend Interfaceable

      class << self
        def start(options)
          @options = options

          while (stdin = scanner.read)
            processor.process(stdin)
          end
        rescue StandardError
          writer.write 'An error has happend. Please try again.'
        end

        private

        attr_reader :options

        def processor
          @processor = ProcessorLoader.call(options[:processor])
        end

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

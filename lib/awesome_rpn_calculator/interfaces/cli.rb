# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    class CLI
      include Interfaceable

      def self.start(*args)
        new.start(*args)
      end

      def start(options)
        @options = options

        while (stdin = scanner.read)
          begin
            writer.write(run_processor_for(stdin))
          rescue StandardError
            writer.write 'An error has happend. Please try again.'
          end
        end
      end

      private

      attr_reader :options

      def run_processor_for(input)
        processor.process(TokenCollectionFactory.call(input))
      end

      def processor
        @processor ||= ProcessorLoader.call(options[:processor]).new
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

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

        while (input = scanner.read)
          begin
            writer.write(CommandsManager.execute(input, processor))
          rescue Errors::Base => error
            writer.write error.message
          end
        end
      end

      private

      attr_reader :options

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

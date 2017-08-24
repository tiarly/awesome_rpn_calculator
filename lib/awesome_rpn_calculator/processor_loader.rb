# frozen_string_literal: true

require_relative 'processors/rpn'

module AwesomeRPNCalculator
  class ProcessorLoader
    PROCESSORS = { rpn: Processors::RPN }.freeze

    class << self
      def call(key)
        PROCESSORS[key].tap do |processor|
          raise Errors::InvalidInitialization unless processor
        end
      end
    end
  end
end

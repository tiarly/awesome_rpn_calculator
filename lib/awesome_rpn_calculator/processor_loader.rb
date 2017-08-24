# frozen_string_literal: true

require_relative 'processors/rpn'

module AwesomeRPNCalculator
  class ProcessorLoader
    NotFoundProcessorError = Class.new(StandardError)

    PROCESSORS = { rpn: Processors::RPN }.freeze

    class << self
      def call(key)
        PROCESSORS[key].tap do |processor|
          raise NotFoundProcessorError unless processor
        end
      end
    end
  end
end

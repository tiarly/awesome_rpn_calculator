# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    module Commands
      class Core
        class << self
          def execute(input, processor)
            tokens = TokenCollectionFactory.call(input)

            processor.process(tokens)
          end
        end
      end
    end
  end
end

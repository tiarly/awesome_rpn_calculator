# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    module Interfaceable
      def start(_)
        raise NotImplementedError
      end
    end
  end
end

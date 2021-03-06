# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    class TCP
      include Interfaceable

      def start(_)
        raise NotImplementedError
      end
    end
  end
end

# frozen_string_literal: true

module AwesomeRPNCalculator
  module Interfaces
    class TCP
      extend Interfaceable

      class << self
        def start(_)
          raise NotImplementedError
        end
      end
    end
  end
end

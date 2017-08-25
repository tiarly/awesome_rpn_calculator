# frozen_string_literal: true

module AwesomeRPNCalculator
  class Runner
    class << self
      def run(interface: :cli, options: { processor: :rpn })
        InterfaceLoader.call(interface).start(options)
      end
    end
  end
end

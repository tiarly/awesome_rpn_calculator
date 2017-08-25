# frozen_string_literal: true

require_relative 'commands/core'
require_relative 'commands/input_parser'
require_relative 'commands/quit'

module AwesomeRPNCalculator
  module Interfaces
    class CommandsManager
      COMMANDS = [Commands::Quit,
                  Commands::InputParser,
                  Commands::Core].freeze

      class << self
        def execute(input, processor)
          response = nil

          COMMANDS.each do |command|
            response = command.execute(input, processor)
          end

          response
        end
      end
    end
  end
end

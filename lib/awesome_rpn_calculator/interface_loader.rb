# frozen_string_literal: true

require_relative 'interfaces/interfaceable'
require_relative 'interfaces/cli'
require_relative 'interfaces/file'
require_relative 'interfaces/tcp'
require_relative 'interfaces/web_socket'

module AwesomeRPNCalculator
  class InterfaceLoader
    NotFoundInterfaceError = Class.new(StandardError)

    INTERFACES = {
      cli: Interfaces::CLI,
      file: Interfaces::File,
      tcp: Interfaces::TCP,
      web_socket: Interfaces::WebSocket
    }.freeze

    class << self
      def call(key)
        INTERFACES[key].tap do |interface|
          raise NotFoundInterfaceError unless interface
        end
      end
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe InterfaceLoader do
    describe '#call' do
      context 'when loading an existing interface' do
        it 'loads CLI interface' do
          expect(described_class.call(:cli)).to eq Interfaces::CLI
        end

        it 'loads File interface' do
          expect(described_class.call(:file)).to eq Interfaces::File
        end

        it 'loads TCP interface' do
          expect(described_class.call(:tcp)).to eq Interfaces::TCP
        end

        it 'loads WebSocket interface' do
          expect(described_class.call(:web_socket)).to eq Interfaces::WebSocket
        end
      end

      context 'when loading an unkown interface' do
        it 'raises NotFoundInterfaceError' do
          expect { described_class.call(:invalid_interface) }
            .to raise_error Errors::InvalidInitialization
        end
      end
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe Runner do
    describe '#run' do
      context 'when loading an existing interface' do
        before do
          allow(Scanner).to receive(:read).and_raise(StandardError)
          allow(Writer).to receive(:write)
          allow(InterfaceLoader).to receive(:call).and_return(interface)
          allow(interface).to receive(:start)
        end

        context 'and interface is CLI' do
          let(:interface) { double(:CLI) }

          it 'runs CLI interface' do
            described_class.run(interface: :cli)

            expect(interface).to have_received(:start).with({})
          end
        end
      end
    end
  end
end

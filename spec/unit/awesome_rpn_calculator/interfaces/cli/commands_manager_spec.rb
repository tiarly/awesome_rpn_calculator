# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    RSpec.describe CommandsManager do
      describe '#execute' do
        let(:processor) { double(:processor) }

        before do
          allow(Commands::Core).to receive(:execute)
          allow(Commands::InputParser).to receive(:execute)
          allow(Commands::Quit).to receive(:execute)
          allow(processor).to receive(:process)
        end

        it 'executes all exising commands' do
          described_class.execute('', processor)

          described_class::COMMANDS.each do |command|
            expect(command).to have_received(:execute).with('', processor)
          end
        end
      end
    end
  end
end

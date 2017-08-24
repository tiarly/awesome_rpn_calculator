# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    RSpec.describe CLI do
      describe '#start' do
        it 'responds to a public start' do
          expect(described_class).to respond_to(:start)
        end

        context 'when a StandarError is raised' do
          before do
            allow(Scanner).to receive(:read).and_raise(StandardError)
            allow(Writer).to receive(:write)
          end

          it 'gracefully handles StandarErrors' do
            described_class.start(nil)

            expect(Writer).to have_received(:write).with('An error has happend. Please try again.')
          end
        end
      end
    end
  end
end

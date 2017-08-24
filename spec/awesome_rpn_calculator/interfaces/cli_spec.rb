# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    RSpec.describe CLI do
      describe '#start' do
        it 'responds to a public start' do
          expect(described_class).to respond_to(:start)
        end

        context 'when the interface is started succesfully' do
          let(:processor) { double(:processor) }

          before do
            allow(Scanner).to receive(:read).and_return('input')
            allow(ProcessorLoader).to receive(:call).and_return(processor)
            allow(processor).to receive(:process).and_raise(StandardError)
            allow(Writer).to receive(:write)
          end

          it 'loads the correct processor' do
            described_class.start(processor: :rpn)

            expect(ProcessorLoader).to have_received(:call).with(:rpn)
          end

          it 'executes the processor' do
            described_class.start(processor: :rpn)

            expect(processor).to have_received(:process)
          end
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

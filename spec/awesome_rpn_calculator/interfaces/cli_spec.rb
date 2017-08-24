# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    RSpec.describe CLI do
      describe '#start' do
        let(:instance) { double(:processor) }
        let(:processor) { double(:processor) }

        it 'responds to a public start' do
          expect(described_class).to respond_to(:start)
        end

        context 'when the interface is started succesfully' do
          before do
            allow($stdin).to receive(:gets).and_return('1', nil)
            allow(ProcessorLoader).to receive(:call).and_return(processor)
            allow(processor).to receive(:new).and_return(instance)
            allow(instance).to receive(:process).and_return('1')
            allow(Writer).to receive(:write)
          end

          it 'loads the correct processor' do
            described_class.start(processor: :rpn)

            expect(ProcessorLoader).to have_received(:call).with(:rpn)
          end

          it 'executes the processor' do
            described_class.start(processor: :rpn)

            expect(instance).to have_received(:process)
          end

          it 'writes processed response to stdout' do
            described_class.start(processor: :rpn)

            expect(Writer).to have_received(:write).with('1')
          end
        end

        context 'when a StandarError is raised' do
          before do
            allow($stdin).to receive(:gets).and_return('1', nil)
            allow(ProcessorLoader).to receive(:call).and_return(processor)
            allow(processor).to receive(:new).and_return(instance)
            allow(instance).to receive(:process).and_raise(StandardError)
            allow(Writer).to receive(:write)
          end

          it 'gracefully handles StandarErrors' do
            described_class.start(processor: :rpn)

            expect(Writer)
              .to have_received(:write).with('An error has happend. Please try again.')
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    module Commands
      RSpec.describe Core do
        describe '#execute' do
          let(:processor) { double(:processor) }
          let(:tokens) { [double(:token)] }

          before do
            allow(TokenCollectionFactory).to receive(:call).and_return(tokens)
            allow(processor).to receive(:process).and_return('1')
          end

          it 'processes the input' do
            described_class.execute('1', processor)

            expect(processor).to have_received(:process).with(tokens)
          end

          it 'returns the processed value' do
            expect(described_class.execute('1', processor)).to eql '1'
          end
        end
      end
    end
  end
end

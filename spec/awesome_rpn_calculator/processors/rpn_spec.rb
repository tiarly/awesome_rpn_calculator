# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Processors
    RSpec.describe RPN do
      describe '#process' do
        it 'responds to a public process' do
          expect(described_class.new).to respond_to(:process)
        end

        context 'when passing valid tokens' do
          let(:tokens) { ['1', '4.0', '+'].map { |item| Token.new(item) } }
          let(:token) { double(:token) }

          before { allow(TokenCalculator).to receive(:call).and_return(token) }

          it 'returns the processed value' do
            expect(described_class.new.process(tokens)).to eq token
          end
        end

        context 'when not passing valid tokens for calculation' do
          let(:tokens) { ['1', '+'].map { |item| Token.new(item) } }

          it 'raises NotEnoughOperandsForCalculationError' do
            expect { described_class.new.process(tokens) }
              .to raise_error(RPN::NotEnoughOperandsForCalculationError)
          end
        end
      end
    end
  end
end

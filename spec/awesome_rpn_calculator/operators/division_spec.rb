# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Operators
    RSpec.describe Division do
      describe '#call' do
        it 'responds to a public call' do
          expect(described_class).to respond_to(:call)
        end

        context 'when trying a succesful division' do
          it 'returns the expected division value' do
            expect(described_class.call(10, 2)).to eq 5
          end

          it 'also returns the expected division value' do
            expect(described_class.call(6.0, 2.0)).to eq 3.0
          end
        end

        context 'when a trying to use a division by zero calculation' do
          it 'raises DivisionByZerroError' do
            expect { described_class.call(1, 0) }
              .to raise_error Division::DivisionByZeroError
          end
        end
      end
    end
  end
end
# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Operators
    RSpec.describe Sum do
      describe '#call' do
        it 'responds to a public call' do
          expect(described_class).to respond_to(:call)
        end

        context 'when trying a succesful sum' do
          it 'returns the expected sum value' do
            expect(described_class.call(10, 2)).to eq 12
          end

          it 'also returns the expected sum value' do
            expect(described_class.call(6.0, 2.0)).to eq 8.0
          end
        end
      end
    end
  end
end

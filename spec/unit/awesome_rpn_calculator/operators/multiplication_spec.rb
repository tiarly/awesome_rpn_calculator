# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Operators
    RSpec.describe Multiplication do
      describe '#call' do
        it 'responds to a public call' do
          expect(described_class).to respond_to(:call)
        end

        context 'when trying a succesful division' do
          it 'returns the expected multiplication value' do
            expect(described_class.call(10, 2)).to eq 20
          end

          it 'also returns the expected multiplication value' do
            expect(described_class.call(6.0, 2.0)).to eq 12.0
          end
        end
      end
    end
  end
end

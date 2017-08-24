# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe OperatorLoader do
    describe '#call' do
      context 'when loading an existing operator' do
        it 'loads division operator' do
          expect(described_class.call('/')).to eq Operators::Division
        end

        it 'loads multiplication operator' do
          expect(described_class.call('*')).to eq Operators::Multiplication
        end

        it 'loads subtraction operator' do
          expect(described_class.call('-')).to eq Operators::Subtraction
        end

        it 'loads sum operator' do
          expect(described_class.call('+')).to eq Operators::Sum
        end
      end

      context 'when loading an unkown operator' do
        it 'raises NotFoundOperatorError' do
          expect { described_class.call('**') }
            .to raise_error OperatorLoader::NotFoundOperatorError
        end
      end
    end
  end
end

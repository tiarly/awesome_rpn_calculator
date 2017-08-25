# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe Stack do
    let(:instance) { described_class.new([]) }

    describe '.add' do
      it 'adds the given number to the currnet stack' do
        expect(instance.add(3)).to eq [3]
      end
    end

    describe '.last' do
      before { instance.add(2) }

      it 'fetches the last number from the currnet stack' do
        expect(instance.last).to eq 2
      end
    end

    describe '.pop' do
      before { instance.add(2) }

      it 'fetches the last numbers based on the input param' do
        expect(instance.pop(1)).to eq [2]
      end
    end

    describe '.calculable?' do
      context 'when it is calculable' do
        before { instance.add(2); instance.add(1) }

        it 'returns true' do
          expect(instance.calculable?).to eq true
        end
      end

      context 'when it is not calculable' do
        it 'returns false' do
          expect(instance.calculable?).to eq false
        end
      end
    end
  end
end

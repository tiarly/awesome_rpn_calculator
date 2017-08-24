# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe Token do
    let(:instance) { described_class.new(input) }

    describe '.operator' do
      context 'when token is a valid operator' do
        let(:input) { '+' }

        it 'returns the operator class' do
          expect(instance.operator).to eq Operators::Sum
        end
      end

      context 'when token is not a valid operator' do
        let(:input) { '**' }

        it 'returns the operator class' do
          expect(instance.operator).to eq nil
        end
      end
    end

    describe '.operator?' do
      context 'when token is a valid operator' do
        let(:input) { '+' }

        it 'returns true' do
          expect(instance.operator?).to eq true
        end
      end

      context 'when token is not a valid operator' do
        let(:input) { '**' }

        it 'returns false' do
          expect(instance.operator?).to eq false
        end
      end
    end

    describe '.numeric?' do
      context 'when token is a valid number' do
        it 'returns true' do
          %w[1 -1 -1.0 +1 +1.0 01 0.1].each do |number|
            expect(described_class.new(number).numeric?).to eq true
          end
        end
      end

      context 'when token is not a valid operator' do
        it 'returns false' do
          %w[** a1 '' nil test 1.].each do |number|
            expect(described_class.new(number).numeric?).to eq false
          end
        end
      end
    end

    describe '.to_number' do
      context 'when token is an Integer' do
        let(:result) { [1, -1, 0, +1, 11] }

        it 'returns the given Integer' do
          %w[1 -1 0 +1 11].each_with_index do |number, index|
            expect(described_class.new(number).to_number).to eq result[index]
          end
        end
      end

      context 'when token is a Float' do
        let(:result) { [1.0, -1.0, 0.0, +1.0, 11.0, 5.2] }

        it 'returns the given Integer' do
          %w[1.0 -1.0 0.0 +1.0 11.0 5.2].each_with_index do |number, index|
            expect(described_class.new(number).to_number).to eq result[index]
          end
        end
      end
    end

    describe '.to_s' do
      it 'returns the expected to_s from the given value' do
        %w[1 -1 0 +1 11 1.0 -1.0 0.0 +1.0 11.0 5.2].each do |number|
          expect(described_class.new(number).to_s).to eq number
        end
      end
    end
  end
end

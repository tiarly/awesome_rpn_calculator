# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe Scanner do
    describe '#read' do
      subject { described_class.read }

      context 'when input is passed in' do
        let(:input) { "input\n" }

        before do
          allow($stdin).to receive(:gets).and_return(input)
        end

        it 'reads from stdin using gets' do
          subject

          expect($stdin).to have_received(:gets)
        end

        it 'reads from stdin and uses chomp for string cleanup' do
          is_expected.to eq 'input'
        end
      end

      context 'when input is not passed in' do
        before do
          allow($stdin).to receive(:gets).and_return(nil)
        end

        it 'reads from stdin using gets' do
          subject

          expect($stdin).to have_received(:gets)
        end

        it 'returns nil' do
          is_expected.to eql nil
        end
      end
    end
  end
end

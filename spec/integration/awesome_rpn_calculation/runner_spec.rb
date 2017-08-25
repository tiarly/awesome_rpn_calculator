# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe Runner do
    describe '#run' do
      subject { described_class.run }

        before do
          allow($stdin).to receive(:gets).and_return(inputs, nil)
          allow($stdout).to receive(:puts)
          subject
        end

      context 'sucess calculation' do
        let(:inputs) { '1 3 + 3 + 2 * 13 - 3 * 4 / 1.5 * 23 *' }

        it 'returns the expected values' do
          expect($stdout).to have_received(:puts).with('> 25.875')
        end
      end

      context 'fail calculation' do
        let(:inputs) { '1 /' }

        it 'returns the expected values' do
          expect($stdout).to have_received(:puts)
            .with('> Not enough operands to perfrom this calculation!')
        end
      end
    end
  end
end

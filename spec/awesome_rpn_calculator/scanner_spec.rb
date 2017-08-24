# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe Scanner do
    describe '#read' do
      subject { described_class.read }

      let(:gets) { double('gets') }

      before do
        allow($stdin).to receive(:gets).and_return(gets)
        allow(gets).to receive(:chomp)
      end

      it 'reads from stdin using gets' do
        subject

        expect($stdin).to have_received(:gets)
      end

      it 'reads from stdin and uses chomp' do
        subject

        expect(gets).to have_received(:chomp)
      end
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe Writer do
    describe '#write' do
      subject { described_class.write(message) }

      let(:gets) { double('gets') }
      let(:message) { 'this is a message' }

      before { allow($stdout).to receive(:puts) }

      it 'writes using stdout' do
        subject

        expect($stdout).to have_received(:puts).with("> #{message}")
      end
    end
  end
end

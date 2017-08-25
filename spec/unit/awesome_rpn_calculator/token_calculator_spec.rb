# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe TokenCalculator do
    describe '#call' do
      subject { described_class.call(operator, first_token, second_token) }

      let(:operator) { double(:operator) }
      let(:first_token) { double(:token, to_number: 5) }
      let(:second_token) { double(:token, to_number: 5) }
      let(:result_token) { double(:token) }

      before do
        allow(operator).to receive(:call).and_return(10)
        allow(Token).to receive(:new).with(10).and_return(result_token)
      end

      it 'returns a new token with the operation result' do
        is_expected.to eql result_token
      end
    end
  end
end

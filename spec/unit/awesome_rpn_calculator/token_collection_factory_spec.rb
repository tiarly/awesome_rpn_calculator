# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe TokenCollectionFactory do
    describe '#call' do
      subject { described_class.call(input) }
      let(:input) { '1 2 +' }
      let(:token) { double(:token) }

      before do
        allow(Token).to receive(:new).with('1').and_return(token)
        allow(Token).to receive(:new).with('2').and_return(token)
        allow(Token).to receive(:new).with('+').and_return(token)
      end

      it 'returns an array of Tokens' do
        is_expected.to eql [token, token, token]
      end
    end
  end
end

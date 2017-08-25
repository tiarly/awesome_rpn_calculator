# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    module Commands
      RSpec.describe Quit do
        describe '#execute' do
          subject { described_class.execute(input, nil) }

          context 'when quit is succesful' do
            let(:input) { 'q' }

            it 'exists the current program' do
              expect { subject }.to raise_error SystemExit
            end
          end

          context 'when quit is not succesful' do
            let(:input) { '1 2 +' }

            it 'does not exist the current program' do
              expect { subject }.to_not raise_error
            end

            it 'returns nil' do
              expect(subject).to eql nil
            end
          end
        end
      end
    end
  end
end

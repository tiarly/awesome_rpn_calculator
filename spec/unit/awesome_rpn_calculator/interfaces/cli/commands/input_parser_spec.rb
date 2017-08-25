# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    module Commands
      RSpec.describe InputParser do
        describe '#execute' do
          context 'when parser matches a result' do
            it 'raises an Errors::InvalidInput' do
              expect { described_class.execute('input', nil) }
                .to raise_error(Errors::InvalidInput)
            end
          end

          context 'when parser does not match a result' do
            it 'does not raise an error' do
              expect { described_class.execute('1 2 +', nil) }.to_not raise_error
            end

            it 'returns nil' do
              expect(described_class.execute('1 2 +', nil)).to eql nil
            end
          end
        end
      end
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  RSpec.describe ProcessorLoader do
    describe '#call' do
      context 'when loading an existing processor' do
        it 'loads RPN processor' do
          expect(described_class.call(:rpn)).to eq Processors::RPN
        end

        context 'when loading an unkown processor' do
          it 'raises NotFoundProcessorError' do
            expect { described_class.call(:invalid_processor) }
              .to raise_error ProcessorLoader::NotFoundProcessorError
          end
        end
      end
    end
  end
end

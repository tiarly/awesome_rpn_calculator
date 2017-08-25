# frozen_string_literal: true

require 'spec_helper'

module Errors
  RSpec.describe NotEnoughOperandsForCalculation do
    describe '.new' do
      it 'is a Error::Base ducktype' do
        expect(described_class.superclass).to eql Base
      end

      it 'raises the correct custom message' do
        begin
          raise described_class
        rescue NotEnoughOperandsForCalculation => error
          expect(error.message).to eql 'Not enough operands to perfrom this calculation!'
        end
      end
    end
  end
end

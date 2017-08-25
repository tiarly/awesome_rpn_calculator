# frozen_string_literal: true

require 'spec_helper'

module Errors
  RSpec.describe ZeroDivision do
    describe '.new' do
      it 'is a Error::Base ducktype' do
        expect(described_class.superclass).to eql Base
      end

      it 'raises the correct custom message' do
        begin
          raise described_class
        rescue ZeroDivision => error
          expect(error.message)
            .to eql 'Why are you trying to divide something by zero?'
        end
      end
    end
  end
end

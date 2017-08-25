# frozen_string_literal: true

require 'spec_helper'

module Errors
  RSpec.describe InvalidInput do
    describe '.new' do
      it 'is a Error::Base ducktype' do
        expect(described_class.superclass).to eql Base
      end

      it 'raises the correct custom message' do
        begin
          raise described_class
        rescue InvalidInput => error
          expect(error.message).to eql 'This is not a valid input!'
        end
      end
    end
  end
end

# frozen_string_literal: true

require 'spec_helper'

module Errors
  RSpec.describe InvalidInitialization do
    describe '.new' do
      it 'is a Error::Base ducktype' do
        expect(described_class.superclass).to eql Base
      end

      it 'raises the correct custom message' do
        begin
          raise described_class
        rescue InvalidInitialization => error
          expect(error.message)
            .to eql 'It seems you have tried to start up with an invalid configuration!'
        end
      end
    end
  end
end

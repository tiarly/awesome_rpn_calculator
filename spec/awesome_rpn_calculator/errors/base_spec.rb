# frozen_string_literal: true

require 'spec_helper'

module Errors
  RSpec.describe Base do
    describe '.new' do
      it 'is a StandardError ducktype' do
        expect(described_class.superclass).to eql StandardError
      end
    end
  end
end

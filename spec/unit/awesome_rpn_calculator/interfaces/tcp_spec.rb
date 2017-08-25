# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    RSpec.describe TCP do
      describe '#start' do
        it 'responds to a public start' do
          expect(described_class.new).to respond_to(:start)
        end

        it 'raises NotImplementedError' do
          expect { described_class.new.start(nil) }.to raise_error NotImplementedError
        end
      end
    end
  end
end

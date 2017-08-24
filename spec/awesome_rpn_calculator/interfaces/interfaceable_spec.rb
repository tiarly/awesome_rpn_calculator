# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    RSpec.describe Interfaceable do
      describe '#start' do
        class DummyInterface
          extend AwesomeRPNCalculator::Interfaces::Interfaceable
        end

        it 'responds to a public start' do
          expect(DummyInterface).to respond_to(:start)
        end

        it 'raises NotImplementedError' do
          expect { DummyInterface.start(nil) }.to raise_error NotImplementedError
        end
      end
    end
  end
end

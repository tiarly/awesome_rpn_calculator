# frozen_string_literal: true

require 'spec_helper'

module AwesomeRPNCalculator
  module Interfaces
    RSpec.describe Interfaceable do
      describe '#start' do
        class DummyInterface
          include AwesomeRPNCalculator::Interfaces::Interfaceable
        end

        it 'responds to a public start' do
          expect(DummyInterface.new).to respond_to(:start)
        end

        it 'raises NotImplementedError' do
          expect { DummyInterface.new.start(nil) }.to raise_error NotImplementedError
        end
      end
    end
  end
end

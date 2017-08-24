# frozen_string_literal: true

require 'simplecov'

SimpleCov.minimum_coverage 95
SimpleCov.profiles.define 'awesome_rpn_calculator' do
  # @TODO add groups
end

RSpec.configure do |config|
  if config.files_to_run.one?
    config.default_formatter = 'doc'
  else
    SimpleCov.start 'awesome_rpn_calculator'
  end
end

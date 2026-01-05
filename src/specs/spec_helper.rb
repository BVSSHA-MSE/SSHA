require 'dotenv'
Dotenv.load

require 'rspec'
require 'rspec/given'

require_relative '../lib/asciidocbuilder'

if ENV['COVERAGE'] == 'on'
  require 'simplecov'
  SimpleCov.start
end

if ENV['CONTRACTS'] == 'on'
  require 'given/assertions'
  Given::Assertions.enable_preconditions true
  Given::Assertions.enable_postconditions true
end

RSpec.configure do |config|
    config.alias_example_group_to :feature, :describe
    config.alias_example_group_to :scenario, :context
end
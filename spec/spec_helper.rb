ENV['RACK_ENV'] = 'test'

require 'database_cleaner'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './app/app'
require 'pry'
require 'helpers/web_helpers'

Capybara.app = PoochPads


RSpec.configure do |config|
  # Everything in this block runs once before all the tests run
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  # Everything in this block runs once before each individual test
  config.before(:each) do
    DatabaseCleaner.start
  end

  # Everything in this block runs once after each individual test
  config.after(:each) do
    DatabaseCleaner.clean
  end

end

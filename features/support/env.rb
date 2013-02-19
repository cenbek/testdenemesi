require 'spinach-rails'
require 'minitest-rails-capybara'
ENV['RAILS_ENV']='test'
require_relative '../../config/environment'
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation

Spinach.hooks.after_scenario do
  DatabaseCleaner.clean
end

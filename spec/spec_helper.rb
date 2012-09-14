# Configure Rails Envinronment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rspec/rails"
require 'faker'

ActionMailer::Base.delivery_method = :test
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default_url_options[:host] = "test.com"

Rails.backtrace_cleaner.remove_silencers!

# Configure capybara for integration testing
require "capybara/rails"
Capybara.default_driver   = :rack_test
Capybara.default_selector = :css

RSpec.configure do |config|
  # Remove this line if you don't want RSpec's should and should_not
  # methods or matchers

  config.include RSpec::Matchers
  config.include Devise::TestHelpers, :type => :controller
  
  # == Mock Framework
  config.mock_with :rspec
  
  config.before(:each) do
    Mongoid.purge!
  end
end
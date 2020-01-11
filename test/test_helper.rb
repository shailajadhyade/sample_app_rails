ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
#require "minitest/reporters"
#Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  #to use the full_title helper in the tests by including the Applicationhelper into the test helper,
  include ApplicationHelper
  # Add more helper methods to be used by all tests here...
end

#class ActionDispatch::IntegrationTest
#	include Rails::Controller::Testing::TestProcess
#	include Rails::Controller::Testing::TemplateAssertions
#	include Rails::Controller::Testing::Integration
#end
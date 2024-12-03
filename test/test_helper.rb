require "simplecov"
SimpleCov.start "rails"

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.method_defined?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
end

# make url_helpers for engine routes available in functional tests
class ActionController::TestCase
  setup do
    @routes = AtlanticaOnlineCraftCalculatorEngine::Engine.routes
  end

  def some_item_name
    "Action: Auto-Craft [IV]"
  end

  def url_escaped_item_name(item_name = some_item_name)
    CGI::escape(item_name)
  end
end

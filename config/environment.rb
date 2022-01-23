# Load the Rails application.
require_relative 'application'

begin
  require 'minitest/autorun'
rescue LoadError => e
  raise e unless ENV['RAILS_ENV'] == "production"
end
# Initialize the Rails application.
Rails.application.initialize!

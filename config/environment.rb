# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.logger = Logger.new("#{RAILS_ROOT}/log/magellan.#{RAILS_ENV}.log", 5, 10485760)
  config.gem "geokit"
  config.gem "rdiscount"
  config.time_zone = 'UTC'
end

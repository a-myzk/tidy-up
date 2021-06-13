require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module TidyUp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

  end
end

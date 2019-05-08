require_relative 'boot'

require "rails/all"

Bundler.require(*Rails.groups)

module Bug
  class Application < Rails::Application
    config.load_defaults 6.0
    config.generators.test_framework = nil
    config.action_dispatch.cookies_serializer = :json
  end
end

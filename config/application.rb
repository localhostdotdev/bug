require_relative 'boot'

require "rails/all"

Bundler.require(*Rails.groups)

module Bug
  class Application < Rails::Application
    config.load_defaults 6.0

    config.action_dispatch.cookies_serializer = :json

    config.generators.test_framework = nil
  end
end

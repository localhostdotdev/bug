require_relative 'boot'

require "rails/all"

Bundler.require(*Rails.groups)

module Bug
  class Application < Rails::Application
    config.load_defaults 6.0
    config.generators.system_tests = nil

    config.assets.version = '1.0'
    config.action_dispatch.cookies_serializer = :json
    config.filter_parameters += [:password]

    ActiveSupport.on_load(:action_controller) do
      wrap_parameters format: [:json]
    end
  end
end

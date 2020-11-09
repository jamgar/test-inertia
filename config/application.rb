require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TestInertia
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.exceptions_app = ->(env) do
      Class.new(ActionController::Base) do # rubocop:disable Rails/ApplicationController
        puts "=================== class ================"
        def show
          puts "=============== show ============="
          render inertia: 'Error', props: {
            status: request.path_info[1..].to_i
          }, status: request.path_info[1..].to_i
        end
      end.action(:show).call(env)
    end
  end
end

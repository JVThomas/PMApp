require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UPennDYK
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
		config.angular_templates.ignore_prefix  = %w(app/)
    config.assets.paths << Rails.root.join('vendor', 'assets', 'components')
    config.assets.precompile += %w( .svg .eot .woff .ttf .png .jpg .gif)
  	Dir.glob("#{Rails.root}/app/assets/images/**/").each do |path|
  		Rails.application.config.assets.paths << path
		end

		 config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :options, :delete, :put]
      end
    end
	end
end

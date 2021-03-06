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
    
		 config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins 'https://pennmed-fact-app.herokuapp.com'
        resource 'https://pennmed-fact-app.herokuapp.com', :headers => :any, :methods => [:get, :post, :options, :delete, :put]
      end
    end
	end
end

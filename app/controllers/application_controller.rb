class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def angular
		render 'layouts/application'
	end

	def images
		@images = Dir.glob("app/assets/images/*.jpg")
		render json: @images
	end
end

Rails.application.routes.draw do
	root 'application#angular'
	get 'images' to 'angular#images'
end

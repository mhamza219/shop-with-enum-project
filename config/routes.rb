Rails.application.routes.draw do

  devise_for :users
	resources :shops

	resources :shops do
		member do
			get :toggle_status
		end
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

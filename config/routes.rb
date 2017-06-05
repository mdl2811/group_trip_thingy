Rails.application.routes.draw do
  get 'locations/index'

  get 'locations/show'

  get 'locations/new'

  get 'locations/edit'

	root 'trips#index'
  devise_for :users

	resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# == Route Map
#
#                   Prefix Verb   URI Pattern                                          Controller#Action
#                     root GET    /                                                    locations#index
#         new_user_session GET    /users/sign_in(.:format)                             devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                             devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                            devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)                        devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                       devise/passwords#edit
#            user_password PATCH  /users/password(.:format)                            devise/passwords#update
#                          PUT    /users/password(.:format)                            devise/passwords#update
#                          POST   /users/password(.:format)                            devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                              devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)                             devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                                devise/registrations#edit
#        user_registration PATCH  /users(.:format)                                     devise/registrations#update
#                          PUT    /users(.:format)                                     devise/registrations#update
#                          DELETE /users(.:format)                                     devise/registrations#destroy
#                          POST   /users(.:format)                                     devise/registrations#create
#                    trips GET    /trips(.:format)                                     trips#index
#                          POST   /trips(.:format)                                     trips#create
#                 new_trip GET    /trips/new(.:format)                                 trips#new
#                edit_trip GET    /trips/:id/edit(.:format)                            trips#edit
#                     trip GET    /trips/:id(.:format)                                 trips#show
#                          PATCH  /trips/:id(.:format)                                 trips#update
#                          PUT    /trips/:id(.:format)                                 trips#update
#                          DELETE /trips/:id(.:format)                                 trips#destroy
#                locations GET    /locations(.:format)                                 locations#index
#                          POST   /locations(.:format)                                 locations#create
#             new_location GET    /locations/new(.:format)                             locations#new
#            edit_location GET    /locations/:id/edit(.:format)                        locations#edit
#                 location GET    /locations/:id(.:format)                             locations#show
#                          PATCH  /locations/:id(.:format)                             locations#update
#                          PUT    /locations/:id(.:format)                             locations#update
#                          DELETE /locations/:id(.:format)                             locations#destroy
#                addresses GET    /addresses(.:format)                                 addresses#index
#                          POST   /addresses(.:format)                                 addresses#create
#              new_address GET    /addresses/new(.:format)                             addresses#new
#             edit_address GET    /addresses/:id/edit(.:format)                        addresses#edit
#                  address GET    /addresses/:id(.:format)                             addresses#show
#                          PATCH  /addresses/:id(.:format)                             addresses#update
#                          PUT    /addresses/:id(.:format)                             addresses#update
#                          DELETE /addresses/:id(.:format)                             addresses#destroy
#           trip_locations GET    /trips/:trip_id/locations(.:format)                  locations#index
#                          POST   /trips/:trip_id/locations(.:format)                  locations#create
#        new_trip_location GET    /trips/:trip_id/locations/new(.:format)              locations#new
#       edit_trip_location GET    /trips/:trip_id/locations/:id/edit(.:format)         locations#edit
#            trip_location GET    /trips/:trip_id/locations/:id(.:format)              locations#show
#                          PATCH  /trips/:trip_id/locations/:id(.:format)              locations#update
#                          PUT    /trips/:trip_id/locations/:id(.:format)              locations#update
#                          DELETE /trips/:trip_id/locations/:id(.:format)              locations#destroy
#                          GET    /trips(.:format)                                     trips#index
#                          POST   /trips(.:format)                                     trips#create
#                          GET    /trips/new(.:format)                                 trips#new
#                          GET    /trips/:id/edit(.:format)                            trips#edit
#                          GET    /trips/:id(.:format)                                 trips#show
#                          PATCH  /trips/:id(.:format)                                 trips#update
#                          PUT    /trips/:id(.:format)                                 trips#update
#                          DELETE /trips/:id(.:format)                                 trips#destroy
#       location_addresses GET    /locations/:location_id/addresses(.:format)          addresses#index
#                          POST   /locations/:location_id/addresses(.:format)          addresses#create
#     new_location_address GET    /locations/:location_id/addresses/new(.:format)      addresses#new
#    edit_location_address GET    /locations/:location_id/addresses/:id/edit(.:format) addresses#edit
#         location_address GET    /locations/:location_id/addresses/:id(.:format)      addresses#show
#                          PATCH  /locations/:location_id/addresses/:id(.:format)      addresses#update
#                          PUT    /locations/:location_id/addresses/:id(.:format)      addresses#update
#                          DELETE /locations/:location_id/addresses/:id(.:format)      addresses#destroy
#                          GET    /locations(.:format)                                 locations#index
#                          POST   /locations(.:format)                                 locations#create
#                          GET    /locations/new(.:format)                             locations#new
#                          GET    /locations/:id/edit(.:format)                        locations#edit
#                          GET    /locations/:id(.:format)                             locations#show
#                          PATCH  /locations/:id(.:format)                             locations#update
#                          PUT    /locations/:id(.:format)                             locations#update
#                          DELETE /locations/:id(.:format)                             locations#destroy
#

Rails.application.routes.draw do

	root 'locations#index'

  devise_for :users

	resources :trips
	resources :locations
	resources :addresses

	resources :trips do
		resources :locations
	end

	resources :locations do
		resources :addresses
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

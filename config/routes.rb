# == Route Map
#
#                           Prefix Verb     URI Pattern                             Controller#Action
#                             root GET      /                                       trips#index
#                 new_user_session GET      /users/sign_in(.:format)                devise/sessions#new
#                     user_session POST     /users/sign_in(.:format)                devise/sessions#create
#             destroy_user_session DELETE   /users/sign_out(.:format)               devise/sessions#destroy
# user_facebook_omniauth_authorize GET|POST /users/auth/facebook(.:format)          omniauth_callbacks#passthru
#  user_facebook_omniauth_callback GET|POST /users/auth/facebook/callback(.:format) omniauth_callbacks#facebook
#   user_github_omniauth_authorize GET|POST /users/auth/github(.:format)            omniauth_callbacks#passthru
#    user_github_omniauth_callback GET|POST /users/auth/github/callback(.:format)   omniauth_callbacks#github
#                new_user_password GET      /users/password/new(.:format)           devise/passwords#new
#               edit_user_password GET      /users/password/edit(.:format)          devise/passwords#edit
#                    user_password PATCH    /users/password(.:format)               devise/passwords#update
#                                  PUT      /users/password(.:format)               devise/passwords#update
#                                  POST     /users/password(.:format)               devise/passwords#create
#         cancel_user_registration GET      /users/cancel(.:format)                 devise/registrations#cancel
#            new_user_registration GET      /users/sign_up(.:format)                devise/registrations#new
#           edit_user_registration GET      /users/edit(.:format)                   devise/registrations#edit
#                user_registration PATCH    /users(.:format)                        devise/registrations#update
#                                  PUT      /users(.:format)                        devise/registrations#update
#                                  DELETE   /users(.:format)                        devise/registrations#destroy
#                                  POST     /users(.:format)                        devise/registrations#create
#                            trips GET      /trips(.:format)                        trips#index
#                                  POST     /trips(.:format)                        trips#create
#                         new_trip GET      /trips/new(.:format)                    trips#new
#                        edit_trip GET      /trips/:id/edit(.:format)               trips#edit
#                             trip GET      /trips/:id(.:format)                    trips#show
#                                  PATCH    /trips/:id(.:format)                    trips#update
#                                  PUT      /trips/:id(.:format)                    trips#update
#                                  DELETE   /trips/:id(.:format)                    trips#destroy
# 

Rails.application.routes.draw do

	root 'trips#index'

  devise_for :users, controllers: {
  	omniauth_callbacks: 'omniauth_callbacks'
  }

	resources :trips
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :admin do
    resources :users
resources :itineraries
resources :itinerary_users

    root to: "users#index"
  end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :users, only: [:show, :edit, :update]
  resources :itineraries
  resources :home, only: [:index]

  post '/user/:id/itineraries', to: 'itineraries#my_itineraries', as: 'my_itineraries'

  root to: "home#index"
end

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
  resources :itinerary_users
  resources :home, only: [:index]

  root to: "home#index"

end

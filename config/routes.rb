Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :itineraries
    resources :itinerary_users

    root to: "users#index"
  end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :users, only: [:show, :edit, :update] do
    resources :itineraries, only: [:index]
  end

  resources :itineraries, only: [:new, :create, :edit, :show, :update, :destroy]
  resources :itinerary_users
  resources :searches

  root to: "searches#new"
end

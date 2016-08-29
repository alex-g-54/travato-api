Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :locals
    resources :travellers
    resources :bookings
    resources :ratings
    resources :tours

    root to: "users#index"
  end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :bookings
  resources :tours
  post '/traveller/:id/tours', to: 'tours#my_tours', as: 'my_tours'

  root to: "home#index"

  resources :users, only: [:show, :edit, :update]
  resources :home, only: [:index]
end

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

  #resources :users
  resources :bookings
  resources :tours
  post '/traveller/:id/tours', to: 'tours#my_tours', as: 'my_tours'

  root to: "pages#index"

  get '/users/gate', to: 'users#gate', as: 'user_gate'
  resources :users, only: [:show, :update]
end

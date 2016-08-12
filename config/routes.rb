Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :bookings
  resources :tours
  post '/traveller/:id/tours', to: 'tours#my_tours', as: 'my_tours'

  root to: "pages#index"

  get '/users/gate', to: 'users#gate', as: 'user_gate'
end

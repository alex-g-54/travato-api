Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  resources :bookings
  resources :tours
  post '/traveller/:id/tours', to: 'tour#my_tours', as: 'my_tours'

  root to: "pages#index"
end

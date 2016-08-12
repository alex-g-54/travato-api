Rails.application.routes.draw do

  devise_for :users

  post '/fb_login', to: 'users#fb_login', as: 'fb_login'
  post '/register', to: 'users#register', as: 'register'

  resources :bookings
  resources :tours
  post '/traveller/:id/tours', to: 'tour#my_tours', as: 'my_tours'

  root to: "tours#index"
end

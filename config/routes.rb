Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  post '/fb_login', to: 'users#fb_login', as: 'fb_login'
  post '/register', to: 'users#register', as: 'register'

  resources :bookings
  resources :tours
  post '/traveller/:id/tours', to: 'tour#my_tours', as: 'my_tours'

  root to: "pages#index"

  # devise_scope :user do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
end

Rails.application.routes.draw do
  scope '/api' do
      scope '/v1' do
        post '/fb_login', to: 'users#fb_login', as: 'fb_login'
        post '/register', to: 'users#register', as: 'register'
        
        devise_for :users, controllers: {
          sessions: 'users/sessions',
          registrations: 'users/registrations'
        }

        # devise_for :users

        resources :bookings
        resources :tours
        post '/traveller/:id/tours', to: 'tour#my_tours', as: 'my_tours'   
    end
  end
end 

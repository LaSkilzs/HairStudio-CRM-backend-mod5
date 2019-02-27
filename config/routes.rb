Rails.application.routes.draw do
 
  namespace 'api' do
    namespace 'v1' do
      resources :appointments
      resources :salons, only: [:index]
      resources :users 
      post '/login', to: 'users#login'
      # post '/login', to: 'auth#login'
    end
  end
end

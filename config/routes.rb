Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :appointments
      resources :salons, only: [:index]
      resources :services, only: [:index]
      resources :users
      resources :galleries, only: [:index]
      resources :messages, only: [:create, :index]
      resources :conversations, only: [:index, :create]
      resources :comments, only: [:index, :create]
      post '/login', to: 'auth#login'
      get '/profile', to: 'users#profile'
    end
  end
  mount ActionCable.server => '/cable'
end

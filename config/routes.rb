Rails.application.routes.draw do
  
  get 'home/index'
  root to: 'home#index'
  
  devise_for :users

  resources :users, only: [:show, :edit, :update]
  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"

  resources :posts, only: [:new, :create, :show, :destroy]

  get 'search' => 'search#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

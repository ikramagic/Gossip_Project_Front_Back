Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :gossips

  resources :gossips do
    resources :comments
  end

  resources :sessions, only: [:new, :create, :destroy]
  
  resources :users

  resources :cities, only: [:show]

  root 'gossips#index'

  get '/team', to: 'presentation#team'

  get '/contact', to: 'presentation#contact'
end
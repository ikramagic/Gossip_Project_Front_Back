Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'gossips#index'

  get '/team', to: 'presentation#team'

  get '/contact', to: 'presentation#contact'

  get 'welcome/:first_name', to: 'welcome#greet' 

  get '/gossips', to: 'gossips#index'

  get 'gossips/:id', to: 'gossips#show', as: :gossip

  get 'authors/:id', to: 'authors#find_user', as: :user
end
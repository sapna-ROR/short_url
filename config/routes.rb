Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/auth/login', to: 'authentication#login'
  resources :users, param: :_username
  resources :short_links, only: [:create, :show]
end
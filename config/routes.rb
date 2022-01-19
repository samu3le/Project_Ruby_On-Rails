Rails.application.routes.draw do
  get "bienvenida", to: "home#index"
  # root to: "home#index" 

  get "articles/new", to: "articles#new"
  post "articles", to: "articles#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

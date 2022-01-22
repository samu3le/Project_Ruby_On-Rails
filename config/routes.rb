Rails.application.routes.draw do
  
  devise_for :users
  get "bienvenida", to: "home#index"
  get "perfil", to: "users#edit"
  resources :users, only: [:update]

  root to: "home#index" 
  resources :categories
  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection    
  end

  # get "articles", to: "articles#index"
  # get "articles/new", to: "articles#new", as: :new_articles
  # get "articles/:id", to: "articles#show"
  # get "articles/:id/edit", to: "articles#edit"

  # patch "articles/:id", to: "articles#update", as: :article
  # post "articles", to: "articles#create"
  # delete "articles/:id", to: "articles#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  resources :services
  resources :premises
  resources :employees
  resources :bills
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  post "/signup", to: "clients#create"
  get "/me", to: "clients#show"

  # get "/users", to: "clients#index"
  
end

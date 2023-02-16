Rails.application.routes.draw do
  resources :services
  resources :premises
  resources :employees
  resources :bills
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

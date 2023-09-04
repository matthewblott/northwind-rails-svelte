Rails.application.routes.draw do
  resources :products
  resources :orders
  resources :order_details
  resources :employees
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

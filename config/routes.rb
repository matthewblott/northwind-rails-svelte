Rails.application.routes.draw do
  root "static_pages#home"

  get "/about", to: 'static_pages#about'

  resources :order_details
  resources :orders
  resources :employees
  resources :customers
  resources :products

  get '/orders/:order_id/details/:product_id', to: 'order_details#show'

end

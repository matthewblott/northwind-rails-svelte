Rails.application.routes.draw do
  root "static_pages#home"

  get "/about", to: 'static_pages#about'

  resources :order_details
  resources :orders
  resources :employees
  resources :customers
  resources :products

  get '/orders/:order_id/details/new', to: 'order_details#new'
  get '/orders/:order_id/details/:product_id', to: 'order_details#show'
  get '/orders/:order_id/details/', to: 'order_details#index'


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
	# Can be used by load balancers and uptime monitors to verify that the app is live.
	get "up" => "rails/health#show", as: :rails_health_check

end

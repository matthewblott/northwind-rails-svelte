Rails.application.routes.draw do
  devise_for :employees, controllers: { sessions: 'sessions' } 

  resources :login, only: [:index]
  resources :addresses, only: [:index, :search, :show, :new, :create, :edit, :update, :destroy]
  resources :categories, only: [:index, :show, :new, :create, :edit, :update ]
  resources :customers, only: [:index, :search, :show, :new, :create, :edit, :update ]
  resources :employees, only: [:index, :search, :show, :new, :create, :edit, :update, :destroy]
  resources :orders, only: [:index, :show, :new, :create, :edit, :update ]

  resources :order_items, only: [:index, :show, :new, :create, :edit, :update ]

  get '/orders/:order_id/items/new', to: 'order_items#new'
  get '/orders/:order_id/items', to: 'order_items#index'
  get '/orders/:order_id/items/:product_id', to: 'order_items#show', as: 'better_order_items_show'
  get '/orders/:order_id/items/:product_id/edit', to: 'order_items#edit'

  post '/orders/:order_id/items', to: 'order_items#create'
  put '/orders/:order_id/items/:product_id', to: 'order_items#update'
  delete '/orders/:order_id/items/:product_id', to: 'order_items#destroy'

  resources :products, only: [:index, :show, :new, :create, :edit, :update ]
  resources :regions, only: [:index, :show, :new, :create, :edit, :update ]
  resources :shippers, only: [:index, :show, :new, :create, :edit, :update ]
  resources :suppliers, only: [:index, :show, :new, :create, :edit, :update ]

  post 'addresses/search', to: 'addresses#search'
  post 'customers/search', to: 'customers#search'
  post 'employees/search', to: 'employees#search'
  post 'products/search', to: 'products#search'

  get 'login', to: 'login#index'
  get 'employees/sign_in', to: 'login#index'
  
  # get '/orders', to: 'orders#index', as: 'foo'
  root "home#index"

end

Rails.application.routes.draw do
  devise_for :employees, controllers: { sessions: 'sessions' } 
  resources :login, only: [:index]
  # get 'login', to: 'login#index'

  # =========================================================================
  # Addresses
  # =========================================================================
  resources :addresses, only: [:index, :show, :new, :create, :edit, :update ]
  post '/addresses/new', to: 'addresses#create'
  patch '/addresses/:id/edit', to: 'addresses#update'
  put '/addresses/:id/edit', to: 'addresses#update'

  # =========================================================================
  # Categories
  # =========================================================================

  resources :categories, only: [:index, :show, :new, :create, :edit, :update ]
  post '/categories/new', to: 'categories#create'
  patch '/categories/:id/edit', to: 'categories#update'
  put '/categories/:id/edit', to: 'categories#update'

  resources :addresses, only: [:index, :search, :show, :new, :create, :edit, :update, :destroy]
  post 'addresses/search', to: 'addresses#search'
  
  # =========================================================================
  # Customers
  # =========================================================================
  
  resources :customers, only: [:index, :search, :show, :new, :create, :edit, :update ]
  post 'customers/search', to: 'customers#search'
  post '/customers/new', to: 'customers#create'
  patch '/customers/:id/edit', to: 'customers#update'
  put '/customers/:id/edit', to: 'customers#update'

  # =========================================================================
  # Customer Addresses 
  # =========================================================================

  resources :customer_addresses, only: [:index, :show, :new, :create, :edit, :update ]
  get '/customers/:customer_id/addresses/new', to: 'customer_addresses#new'
  get '/customers/:customer_id/addresses', to: 'customer_addresses#index'
  get '/customers/:customer_id/addresses/:address_id', to: 'customer_addresses#show', as: 'better_customer_addresses_show'
  get '/customers/:customer_id/addresses/:address_id/edit', to: 'customer_addresses#edit'

  post '/customers/:customer_id/addresses', to: 'customer_addresses#create'
  put '/customers/:customer_id/addresses/:address_id', to: 'customer_addresses#update'
  delete '/customers/:customer_id/addresses/:address_id', to: 'customer_addresses#destroy'

  # =========================================================================
  # Employees
  # =========================================================================

  resources :employees, only: [:index, :search, :show, :new, :create, :edit, :update, :destroy]
  get '/employees/sign_in', to: 'login#index'
  post '/employees/search', to: 'employees#search'

  post '/employees/new', to: 'employees#create'
  patch '/employees/:id/edit', to: 'employees#update'
  put '/employees/:id/edit', to: 'employees#update'

  # =========================================================================
  # Orders
  # =========================================================================

  resources :orders, only: [:index, :show, :new, :create, :edit, :update ]
  get 'orders/search', to: 'orders#search'
  post '/orders/new', to: 'orders#create'
  patch '/orders/:id/edit', to: 'orders#update'
  put '/orders/:id/edit', to: 'orders#update'

  # =========================================================================
  # Order Items
  # =========================================================================

  resources :order_items, only: [:index, :show, :new, :create, :edit, :update ]
  get '/orders/:order_id/items/new', to: 'order_items#new'
  get '/orders/:order_id/items', to: 'order_items#index'
  get '/orders/:order_id/items/:product_id', to: 'order_items#show', as: 'better_order_items_show'
  get '/orders/:order_id/items/:product_id/edit', to: 'order_items#edit'

  post '/orders/:order_id/items/new', to: 'order_items#create'
  put '/orders/:order_id/items/:product_id/edit', to: 'order_items#update'
  delete '/orders/:order_id/items/:product_id/edit', to: 'order_items#destroy'
  
  # =========================================================================
  # Products
  # =========================================================================

  resources :products, only: [:index, :show, :new, :create, :edit, :update ]
  post 'products/search', to: 'products#search'
  post '/products/new', to: 'products#create'
  patch '/products/:id/edit', to: 'products#update'
  put '/products/:id/edit', to: 'products#update'
  
  # =========================================================================
  # Regions
  # ========================================================================= 

  resources :regions, only: [:index, :show, :new, :create, :edit, :update ]

  # =========================================================================
  # Shippers
  # =========================================================================

  resources :shippers, only: [:index, :show, :new, :create, :edit, :update ]

  # =========================================================================
  # Suppliers
  # =========================================================================

  resources :suppliers, only: [:index, :show, :new, :create, :edit, :update ]

  # =========================================================================
  # Home
  # =========================================================================

  root "home#index"

end

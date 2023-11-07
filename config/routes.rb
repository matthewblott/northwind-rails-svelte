Rails.application.routes.draw do
  devise_for :employees, controllers: { sessions: 'sessions' } 

  resources :login, only: [:index]
  resources :addresses, only: [:index, :search, :show, :new, :create, :edit, :update, :destroy]
  resources :categories, only: [:index, :show, :new, :create, :edit, :update ]
  resources :customers, only: [:index, :search, :show, :new, :create, :edit, :update ]
  resources :employees, only: [:index, :search, :show, :new, :create, :edit, :update, :destroy]
  resources :orders, only: [:index, :show, :new, :create, :edit, :update ]
  resources :products, only: [:index, :show, :new, :create, :edit, :update ]
  resources :regions, only: [:index, :show, :new, :create, :edit, :update ]
  resources :shippers, only: [:index, :show, :new, :create, :edit, :update ]
  resources :suppliers, only: [:index, :show, :new, :create, :edit, :update ]

  post 'addresses/search', to: 'addresses#search'
  post 'employees/search', to: 'employees#search'
  post 'customers/search', to: 'customers#search'

  get 'login', to: 'login#index'
  get 'employees/sign_in', to: 'login#index'

  root "home#index"

end

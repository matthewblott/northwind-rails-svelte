Rails.application.routes.draw do
  get 'about', to: 'about#index'

  # devise_for :employees, controllers: { registrations: 'employees/registrations', sessions: 'employees/sessions' } 
  devise_for :employees, controllers: { sessions: 'sessions' } 
  # devise_for :employees, :path => 'employees', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  # post "employees/create", to: "employees#create"

  resources :login, only: [:index]
  resources :categories, only: [:index, :show, :new, :create, :edit, :update ]
  resources :customers, only: [:index, :show, :new, :create, :edit, :update ]
  resources :employees, only: [:index, :search, :show, :new, :create, :edit, :update, :destroy]
  resources :orders, only: [:index, :show, :new, :create, :edit, :update ]
  resources :products, only: [:index, :show, :new, :create, :edit, :update ]
  resources :regions, only: [:index, :show, :new, :create, :edit, :update ]
  resources :shippers, only: [:index, :show, :new, :create, :edit, :update ]
  resources :suppliers, only: [:index, :show, :new, :create, :edit, :update ]

  post 'employees/search', to: 'employees#search'

  get 'login', to: 'login#index'
  get 'employees/sign_in', to: 'login#index'

  resources :search, only: [:index]

  post 'search/employee', to: 'search#employee'
  post 'search/customer', to: 'search#customer'

  root "home#index"

end

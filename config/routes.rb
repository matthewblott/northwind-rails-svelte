Rails.application.routes.draw do
  get 'about', to: 'about#index'

  # devise_for :employees, controllers: { registrations: 'employees/registrations', sessions: 'employees/sessions' } 
  devise_for :employees, controllers: { sessions: 'employees/sessions' } 
  # devise_for :employees, :path => 'employees', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  # post "employees/create", to: "employees#create"

  resources :login, only: [:index]
  resources :customers, only: [:index, :show, :new, :create, :edit, :update ]
  # resources :employees, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :employees, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :products, only: [:index, :show, :new, :create, :edit, :update ]

  get 'login', to: 'login#index'
  get 'employees/sign_in', to: 'login#index'

  resources :search, only: [:index]

  post 'search', to: 'search#search'
  root "home#index"

end

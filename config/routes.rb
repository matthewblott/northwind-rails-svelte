Rails.application.routes.draw do
  get 'about', to: 'about#index'

  devise_for :employees, controllers: { registrations: 'employees/registrations', sessions: 'employees/sessions' } 

  resources :login, only: [:index]
  resources :customers, only: [:index, :show, :new, :create, :edit, :update ]
  resources :employees, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :products, only: [:index, :show, :new, :create, :edit, :update ]

  get 'login', to: 'login#index'

  post "employees", to: "employees#create"

  root "home#index"

end

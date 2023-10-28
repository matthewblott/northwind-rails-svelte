Rails.application.routes.draw do
  devise_for :employees
  
  resources :login, only: [:index]
  resources :customers, only: [:index, :show, :new, :create, :edit, :update ]
  resources :employees, only: [:index, :new, :create, :edit, :update, :destroy]

  root "home#index"
end

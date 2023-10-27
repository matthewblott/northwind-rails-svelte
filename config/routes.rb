Rails.application.routes.draw do
  devise_for :employees

  resources :customers, only: [:index, :show, :new, :create, :edit, :update ]
  resources :employees, only: [:index]

  root "home#index"
end

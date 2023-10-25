Rails.application.routes.draw do
  devise_for :employees
  root "home#index"
end

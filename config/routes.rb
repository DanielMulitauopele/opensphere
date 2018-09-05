Rails.application.routes.draw do
  root "dashboard#index"
  resources :dashboard, only: [:index]
  resources :activate, only: [:index]
  resources :about, only: [:index]
  resources :voters, only: [:new, :create, :show]
  resources :candidates, only: [:index, :show]
end

Rails.application.routes.draw do
  root "dashboard#index"
  resources :dashboard, only: [:index]
  resources :activate, only: [:index]
  resources :about, only: [:index]
  resources :voters, only: [:new]
  resources :candidates, only: [:index, :show]
end

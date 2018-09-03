Rails.application.routes.draw do
  resources :dashboard, only: [:index]
  resources :activate, only: [:index]
  resources :about, only: [:index]
  resources :candidates, only: [:index, :show]
end

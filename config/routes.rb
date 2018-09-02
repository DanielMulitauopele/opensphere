Rails.application.routes.draw do
  resources :dashboard, only: [:index]
  resources :candidates, only: [:index]
end

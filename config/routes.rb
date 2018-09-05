Rails.application.routes.draw do
  root "dashboard#index"
  resources :dashboard, only: [:index]
  resources :activate, only: [:index]
  resources :about, only: [:index]
  resources :voters, only: [:new, :create, :show]
  resources :candidates, only: [:index, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end

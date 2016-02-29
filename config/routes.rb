Rails.application.routes.draw do
  root to: 'home#home'
  get '/home', to: 'home#index'

  resources :users, only: [:new, :index, :create]
  resources :links, only: [:index]
end

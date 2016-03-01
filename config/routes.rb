Rails.application.routes.draw do
  root to: 'home#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/home', to: 'home#index'

  resources :users, only: [:new, :index, :create]
  resources :links, only: [:index, :create]
end

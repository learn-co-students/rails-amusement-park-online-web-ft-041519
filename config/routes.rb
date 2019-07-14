Rails.application.routes.draw do
  root 'welcome#index'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show]
  resources :attractions, only: [:new, :create, :index, :show, :edit, :update]
  resources :rides, only: [:create]

end

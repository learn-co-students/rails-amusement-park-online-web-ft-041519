Rails.application.routes.draw do
  resources :rides
  resources :attractions
  resources :users

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/signout' => 'sessions#destroy'

  root 'users#home'
end

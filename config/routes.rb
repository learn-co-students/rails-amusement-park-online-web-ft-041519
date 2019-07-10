Rails.application.routes.draw do
  resources :rides
  resources :attractions
  resources :users

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  get '/ride' => 'rides#go_on_ride'

  root 'users#home'
end

Rails.application.routes.draw do
  root "static_pages#home"
  resources :users
  resources :attractions
  resources :rides
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  delete '/session', to: 'sessions#destroy'

end

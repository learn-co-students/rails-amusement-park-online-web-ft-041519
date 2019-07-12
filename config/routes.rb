Rails.application.routes.draw do
  resources :attractions
  resources :users
  resources :sessions, only: [:new, :create]
  get "/signin" => "sessions#new"
  post "/logout" => "sessions#destroy"
  root to: "sessions#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
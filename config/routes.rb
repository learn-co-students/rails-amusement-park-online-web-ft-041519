Rails.application.routes.draw do
  get 'attractions/show'
  get 'attractions/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :rides, :attractions
  root to: 'application#home'
  resources :sessions, only: [:new, :create]
  get "/signin" => "sessions#new"
  get "/logout" => "sessions#destroy"
  root to: "sessions#new"
end

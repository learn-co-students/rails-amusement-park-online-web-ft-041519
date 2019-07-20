Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :attractions, :rides
  resources :users 

  post '/rides/take_ride/:attraction_id', to: 'rides#take_ride'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  root 'welcome#index'
  

end

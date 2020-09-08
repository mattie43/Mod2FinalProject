Rails.application.routes.draw do
  resources :meals
  resources :users
  root 'welcome#home'
  get '/yelp_search', to: 'welcome#yelp_search', as: 'yelp_search'
  resources :restaurant, only: [:show]

  post '/login', to: 'sessions#login', as: 'login'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'

  delete '/logout', to: 'sessions#logout', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  post "/meals/new?inlineRadioOptions=:rating", to: "meals#create"
  post "/meals/create", to: "meals#create"

  resources :meals
  resources :users
  root 'welcome#home'
  get 'restaurant/search', to: 'restaurant#search', as: 'restaurant_search'
  post 'restaurant/search', to: 'restaurant#search_results', as: 'search_results'
  resources :restaurant, only: [:show]

  post '/login', to: 'sessions#login', as: 'login'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'

  delete '/logout', to: 'sessions#logout', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

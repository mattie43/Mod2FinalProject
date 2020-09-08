Rails.application.routes.draw do
  resources :meals
  resources :users
  root 'welcome#home'
  get 'restaurant/search', to: 'restaurant#search', as: 'restaurant_search'
  post 'restaurant/search', to: 'restaurant#search_results', as: 'search_results'
  resources :restaurant, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

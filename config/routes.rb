Rails.application.routes.draw do

  get 'static_pages/home'

root 'sessions#new'

get '/login', to: 'sessions#new'



resources :sessions, only: [:new, :create, :destroy]

resources :users
resources :stores
resources :drinks
resources :reviews
resources :drink_prices
resources :category
resources :static_pages

end

Rails.application.routes.draw do

  get 'cookies/example_1'

  get 'cookies/example_2'

  get 'cookies/example_3'

  get 'secret/public_info'

  get 'secret/secret'

  root 'sessions#new'

  get 'reviews/index'

  get 'reviews/create'

  get 'reviews/new'

  get 'static_pages/home'

  get '/login', to: 'sessions#new'

resources :sessions, only: [:new, :create, :destroy]

resources :users
resources :stores
resources :drinks
resources :comments
resources :drink_prices
resources :category
resources :static_pages
delete '/logout', to: 'sessions#destroy'

end

Rails.application.routes.draw do

root 'sessions#new'

get '/login', to: 'sessions#new'

resources :sessions, only: [:new, :create, :destroy]

resources :users
resources :stores

end

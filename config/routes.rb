Rails.application.routes.draw do

root 'users#index'

get '/login', to: 'sessions#new'

resources :sessions, only: [:new, :create, :destroy]

resources :users

end

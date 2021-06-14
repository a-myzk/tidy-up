Rails.application.routes.draw do
  get 'sessions/new'
  resources :items
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end

Rails.application.routes.draw do
  resources :items
  resources :users, only: [:new, :create]
end

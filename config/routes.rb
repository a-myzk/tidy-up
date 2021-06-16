Rails.application.routes.draw do
  get 'sessions/new'
  resources :items do
    resources :clothes_diagnoses
    resources :goods_diagnoses
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
end

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'items#index'
  devise_for :users, :controllers => {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    post 'users/admin_guest_sign_in', to: 'users/sessions#new_admin_guest'
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  resources :items do
    resources :clothes_diagnoses
    resources :goods_diagnoses
    resources :book_diagnoses
    resources :other_diagnoses
    resources :flags
  end
  resources :users, only: [:show]
  resources :flags, only: [:index, :create, :destroy]
end

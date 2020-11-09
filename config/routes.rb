Rails.application.routes.draw do
  resources :posts
  resources :notes
  devise_for :users, :controllers => {:sessions => "users/sessions"}
  # devise_for :users, skip: [ :sessions, :passwords, :registrations ]
  # as :user do
  #   get 'login', to: 'users/sessions#new', as: :new_user_session
  #   post 'login', to: 'users/sessions#create', as: :user_session
  #   match 'logout', to: 'users/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
  # end
  resources :locations
  resources :events
  root 'dashboard#index'
end


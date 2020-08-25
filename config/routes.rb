Rails.application.routes.draw do
  devise_for :users, :controllers => {:sessions => "users/sessions"}
  resources :locations
  resources :events
  root 'dashboard#index'
end


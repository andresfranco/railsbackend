Rails.application.routes.draw do
  resources :articles
  devise_for :users
  root to: "home#index"
  resources :users
  resources :roles
  resources :user_roles
end

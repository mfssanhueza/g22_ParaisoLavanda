Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  devise_for :users
  post 'likes/:id/create', to: 'likes#create', as: 'like'
  resources :stories, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :shopping_carts, only: [:create, :destroy]
end

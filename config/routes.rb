Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  post 'likes/:id/create', to: 'likes#create', as: 'like'
  resources :stories, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :shopping_carts, only: [:create, :destroy]
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end

Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :stories, only: [:index, :show]
  resources :products, only: [:index, :show]
end

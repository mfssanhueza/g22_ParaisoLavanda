Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  post 'likes/:id/create', to: 'likes#create', as: 'like'
  resources :stories, only: [:index, :show]
  resources :products, only: [:index, :show]
end

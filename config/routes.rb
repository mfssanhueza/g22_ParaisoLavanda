Rails.application.routes.draw do
  root 'home#index'
  resources :stories, only: [:index, :show]
  resources :products, only: [:index, :show]
end

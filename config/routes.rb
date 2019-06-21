Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  get 'home/index'
  get 'products/index', to: 'products#index'
  root 'home#index'
end

Rails.application.routes.draw do
  get 'products/index'
  get 'products/:id/show', to: 'products#show', as: 'product_show'
  root 'home#index'
end

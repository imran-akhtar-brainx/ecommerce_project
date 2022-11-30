Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "sub_categories#index"

  resources :sub_categories, only: [:index]
  resources :products, only: [:index]
  resources :orders, only: [:index, :new, :create]
  post '/orders/new_order', to: 'orders#new_order'
end

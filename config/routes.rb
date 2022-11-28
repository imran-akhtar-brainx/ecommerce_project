Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "sub_categories#index"
  get 'sub_categories', to: 'sub_categories#index'
  resources :products, only: [:index, :show]
  resources :orders, only: [:index]
end

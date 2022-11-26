Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "sub_categories#index"
  resources :categories
  resources :sub_categories
  resources :products
end

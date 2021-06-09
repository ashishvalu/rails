Rails.application.routes.draw do
  resources :books_authors
  resources :order_detalis
  resources :orders
  resources :users
  resources :books
  resources :categaries
  resources :publishers
  resources :authors
  root  "books#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

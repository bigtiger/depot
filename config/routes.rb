Rails.application.routes.draw do
  get "admin" => "admin#index"
  resources :users
  resource :session
  resources :products
  resources :passwords, param: :token
  scope "(:locale)" do
    resources :orders
    resources :line_items
    resources :carts
    root "store#index", as: "store_index", via: :all
  end
  get "up" => "rails/health#show", as: :rails_health_check

  end

Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :products
  resources :categories
  resources :locations
end

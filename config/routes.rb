Rails.application.routes.draw do
  resources :posts
  devise_for :authors
  get 'home/index'
  root 'home#index'
end

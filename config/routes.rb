Rails.application.routes.draw do
  devise_for :authors
  get 'home/index'
  root 'home#index'
end

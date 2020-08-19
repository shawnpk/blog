Rails.application.routes.draw do
  resources :elements
  scope module: 'authors' do
    resources :posts
  end

  devise_for :authors
  
  root 'home#index'
end

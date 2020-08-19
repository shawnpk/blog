Rails.application.routes.draw do
  scope module: 'authors' do
    resources :posts
  end

  devise_for :authors
  
  root 'home#index'
end

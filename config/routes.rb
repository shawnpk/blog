Rails.application.routes.draw do
  scope module: 'authors' do
    resources :posts do
      resources :elements
    end
  end

  devise_for :authors
  
  root 'home#index'
end

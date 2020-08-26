Rails.application.routes.draw do
  devise_for :authors
  
  root 'readers/home#index'
  get '/blog/:id', to: 'readers/posts#show', as: :blog_post
  
  scope module: 'authors' do
    get 'stats', to: 'stats#index'
    resources :posts do
      resources :elements
    end
  end
end

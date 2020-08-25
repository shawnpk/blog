Rails.application.routes.draw do
  scope module: 'authors' do
    resources :posts do
      resources :elements
    end
  end

  devise_for :authors

  get '/blog/:id', to: 'readers/posts#show', as: :blog_post
  
  root 'readers/home#index'
end

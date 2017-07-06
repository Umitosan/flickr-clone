Rails.application.routes.draw do
  root to: 'posts#home'
  # devise_scope :user do get
  #   "/some/route" => "devise/sessions#new"
  # end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to: 'posts#home', as: 'posts_home'

  resources :posts do
    resources :tags
  end

  resources :users do
    resources :posts
  end

end

Rails.application.routes.draw do
  resources :poems
  resources :posts do
      resources :comments
  end

  root to: 'pages#home'

  devise_for :users 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

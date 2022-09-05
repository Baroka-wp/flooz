Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show] do
    resources :groups do
      resources :entities 
    end
  end
end

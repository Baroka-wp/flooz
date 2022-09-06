Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post '/groups/:name', to: 'groups#default_group', as: :default_group
  resources :users, only: [:show] do
    resources :groups do
      resources :entities 
    end
  end
end

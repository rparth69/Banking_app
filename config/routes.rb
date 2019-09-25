Rails.application.routes.draw do
  devise_for :users
  resources :bank_accounts, only: [:index, :show]
  resources :posts
  root to: 'pages#index'
end

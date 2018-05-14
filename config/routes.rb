Rails.application.routes.draw do
  root to: 'users#index'
  resources :users
  resources :country, only: [] do
    resources :states, only: :index
  end
end

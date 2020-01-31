Rails.application.routes.draw do
  devise_for :users
  # root to: 'posts#index'
  resources :users, only: :show
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'events#index'
end
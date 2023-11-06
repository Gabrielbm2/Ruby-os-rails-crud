Rails.application.routes.draw do
  devise_for :users

  resources :coins do
    member do
      post 'vote', to: 'coins#vote'
    end
  end

  resources :users, only: [:show] do
    member do
      post 'add_money', to: 'users#add_money', as: 'user_add_money'
    end
  end

  resources :coins do
    member do
      post :buy
    end
  end
  
  get 'user_profile', to: 'users#show', as: 'user_profile'

  root to: 'welcome#index'
end

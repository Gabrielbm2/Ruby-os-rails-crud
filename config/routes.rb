Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
  resources :coins do
    member do
      post 'vote'
    end
  end

  root to: 'welcome#index'
end

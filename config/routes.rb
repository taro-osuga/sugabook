Rails.application.routes.draw do
  root 'sessions#new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :feeds do
    collection do
      post :confirm
    end
  end
end
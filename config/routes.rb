Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only: [:index, :show] do
    get 'confirm', to: 'invitations#confirm'
    resources :invitations, only: [:new, :create]
  end

  resources :cars, only: [:index, :new, :show, :create]

  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  devise_for :users

  resources :product, only: [:show]

  resources :category, only: [:show]

  resource :cart, only: %i[destroy show] do
    resources :items, only: %i[destroy create]
  end

  resources :search, only: [:index]

  root to: 'main#index'

end

Rails.application.routes.draw do

  get 'search/results'
  resources :breeds, only: [:index, :show]
  resources :stores, only: [:index, :show]
  get 'store/:id', to: 'stores#show'
  get 'breed/:id', to: 'breeds#show'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/about', to: 'pages#about'
  get 'about', to: 'pages#about'

  root to: 'breeds#index'
end


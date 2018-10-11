Rails.application.routes.draw do
  get 'stores/index'
  get 'stores/show'
  resources :breeds, only: [:index, :show]
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/about', to: 'pages#about'
  get 'about', to: 'pages#about'

  root to: 'breeds#index'
end


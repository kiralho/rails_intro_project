Rails.application.routes.draw do
  get 'breeds/index'
  get 'breeds/show'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/about', to: 'pages#about'
  get 'about', to: 'pages#about'

end


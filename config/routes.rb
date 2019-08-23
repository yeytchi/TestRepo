Rails.application.routes.draw do
  resources :monuments
  devise_for :users
  root to: 'pages#home'

  get 'pages/map_direction'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

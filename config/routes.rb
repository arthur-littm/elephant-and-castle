Rails.application.routes.draw do
  devise_for :users
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  root to: 'pages#home'

  resources :posts
  resources :videos
  resources :portraits
  resources :likes, only: :create

  get '/about', to: 'pages#about'
  get '/search', to: 'pages#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
end

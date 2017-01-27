Rails.application.routes.draw do
  devise_for :users
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  root to: 'pages#home'

  resources :posts do
    post '/like', to: 'likes#add_like'
  end
  resources :videos do
    post '/like', to: 'likes#add_like'
  end
  resources :portraits do
    post '/like', to: 'likes#add_like'
  end

  get '/about', to: 'pages#about'
  get '/search', to: 'pages#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
end

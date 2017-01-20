Rails.application.routes.draw do
  devise_for :users
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  root to: 'pages#home'

  resources :posts
  resources :videos
  resources :portraits

  get '/about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

   [404, 422, 500].each do |code|
    get code, :to => "errors#show", :code => code
  end
end

Rails.application.routes.draw do
  # get 'order_items/create'

  # get 'order_items/update'

  # get 'order_items/destroy'

  get 'cart', to: 'carts#show'

  resources :categories
  get 'sessions/new'

  resources :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index', as: 'home'
  get 'pages/index'

  #get 'user' => 'sessions_helper#current_user' , as: 'user'
  get 'about' => 'pages#about' , as: 'about'
  get '/signup', to: 'users#new' 
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/logout',  to: 'sessions#destroy'
  get 'confirm', to: 'users#edit_confirmation', as: 'confirm'
  

  resources :users

  resources :posts do
  	resources :comments
  end
  
end

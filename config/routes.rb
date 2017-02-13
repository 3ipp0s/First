Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'

  #get 'user' => 'sessions_helper#current_user' , as: 'user'
  get 'about' => 'pages#about' , as: 'about'
  get '/signup', to: 'users#new' 
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  

  resources :users

  resources :posts do
  	resources :comments
  end
  
end
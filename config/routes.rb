Rails.application.routes.draw do
  root to: 'application#welcome'
  get '/signup', to: 'users#new' 
  post '/signup', to: 'users#create' 
  get '/login', to: 'sessions#new' 
  post '/login', to: 'sessions#create' 
  get '/logout', to: 'sessions#destroy' 
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  resources :users
end
  
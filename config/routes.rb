Rails.application.routes.draw do
  root 'sessions#new'

  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  post 'posts/new', to: 'posts#create'

  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end

Rails.application.routes.draw do
  root 'posts#index'

  get 'users/new'
  post 'users/new', to: 'users#create'

  get "/about", to: 'static_pages#about'

  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'

  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end

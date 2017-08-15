Rails.application.routes.draw do
  # these routes are for showing users a login form, logging them in, and logging them out.
  root 'articles#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :articles

  # routes for user sign in

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end

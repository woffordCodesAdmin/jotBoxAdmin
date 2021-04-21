Rails.application.routes.draw do
  resources :posts
    get '/' => 'users#index'
    post '/sessions' => 'sessions#create'
    post '/users' => 'users#create'
    get '/dashboard' => 'profiles#index'
end

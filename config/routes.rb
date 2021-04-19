Rails.application.routes.draw do
    get '/' => 'users#index'
    post '/sessions' => 'sessions#create'
    post '/users' => 'users#create'
    get '/dashboard' => 'profiles#index'
end

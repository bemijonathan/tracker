Rails.application.routes.draw do
  get '/' => "application#index"
  post '/login' => "authentication#login_user"
  get '/login' => "authentication#login"
  get '/signup' => "authentication#signup"
  get '/logout' => "authentication#logout"
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

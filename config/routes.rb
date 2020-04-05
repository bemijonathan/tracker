Rails.application.routes.draw do
  get '/' => "application#index"
  get '/login' => "authentication#login"
  get '/signup' => "authentication#signup"
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

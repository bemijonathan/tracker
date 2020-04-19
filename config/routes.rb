Rails.application.routes.draw do
  resources :transactions
  get '/' => "application#index"
  post '/login' => "authentication#login_user"
  get '/login' => "authentication#login"
  get '/signup' => "authentication#signup"
  get '/logout' => "application#logout"
  get '/dashboard' => "dashboard#index"
  get '/search' => "application#search"
  get '/shipping' => "application#shipping"
  get '/about' => "application#about"
  get '/contact' => "application#contact"
  get '/sendmailpage' => "application#sendmailpage"
  post '/sendmail' => "application#sentmail"

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

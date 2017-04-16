Rails.application.routes.draw do
  root "application#index"
  get '/home',    to: 'projects/home'
  get '/about',   to: 'projects/about'
  get '/help',     to: 'projects/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

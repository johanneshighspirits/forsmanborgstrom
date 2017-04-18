Rails.application.routes.draw do
  root 'application#index'

  # Projects
  get     '/home',    to: 'projects#home'
  get     '/about',   to: 'projects#about'
  get     '/help',    to: 'projects#help'
  # Users
  get     '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  # Sessions
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

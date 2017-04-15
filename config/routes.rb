Rails.application.routes.draw do
  root "application#index"
  get 'projects/home'
  get 'projects/about'
  get 'projects/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

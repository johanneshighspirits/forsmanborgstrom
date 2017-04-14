Rails.application.routes.draw do
  get 'projects/home'

  get 'projects/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#index"

end

Rails.application.routes.draw do
  root 'homepage#index'
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes
  resources :users

end

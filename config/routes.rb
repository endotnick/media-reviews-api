Rails.application.routes.draw do
  resources :users
  resources :views
  resources :reviews
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/users/:id/reviews' => 'users#reviews'
  get '/users/:id/views' => 'users#views'

   # User Routes
  get '/signup' => 'users#new'
  resources :users, only: %i[show update create]
  resources :reviews, only: %i[create edit update destroy]
  resources :views, only: %i[create destroy]

  resources :movies, only: %i[index create show]  
end

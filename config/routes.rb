Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post 'find_user' => 'users#find'
  
  get '/users/:id/reviews' => 'users#reviews'
  get '/users/:id/views' => 'users#views'

   # User Routes
  resources :users, only: %i[show update create]
  resources :reviews, only: %i[show create update destroy]
  resources :views, only: %i[create destroy]

  resources :movies, only: %i[index create show]  

  resources :current_user, only: %i[show]
  resources :auth, only: %i[create destroy]
end

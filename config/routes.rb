Rails.application.routes.draw do


  resources :shelves
  resources :users
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
        post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :books
        post '/books/search', to: 'books#search'

    end
  end

end

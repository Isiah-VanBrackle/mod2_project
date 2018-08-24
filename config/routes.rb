Rails.application.routes.draw do
  resources :reviews # We want a user to be able to do every CRUD method for reviews
  resources :users # We want a user to be able to do every CRUD method for users, but no index
  resources :books #we want a user to be able to do every CRUD method for books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  root 'books#index'
  #default_url_options :host => "http://localhost:3000"

end

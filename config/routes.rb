Rails.application.routes.draw do
  resources :books 
  resources :users
  root 'books#index'
  #post '/users/new', to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

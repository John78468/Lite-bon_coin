Rails.application.routes.draw do

  root to: 'homepages#home'
  #get 'homepages/index'
  #get 'homepages/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :products
  get 'my_message', to: 'products#my_message'
end

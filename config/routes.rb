Rails.application.routes.draw do
  root to: 'homepages#home'
  #get 'homepages/index'
  #get 'homepages/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :products, only: %i[index show update destroy] do
    resources :posts, only: [:create]
  end
end

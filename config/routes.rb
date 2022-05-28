Rails.application.routes.draw do
  resources :groups do
    resources :entities
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :splash, only: %i[index]
  root 'splash#index'
end

Rails.application.routes.draw do
  root 'home#index'
  resources :questions do
    resources :answers
  end
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do 

  get 'about', to: 'about#index'
  
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'
  
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

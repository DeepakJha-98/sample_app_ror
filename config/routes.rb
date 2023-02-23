Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'

  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  
  # Defines the root path route ("/")
  # root "articles#index"

end

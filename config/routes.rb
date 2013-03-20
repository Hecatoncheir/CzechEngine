StomixEngine::Application.routes.draw do

  get "users/index"

  root to: "pages#index"
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    get 'users', to: 'users#index'
  end
  
  resources :users
  resources :sessions

end

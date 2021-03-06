Rails.application.routes.draw do

  get 'password_reset/new'
  get 'password_reset/edit'
  get 'sessions/new'
  root 'static_pages#home'

  get '/help', to: 'static_pages#help', as: 'help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about', to: 'static_pages#about', as: 'about'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup',  to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations,         only: [:edit]
  resources :password_resets,             only: [:new, :create, :edit, :update]
  resources :microposts,                  only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end

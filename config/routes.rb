Rails.application.routes.draw do

  root 'static_pages#home'

  get '/help', to: 'static_pages#help', as: 'help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about', to: 'static_pages#about', as: 'about'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/signup', to: 'users#new', as: 'signup'
  post '/signup',  to: 'users#create'
  resources :users
end

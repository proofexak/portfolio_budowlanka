Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'dashboard#index'

  resources :dashboard, only: %i[index]
  resources :projects, only: %i[index show]
  resources :informations, only: %i[index]
  resources :contact, only: %i[index]
end

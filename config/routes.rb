Rails.application.routes.draw do
  resources :categories
  root 'pages#home'

  devise_for :users

  resources :users, only: [:show]
  resources :events

  resources :events do
  resources :registrations, only: [:create]
  end

  resources :profiles, only: [:new, :edit, :create, :update]

  get "about" => "pages#about"
  get "register_for_event" => "pages#register"


  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  resources :events
end
end

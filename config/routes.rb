Rails.application.routes.draw do
  get 'users/:id', to: 'users#show', as: 'user'

  resources :pins
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin", to:'devise/sessions#new'
  	delete "signout", to: 'devise/sessions#destroy'
  	get 'signup' ,to: 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contactus'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

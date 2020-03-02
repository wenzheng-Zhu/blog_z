Rails.application.routes.draw do

  # get 'users/new'
  # get 'users/update'
  # get 'users/edit'
  # get 'users/index'
  # get 'users/show'
  # get 'users/create'
	root 'pages#home'
  # get 'pages/home'
  # get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/home', to: 'pages#home'
  get 'pages/about', to: 'pages#about'
  resources :articles

  resources :users, except: [:new]

  get '/signup', to: 'users#new'




end

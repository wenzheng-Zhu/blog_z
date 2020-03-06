Rails.application.routes.draw do

  get 'pages/home'
  get 'categories/new'
  get 'categories/create'
  get 'categories/index'
  get 'categories/edit'
  get 'categories/update'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'sessions/update'
  # get 'sessions/edit'
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
  resources :categories, except: [:destroy]

  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete'/logout', to: 'sessions#destroy'




end

Rails.application.routes.draw do

  root :to => redirect('/login')

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users, only: [:new, :create, :show, :destroy]

  namespace :user do
    resources :ideas, only: [:new, :create, :show]
  end


end

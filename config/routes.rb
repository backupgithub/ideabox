Rails.application.routes.draw do

  root :to => redirect('/login')

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show]

  namespace :user do
    resources :ideas
  end

  namespace :admin do
    resources :categories
  end

end

Rails.application.routes.draw do

  root :to => redirect('/login')

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

end

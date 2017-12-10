Rails.application.routes.draw do
  #root
  root to: 'pages#index'

  #pages controller
  get '/index', to: 'pages#index', as: 'index'
  get '/show/:id', to: 'pages#show', as: 'show'

  #geo Controller
  get '/geo/index'
  get '/geo/show/:id', to: 'geo#show', as: 'geo_show'
  post '/geo/create'

end

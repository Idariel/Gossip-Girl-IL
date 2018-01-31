Rails.application.routes.draw do
  #Crée toutes les routes à partir de gossips
 root "gossips#home"
  resources :gossips

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#mano :
  # get '/new', to: 'gossips#new', as: 'new'
  # get '/create', to: 'gossips#create', as: 'create'
  # get '/show', to: 'gossips#show', as: 'show'
  # get '/update', to: 'gossips#update', as: 'update'
  # get '/delete', to: 'gossips#delete', as: 'delete'

end

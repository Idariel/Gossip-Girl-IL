Rails.application.routes.draw do
  root :to => "gossips#home", as: 'home'
  get '/new', to: 'gossips#new', as: 'new'
  get '/create', to: 'gossips#create', as: 'create'
  get '/show', to: 'gossips#show', as: 'show'
  get '/update', to: 'gossips#update', as: 'update'
  get '/delete', to: 'gossips#delete', as: 'delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

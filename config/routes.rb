Rails.application.routes.draw do
  root :to => "gossips#home", as: 'home'
  get 'gossips/new', to: 'gossips#new', as: 'new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

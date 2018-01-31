Rails.application.routes.draw do
  root :to => "home_pages#home", as: 'home'
  # get '/contact', to: 'home_pages#contact', as: 'contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

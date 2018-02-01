Rails.application.routes.draw do
  #Crée toutes les routes à partir de gossips
 root "gossips#index"
  resources :gossips

end

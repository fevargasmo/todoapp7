Rails.application.routes.draw do
  resources :paiss
  resources :salons
  resources :camisetas
  resources :computadors
  resources :carros
  resources :publicacions
  resources :users
  resources :universidads
  resources :estudiantes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :guardians
  devise_for :users
  resources :types
  resources :registers
  resources :shelters
  resources :pets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

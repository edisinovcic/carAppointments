Rails.application.routes.draw do
  resources :users
  resources :cars
  resources :appointments

  root 'rails/info#routes'
end

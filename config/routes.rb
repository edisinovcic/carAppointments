Rails.application.routes.draw do
  resources :user
  resources :car
  resources :appointment

  root 'rails/info#routes'
end

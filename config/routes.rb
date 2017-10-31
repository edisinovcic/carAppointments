Rails.application.routes.draw do
  resources :users
  resources :cars
  resources :appointments

  root 'rails/info#routes'
  get '/mailer', to: 'email_senders#index'
end

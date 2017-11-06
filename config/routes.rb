Rails.application.routes.draw do
  #/en/users is same as /users (because locale is english and can be omitted)
  scope '(:locale)', locale: /en|de/ do #/en|de/ only for specific languages; all others are blocked
    resources :users do
      resources :credit_cards
    end
    resources :cars
    resources :appointments
  end
  root 'rails/info#routes'
  get '/mailer', to: 'email_senders#index'

  #If there are explicit root pages for different languages then they have to be defined explicitly
  #otherwise there is no need for special routing of this kind
  #get '/:locale' => 'dashboard#index'
  #get '/en' => 'dashboard#index'
  #get '/de' => 'dashboard#index'


  #For customizing purposes of rails routes
# https://github.com/svenfuchs/routing-filter/tree/master
#   Locale - prepends the page's :locale (e.g. /de/products)
#   Pagination - appends page/:num (e.g. /products/page/2)
#   Uuid - prepends a uuid for authentication or other purposes (e.g. /d00fbbd1-82b6-4c1a-a57d-098d529d6854/products/1)
#   Extension - appends an extension (e.g. /products.html)

  #For internationalization purpouses
  #https://github.com/globalize/globalize

end




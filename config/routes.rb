Rails.application.routes.draw do
  post '/photographers/review', to: 'photographers#review'
  post '/photographers/new_quote', to: 'photographers#new_quote'
  post '/photographers/review_quotes', to: 'photographers#review_quotes'
  post '/clients/review', to: 'clients#review'
  get '/price_quotes/:photographer_id/new', to: 'price_quotes#new'

  resources :photographers
  resources :clients
  resources :photographer_reviews
  resources :client_reviews
  resources :price_quotes
  root 'home#index'
  get '/home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :photographers
  resources :clients
  root 'clearance/sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

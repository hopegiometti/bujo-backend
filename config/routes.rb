Rails.application.routes.draw do
  resources :tasks
  resources :days
  resources :months
  resources :events
  resources :pages
  resources :journals
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

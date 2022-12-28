Rails.application.routes.draw do
  resources :groups
  resources :emails
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root "home#index"
end

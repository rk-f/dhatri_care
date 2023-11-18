Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  namespace :api, format: :jsonapi do
    resources :users
    resources :organizations
    resources :roles
    resources :branches
    resources :patients
  end
end

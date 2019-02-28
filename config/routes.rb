Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'books#index'
  resources :books, only: [:index, :show]
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

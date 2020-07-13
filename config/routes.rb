Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  devise_for :users
  root "messages#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :index, :update, :edit]
end

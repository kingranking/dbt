Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  devise_for :users
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :update, :edit, :show] do
    resources :messages, only: [:index, :create] 
    resources :fors, only: [:create]
    resources :againsts, only: [:create]
  end
end

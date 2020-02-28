Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
  root to: 'movies#index'
  resources :questions

  post "/solutions/:id" => "solutions#create"

  resources :texts

end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'searchs#index'
  resources :searchs do
   resources :comments, only: [:create]
 end
end

Rails.application.routes.draw do
  get 'post/index'

  get 'post/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'

  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

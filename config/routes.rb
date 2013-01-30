NewChebitRu::Application.routes.draw do
  resources :conferences
  resources :presentations

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => "home#index"
end
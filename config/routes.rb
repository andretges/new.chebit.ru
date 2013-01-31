NewChebitRu::Application.routes.draw do
  resources :conferences, :only => [:index, :show]
  resources :presentations, :only => [:show]

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => "conferences#index"
end
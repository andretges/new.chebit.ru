NewChebitRu::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :conferences, :only => [:index, :show]
  resources :presentations, :only => [:show, :index]

  root :to => "conferences#index"
end

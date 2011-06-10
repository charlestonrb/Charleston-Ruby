Charlestonruby::Application.routes.draw do
  get "sessions/new"

  root :to => 'pages#home'
  match '/auth/:provider/callback', :to => 'sessions#callback'
  match 'about', :to => 'pages#about'
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "members#new", :as => "sign_up"

  resources :sessions
  resources :organizations
  resources :members
  resources :projects

end

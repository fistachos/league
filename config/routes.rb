League::Application.routes.draw do

  resources :news

  resources :matches

  resources :teams

  resources :gamers

	get "logout" => "sessions#destroy", :as => "logout"
	get "login" => "sessions#new", :as => "login"
	get "signup" => "users#new", :as => "signup"
	resources :users
	resources :sessions

  root :to => "news#index"
end

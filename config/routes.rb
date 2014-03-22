PolarisPortfolio::Application.routes.draw do
  resources :games, :only => [:show, :index]
  resources :scores, :only => [:show, :create]
  get "about" => "static_pages#about"

  root :to => "root#index"
end
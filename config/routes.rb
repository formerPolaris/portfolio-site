PolarisPortfolio::Application.routes.draw do
  resources :games, :only => [:show, :index]
  resources :scores, :only => [:show, :create]

  root :to => "root#index"
end
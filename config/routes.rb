Xmlreporter::Application.routes.draw do

  resources :reports, :only => [:index, :create, :show, :destroy]
  root :to => 'reports#index'

end

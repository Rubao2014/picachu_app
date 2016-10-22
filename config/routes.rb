Rails.application.routes.draw do

  #namespace :api do
  #  namespace :v1 do
  #    #resources :pacientes, only: [:index, :create, :show, :update, :destroy], :controller => '/pacientes'
  #    #resources :atendimentos, only: [:index, :create, :show, :update, :destroy], :controller => '/atendimentos'
  #    resources :cadastros, only: [:index, :create, :show, :update, :destroy]
  #    #resources :atendimentos, only: [:index, :create, :show, :update, :destroy], :controller => '/atendimentos'
  #  end
  #end

	namespace :api do
	  namespace :v1 do
	    resources :events
	    resources :cadastros
	  end
	end

#namespace :api, path: '', constraints: {subdomain: 'api'}, defaults: {format: :json} do
#  namespace :v1 do
#    resources :events
#  end
#end

  resources :cadastros

end

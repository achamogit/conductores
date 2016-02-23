Rails.application.routes.draw do
  
  resources :vehiculos
  resources :modulos
  resources :perfiles
  resources :perfiles

  get 'alternativas/index'

  get 'alternativas/menu0'

  get 'alternativas/menu1'

  get 'alternativas/menu2'

  get 'alternativas/menu3'

  get 'alternativas/menu4'

  get 'alternativa/index'


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  resources :movies do
    collection do
    	get 'search'
    end	
  	resources :reviews, except: [:show, :index]
  end	
  
  root 'movies#index'
  
end

Rails.application.routes.draw do
  resources :toners
#  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :supports do 
	resources :rsupports
  end
  root to: 'pages#home'
  get '/pages/excel' => 'pages#excel'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

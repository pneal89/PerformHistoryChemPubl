Rails.application.routes.draw do

  resources :statistics
  resources :students
  resources :courses
  get 'test/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'test#index'

    devise_for :users

    get 'user', to: 'users#index', as: 'admin_users'
    #get 'test/index'
end

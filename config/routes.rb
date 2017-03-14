Rails.application.routes.draw do

  resources :colleges
  resources :high_schools
  resources :instructors
  resources :states
  resources :statistics
  resources :students
  resources :courses
  get 'test/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'test#index'

  devise_for :users

  get 'users', to: 'users#index', as: 'admin_users'
end

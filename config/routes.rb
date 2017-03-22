Rails.application.routes.draw do
  get 'courses/import', to: 'courses#import', as: 'courses_import'
  post '/courses(.:format)', to: 'courses#to_db', as: 'course_to_db'
  devise_for :users
  resources :course_students
  resources :colleges
  resources :high_schools
  resources :instructors
  resources :states
  resources :statistics
  resources :students
  resources :courses

  get 'users', to: 'users#index', as: 'admin_users'
  root to: 'test#index'
end

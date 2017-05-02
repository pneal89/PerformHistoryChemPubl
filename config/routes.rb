Rails.application.routes.draw do
  get 'courses/import', to: 'courses#import', as: 'courses_import'
  get 'students/import', to: 'students#import', as: 'import_students'
  get 'instructors/import', to: 'instructors#import', as: 'instructors_import'
  get 'colleges/import', to: 'colleges#import', as: 'colleges_import'
  get 'high_schools/import', to: 'high_schools#import', as: 'high_schools_import'

  post '/courses(.:format)', to: 'courses#to_db', as: 'course_to_db'
  post '/students(.:format)', to: 'students#to_db', as: 'student_to_db'
  post '/instructors(.:format)', to: 'instructors#to_db', as: 'instructor_to_db'
  post '/colleges(.:format)', to: 'colleges#to_db', as: 'college_to_db'
  post '/high_schools(.:format)', to: 'high_schools#to_db', as: 'high_school_to_db'
  
  get '/courses/stats', to: 'courses#stat', as: 'courses_stat'
  
  get '/student/courses/:id', to: 'students#course', as: 'student_courses'

  
  devise_for :users
  resources :course_students
  resources :colleges
  resources :high_schools
  resources :instructors
  resources :states
  resources :statistics
  resources :students
  resources :courses

  get 'reports/students/attempts', to: 'student_reports#attempts', as: 'attempt_report'
  get 'users', to: 'users#index', as: 'admin_users'
  root to: 'test#index'
end

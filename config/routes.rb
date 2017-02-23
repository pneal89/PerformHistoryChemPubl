Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'test#index'

  authenticate :user do
    devise_for :users
    get 'test/index'
  end
end

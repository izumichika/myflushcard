Rails.application.routes.draw do
  # devise_for :users
  # get 'problems/index'
  root "problems#index"
  resources :problems, only: [:index, :new, :create, :destroy, :show] 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

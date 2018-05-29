Rails.application.routes.draw do
  resources :pqr_trackings
  resources :statuses
  resources :logs
  resources :pqrs
  resources :external_files
  devise_for :users
  get 'home/index'
  resources :departments
  resources :permission_roles
  resources :roles
  resources :permissions
  root to: "home#index"
  get '/users', to: 'users#metodo'
  get '/pqr_trackingsDepartment', to: 'pqr_trackings#departmentView'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  resources :departments
  resources :permission_roles
  resources :roles
  resources :permissions
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :permission_roles
  resources :roles
  resources :permissions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

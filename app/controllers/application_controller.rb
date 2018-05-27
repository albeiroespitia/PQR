class ApplicationController < ActionController::Base
    before_action :configure_devise_params, if: :devise_controller?

    def configure_devise_params
        devise_parameter_sanitizer.permit(:sign_up) do |user|
            user.permit( :email, :first_name, :last_name, :phone_number, :birthdate, :password, :password_confirmation, :department_id, :role_id)
        end    
    end
end

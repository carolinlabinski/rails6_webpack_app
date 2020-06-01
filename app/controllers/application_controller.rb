class ApplicationController < ActionController::Base
  
  
    def configure_devise_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u|
      u.permit(
               :first_name,
               :last_name,
               :user_name,
               :email,
               :password,
               :password_confirmation
               )
             }
    end
  end
class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :middle_name, :last_name, :phone_number])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :middle_name, :last_name, :phone_number])
    end
end
  
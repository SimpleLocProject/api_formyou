class ApplicationController < ActionController::API
  respond_to :json
  before_action :sanitize_devise_params, if: :devise_controller?
     protected

          def sanitize_devise_params
            devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :can_access, :is_admin, :is_teacher])
          end

end

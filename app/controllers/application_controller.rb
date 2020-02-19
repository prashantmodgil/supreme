class ApplicationController < ActionController::Base
  before_action :authenticate_employee!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery prepend: true
  # layout false
  private
  def after_sign_out_path_for(employee)
    new_employee_session_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :contact])
  end

  def after_sign_up_path_for(employee)
    complaints_path
  end
end

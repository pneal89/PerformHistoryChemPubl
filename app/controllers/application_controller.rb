class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  layout :layout_by_resource
  def checkifapproved
    if !current_user?
      redirect_to root_path
    elsif current_user? && current_user.approved != true
      redirect_to root_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fname,:lname])
  end

  def layout_by_resource
    if devise_controller?
      "login"
    else
      "application"
    end
  end

end

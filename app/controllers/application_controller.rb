class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #before_action :authenticate_user!


  # layout :layout_by_resource
  #
  # protected
  #
  # def layout_by_resource
  #   if devise_controller?
  #     "login"
  #   else
  #     "application"
  #   end
  # end

  def checkifapproved
    if !current_user?
      redirect_to root_path
    elsif current_user? && current_user.approved != true
      redirect_to root_path
    end
  end
end

class AdminController < ApplicationController
  layout 'admin'
  helper_method :current_user
  
  private
  
  def authenticate
    unless current_user
      redirect_to admin_login_path
    end
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
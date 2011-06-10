class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:notice] = 'You are not allowed to access this page.'
    redirect_to root_url
  end
  
  private
  def current_user
    @current_user ||= Member.find(session[:user_id]) if session[:user_id]
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user]) if session[:user]
  end

  def current_admin?
    current_user && current_user.admin?
  end

end

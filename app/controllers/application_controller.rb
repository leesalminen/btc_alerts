class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login

  private
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    user = User.find(session[:user_id]) if session[:user_id]
    unless user
      redirect_to("/auth/failure", {:flash => { :error => "You must be logged in to see that page." }, :status => :moved_permanently})
    end
  end


end

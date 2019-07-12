class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    session[:user_id]
  end

  def require_login
    redirect_to new_session_path if !session[:user_id]
  end 
end

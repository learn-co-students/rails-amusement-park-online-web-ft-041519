class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def require_login
  end 
end

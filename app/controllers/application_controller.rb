class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render 'homepage'
  end

  private
 
  def require_login
    unless session.include? :user_id
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_url
    end
  end
end

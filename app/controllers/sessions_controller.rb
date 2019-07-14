class SessionsController < ApplicationController

    def new
        @user = User.new
        render :signin
    end

    def create
        user = User.find_by(name: params[:name])
        if user && user.password == params[:password]
            session[:user_id] = user.id
            redirect_to user_path(user)
        end
    end

    def destroy
        session.destroy if session[:user_id]
        redirect_to new_session_path
    end

end     
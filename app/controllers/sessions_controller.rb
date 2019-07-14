require 'pry'
class SessionsController < ApplicationController
    def new
        #login form
    end

    def create
        #login the user
        @user = User.find_by(name: params[:user][:name])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to signin_path
        end
    end

    def destroy
        #logout the user
        session.delete :user_id
        redirect_to root_path
    end
end

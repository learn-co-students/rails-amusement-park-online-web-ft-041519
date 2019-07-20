class UsersController < ApplicationController
    include UsersHelper

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id 
        session[:user] = @user
        redirect_to user_path(@user)
    end

    def show
        @user = User.find(params[:id])
        if !logged_in?(@user)
            redirect_to root_path
        end
    end

    def index
    end

    def signin
        @user = User.new
    end

    private 

    def user_params
        params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin) 
    end

end

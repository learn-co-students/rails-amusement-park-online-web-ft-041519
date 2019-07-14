class UsersController < ApplicationController
    def new
        #sign up form
        @user = User.new
    end

    def create
        #create user
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to signup_path, alert: "Unable to sign up user with the info provided"
        end
    end

    def show
        #user homepage
        @user = User.find_by(id:params[:id])

        if @user != current_user
            redirect_to root_path, alert: "You do not have access to this page"
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :tickets, :nausea, :happiness, :height, :admin)
    end
end

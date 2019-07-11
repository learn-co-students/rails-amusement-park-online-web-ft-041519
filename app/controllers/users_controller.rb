class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.find_by_id()
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation, :height, :tickets, :nausea, :happiness)
    end
end
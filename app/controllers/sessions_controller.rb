class SessionsController < ApplicationController

    def new

    end

    def create
        @user = User.find_by_id(params[:user][:id])
    end


end
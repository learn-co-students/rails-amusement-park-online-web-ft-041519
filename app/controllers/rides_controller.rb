class RidesController < ApplicationController

    def new
    end

    def create
    end

    def show
    end

    def index
    end

    def take_ride
        @attraction = Attraction.find(params[:attraction_id])
        @user = current_user
        @ride = Ride.create(user: @user, attraction: @attraction)
        @message = @ride.take_ride  
        if @message == true 
            @message = "Thanks for riding the " + current_user.rides.last.attraction.name + "!"
        end

        flash[:alert] = @message

        redirect_to user_path(@user)

    end
end

class RidesController < ApplicationController

    def show
    end

    def update
        ride = Ride.find_by(id: params["id"])
        user = User.find_by(id: ride.user_id)
        attraction = Attraction.find_by(id: ride.attraction_id)
        session[:message] = ride.take_ride
        redirect_to user_path(user)
    end
end

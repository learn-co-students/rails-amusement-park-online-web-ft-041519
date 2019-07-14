class Ride < ActiveRecord::Base
    belongs_to :attraction
    belongs_to :user

    def tickets
        attraction = Attraction.find_by(id: self.attraction_id)
        attraction.tickets
    end

    def take_ride
        if tickets > @user.tickets && self.min_height > @user.height 
            "Sorry. You do not have enough tickets to ride the #{@attraction.name}. You are not tall enough to ride the #{@attraction.name}."
        elsif tickets > @user.tickets
            "Sorry. You do not have enough tickets to ride the #{@attraction.name}."
            redirect_to user_path(@user)
        elsif self.min_height > @user.height 
            "Sorry. You are not tall enough to ride the #{@attraction.name}."
        else
            @user.tickets -= tickets
            @user.nausea -= self.nausea
            @user.happiness
        end

    end

    

end

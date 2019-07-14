class Ride < ActiveRecord::Base
    belongs_to :attraction
    belongs_to :user

    def take_ride
        if self.tickets > @user.tickets && self.min_height > @user.height 
            "Sorry. You do not have enough tickets to ride the #{@attraction.name}. You are not tall enough to ride the #{@attraction.name}."
        elsif self.tickets > @user.tickets
            "Sorry. You do not have enough tickets to ride the #{@attraction.name}."
            redirect_to user_path(@user)
        elsif self.min_height > @user.height 
            "Sorry. You are not tall enough to ride the #{@attraction.name}."
        else
            @user.tickets -= self.tickets
            @user.nausea -= self.nausea
            @user.happiness
        end

    end

end

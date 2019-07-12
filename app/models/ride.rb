class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction


    # used error messages? Custom validation?
    def take_ride
        if user.tickets >= attraction.tickets
            if user.height >= attraction.min_height
                user.tickets -= attraction.tickets
                user.nausea += attraction.nausea_rating
                user.happiness += attraction.happiness_rating
            else
                "Sorry. You are not tall enough to ride the #{attraction.name}."
            end
        else
            "Sorry. You do not have enough tickets to ride the #{attraction.name}."
        end        
    end
end

class Ride < ActiveRecord::Base
    belongs_to :attraction
    belongs_to :user

    def tickets
        attraction = Attraction.find_by(id: self.attraction_id)
        attraction.tickets
    end

    def take_ride
        user = User.find_by(id: self.user_id)
        attraction = Attraction.find_by(id: self.attraction_id)
        if tickets > user.tickets && attraction.min_height > user.height 
            "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
        elsif tickets > user.tickets
            "Sorry. You do not have enough tickets to ride the #{attraction.name}."
        elsif attraction.min_height > user.height 
            "Sorry. You are not tall enough to ride the #{attraction.name}."
        else
            user.tickets -= tickets
            user.nausea += attraction.nausea_rating
            user.happiness += attraction.happiness_rating
            user.save
            "Thanks for riding the #{attraction.name}!"
        end

    end

    

end

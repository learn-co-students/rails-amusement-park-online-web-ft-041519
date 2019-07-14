class Ride < ActiveRecord::Base
    belongs_to :user
    belongs_to :attraction

    def take_ride
        if user.height < attraction.min_height && user.tickets < attraction.tickets
            "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
        elsif user.height < attraction.min_height
            "Sorry. You are not tall enough to ride the #{attraction.name}."
        elsif user.tickets < attraction.tickets
            "Sorry. You do not have enough tickets to ride the #{attraction.name}."
        else
            t = user.tickets - attraction.tickets
            n = user.nausea + attraction.nausea_rating
            h = user.happiness + attraction.happiness_rating
            user.update(tickets: t, nausea: n, happiness: h)
            "Thanks for riding the #{attraction.name}!"
        end
    end
end

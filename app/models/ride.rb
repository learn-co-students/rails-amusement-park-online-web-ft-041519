class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride

  if @user.tickets >= @attraction.tickets && @user.height >= @attraction.min_height
    @user.tickets = @user.tickets - @attraction.tickets
    @user.nausea = @attraction.nausea_rating
    @user.happiness = @attraction.happiness_rating
  else
    "You do not have enough tickets or you are not tall enough."
  end
end

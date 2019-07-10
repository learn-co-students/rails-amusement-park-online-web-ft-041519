class RidesController < ApplicationController

  def go_on_ride
    binding.pry
    @user = User.find_by_id(session[:user_id])
    take_ride
    redirect_to user_path(@user)
  end
end

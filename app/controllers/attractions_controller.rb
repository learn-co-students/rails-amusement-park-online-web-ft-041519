class AttractionsController < ApplicationController

  def index 
    @attractions = Attraction.all
    @user = User.find_by_id(session[:user_id])
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(params.require(:attraction).permit!)
    redirect_to attraction_path(@attraction)
  end

  def show
    @attraction = Attraction.find(params[:id])
  end
end

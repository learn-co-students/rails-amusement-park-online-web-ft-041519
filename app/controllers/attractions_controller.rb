class AttractionsController < ApplicationController
  def show
    @attraction = Attraction.find_by(id: params[:id])
  end

  def index
    @attractions = Attraction.all
  end
end

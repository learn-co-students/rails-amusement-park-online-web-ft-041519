class AttractionsController < ApplicationController

    def new
    end

    def create
    end

    def show
        @attraction = Attraction.find(params[:id])
    end

    def index
    end

end

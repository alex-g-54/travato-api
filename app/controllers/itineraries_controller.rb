class ItinerariesController < ApplicationController
  def index
    # TODO: query by city, start_date, end_date
    @itineraries = Itinerary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @itineraries }
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    itinerary_id = params["id"]
    @itinerary = Itinerary.where(id: itinerary_id).limit(1).first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @itinerary }
    end
  end

  def update
  end

  def destroy
  end
end

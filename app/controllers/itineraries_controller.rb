class ItinerariesController < ApplicationController
  def new
    @itinerary = Itinerary.new
  end

  def create
    binding.pry
    Itinerary.create!(itinerary_params)
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
    itinerary_id = params["id"]
    @itinerary = Itinerary.where(id: itinerary_id).limit(1).first
    @itinerary.update_attributes(itinerary_params)
  end

  def destroy
  end

  def itinerary_params
    params.require(:itinerary).permit(:name, :city, :price, :description, :total_capacity, :pic_url, :start_time, :end_time) # permit all fields you want to allow
  end
end

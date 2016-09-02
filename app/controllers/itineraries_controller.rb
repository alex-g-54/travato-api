class ItinerariesController < ApplicationController
  def new
    @itinerary = Itinerary.new
    @itinerary.spots_sold = 0
    @itinerary.user_id = current_user.id
  end

  def create
    # binding.pry
    Itinerary.create!(itinerary_params)
    redirect_to 'new'
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
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
    params.require(:itinerary).permit(:name, :city, :price, :description, :total_capacity, :spots_sold, :user_id, :pic_url, :date) # permit all fields you want to allow
  end
end

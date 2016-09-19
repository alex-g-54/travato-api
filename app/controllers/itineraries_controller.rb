class ItinerariesController < ApplicationController
  def index
    @user = User.where(id: params[:user_id]).limit(1).first
    @host_itineraries = @user.host_itineraries
    @guest_itineraries = @user.guest_itineraries
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    params[:itinerary][:spots_sold] = 0
    params[:itinerary][:user_id] = current_user.id
    @itinerary = Itinerary.create!(itinerary_params)
    redirect_to itinerary_path(@itinerary)
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
    redirect_to itinerary_path(@itinerary)
  end

  def destroy
  end

  def itinerary_params
    params.require(:itinerary).permit(:name, :city, :price, :description, :total_capacity, :spots_sold, :user_id, :pic_url, :date) # permit all fields you want to allow
  end
end

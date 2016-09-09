class ItineraryUsersController < ApplicationController

  def create
    itinerary_id = params["itinerary_id"]
    user_id = current_user.id

    @itinerary = Itinerary.find(itinerary_id)

    @itinerary.increase_spots_sold
    @itinerary_user = ItineraryUser.new(itinerary_id: itinerary_id, user_id: user_id)

    if @itinerary.valid? && @itinerary_user.valid?
      @itinerary.save && @itinerary_user.save
      flash[:notice] = "Booking successful!"
    else
      flash[:notice] = "Booking unsuccessful. #{@itinerary.errors.full_messages} #{@itinerary_user.errors.full_messages}"
    end

    respond_to do |format|
      format.html { redirect_to itinerary_user_path(@itinerary_user) }
      format.json { render json: @itinerary_user }
    end
  end

  def show
    itinerary_user_id = params["id"]
    @itinerary_user = ItineraryUser.where(id: itinerary_user_id).limit(1).first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @itinerary_user }
    end
  end

  def destroy
    itinerary_user_id = params["id"]
    ItineraryUser.find(itinerary_user_id).destroy

    redirect_to root_path
  end
end

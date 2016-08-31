class ItineraryUsersController < ApplicationController

  def create
    itinerary_id = params["itinerary_id"]
    user_id = current_user.id

    @itinerary = Itinerary.find(itinerary_id)

    # binding.pry

    # @itinerary.write_attribute(:spots_filled, @itinerary.read_attribute(:spots_filled) + 1)
	@itinerary.spots_sold = @itinerary.spots_sold + 1

    if @itinerary.save
      # create the booking
      @itinerary_user = ItineraryUser.new(user_id: user_id, itinerary_id: itinerary_id)
      begin 
      	@itinerary_user.save
      	# success
      	flash[:notice] = "Success! You have booked a spot for this itinerary."
      rescue
      	# error
      	@itinerary.spots_sold = @itinerary.spots_sold - 1
      	@itinerary.save
      	flash[:notice] = "An error occurred in booking the itinerary."
      end
    else
      # error
      flash[:notice] = "Error, itinerary is probably full."
    end

    # respond with success or failure
    respond_to do |format|
      format.html { render 'index' }
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
end

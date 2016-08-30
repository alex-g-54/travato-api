class ItinerariesController < ApplicationController
  def index
    # city = params["city"]
    # start_date = Date.parse(params["start_date"])
    # end_date = Date.parse(params["end_date"])

    # @itineraries = Itinerary.includes(:user).where(city: city, date: start_date..end_date)
    @itineraries = Itinerary.all
    render json: @itineraries
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
    render json: @itinerary
  end

  def update
  end

  def destroy
  end

  def my_itineraries
    user_id = params["id"]
    @user = User.find_by(id: user_id)
    @itineraries = @users.itineraries.includes(:user)
    render json: {itineraries: @itineraries}, status: 200, include: :user
  end
end

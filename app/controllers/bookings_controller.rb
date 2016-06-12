class BookingsController < ApplicationController
  def index
  end

  def create
    tour_id = params["tour_id"]
    # TODO: this should really come from session. implement devise.
    traveller_id = params["traveller_id"]

    query_tour = Tour.find_by(id: tour_id)
    query_traveller = Traveller.find_by(id: traveller_id)
    @booking = Booking.create
    @booking.tour = query_tour
    @booking.traveller = query_traveller
    @booking.save

    render json: {success: "booking created successfully"}, status: 200
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

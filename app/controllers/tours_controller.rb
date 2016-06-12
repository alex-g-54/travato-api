class ToursController < ApplicationController
  def index
    city = params["city"]
    start_time = DateTime.parse(params["start_time"])
    end_time = DateTime.parse(params["end_time"])

    @tours = Tour.where(city: city, )
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

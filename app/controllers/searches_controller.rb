class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    binding.pry
    @search = Search.create!(params[:search])
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

private

  def search_params
    params.require(:search).permit(:city, :arrival_date, :departure_date)
  end

end

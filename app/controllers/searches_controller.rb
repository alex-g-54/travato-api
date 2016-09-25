class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)

    if @search.save
      respond_to do |format|
        format.html { redirect_to @search }
        format.json { render json: @search }
      end
    else
      flash[:notice] = @search.errors.full_messages.join(". ")
      render 'new'
    end

  end

  def show
    @search = Search.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @search }
    end
  end

private

  def search_params
    params.require(:search).permit(:city, :arrival_date, :departure_date)
  end

end

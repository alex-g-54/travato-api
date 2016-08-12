class PagesController < ApplicationController
  def index
  	if user_signed_in?
  		render 'signed_in'
  	else
  		render 'signed_out'
  	end
  end
end

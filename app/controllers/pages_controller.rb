class PagesController < ApplicationController
  def index
  	if user_signed_in?
  		render 'dashboard'
  	else
  		render 'signed_out'
  	end
  end
end

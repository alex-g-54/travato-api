class UsersController < ApplicationController
  def gate
    if current_user.type.nil?
      # first time logging in
      render 'new'
    else
      redirect_to page_path('dashboard')
    end
end

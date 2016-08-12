class UsersController < ApplicationController
  def gate
    if current_user.type.nil?
      # first time logging in
      @user = current_user
      render 'edit'
    else
      redirect_to page_path('dashboard')
    end
  end
end

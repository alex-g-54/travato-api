class UsersController < ApplicationController
  def gate
    if current_user.type.nil?
      # first time logging in
      @user = current_user
      render 'edit'
    else
      flash[:notice] = "user is a #{current_user.type}"
      redirect_to page_path('dashboard')
    end
  end

  def update
    current_user.update_attributes!(type: params['type'])
    flash[:notice] = "now user has type #{current_user.type}"
    redirect_to page_path('dashboard')
  end

  def show
    flash[:notice] = "welcome"
    redirect_to page_path('dashboard')
  end


end

class UsersController < ApplicationController
  def gate
    if current_user.type.nil?
      # first time logging in
      @user = current_user
      render 'edit'
    else
      flash[:notice] = "User is a #{current_user.type}"
      redirect_to page_path("#{current_user.get_type_lc}_dashboard")
    end
  end

  def update
    current_user.update_attributes!(type: params['type'])
    flash[:notice] = "now user has type #{current_user.type}"
    redirect_to page_path("#{current_user.get_type_lc}_dashboard")
  end

  def show
    flash[:notice] = "welcome"
    redirect_to page_path("#{current_user.get_type_lc}_dashboard")
  end


end

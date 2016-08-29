class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes!(type: params['type'])
    flash[:notice] = @user.updated_type_flash_message
    redirect_to user_path(current_user)
  end
end

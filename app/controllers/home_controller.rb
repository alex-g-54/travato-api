class HomeController < ApplicationController
  def index
    return render 'pages/signed_out' unless user_signed_in?

    @user = User.find(current_user.id) if user_signed_in?

    if @user.has_type?
      flash[:notice] = @user.returning_flash_message
      redirect_to user_path(@user)
    else
      redirect_to edit_user_path(@user)
    end
  end
end

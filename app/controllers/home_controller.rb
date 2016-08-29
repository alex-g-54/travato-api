class HomeController < ApplicationController
  def index
    return render 'pages/signed_out' unless user_signed_in?

    @user = User.find(current_user.id)

    redirect_to user_path(@user)
  end
end

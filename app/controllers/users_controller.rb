class UsersController < ApplicationController
  def fb_login
    render status: 200, json: {ru: "smells"}
  end

  def register
    @user = User.new(params[:user])
    @user.save
    render json: {status: "created user", user: @user}, status: 200
  end
end

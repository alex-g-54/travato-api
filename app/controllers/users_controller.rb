class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def fb_login
    render status: 200, json: {ru: "smells"}.to_json
  end

  def register
    @user = User.new(params[:user])
    @user.save
    render status: 200, json: {status: "created user", user: @user}.to_json
  end
end

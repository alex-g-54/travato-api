class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def fb_login
    render status: 200, json: {ru: "smells"}.to_json
  end

  def register
  end
end

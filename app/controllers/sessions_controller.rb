class SessionsController < ApplicationController
  def create
    user = User.find_by_username(params[:username])
    return user.id.as_json
  end
end

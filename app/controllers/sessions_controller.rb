class SessionsController < ApplicationController
  def create
    user = User.find_by_username(params[:username])
    if user
      render json: user.id.as_json
    else
      render json: {status: 400}
    end
  end
end

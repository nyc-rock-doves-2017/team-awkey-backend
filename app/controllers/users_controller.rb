class UsersController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @user.photos.all
    @user.as_json
  end

  def create
    @user = User.new(user_params)
    if @user.save
      status 200
    else
      status 400
   end
  end


  private
  def user_params
    params.require(:username).permit(:username)
  end

end

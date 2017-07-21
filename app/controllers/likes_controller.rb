class LikesController < ApplicationController
  def create
    current_photo = Photo.find_by(id: params[:photo_id])
    @like = Like.find_by(liker_id: params[:likes][:likerId], photo_id: current_photo.id)
    if @like.exists?(liker_id: params[:likes][:likerId], photo_id: current_photo.id)
      status 400
    else
      Like.create(liker_id: params[:likes][:likerId], photo_id: current_photo.id)
      status 200
    end

  end
end

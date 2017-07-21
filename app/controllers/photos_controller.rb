class PhotosController < ApplicationController
  def index
    photos = Photo.all
    photo_array = []
    photos.each do |photo|
      photo_array.push(photo.convert_to_json)
    end
    render json: photo_array
  end

  def show
    photo = Photo.find_by(id: params[:id])
    if photo == nil
      render json: status 400
    else
      render json: photo.convert_to_json
    end
  end

  def create
    params[:photoInfo] = {
      id: "1",
      url: "sdfasdfsda",
      uploader_id: "3333"
    }
    @photo = Photo.new(photo_params)
    if @photo.save
      status 200
    else
      status 400
    end
  end

  private
  def photo_params
    params.require(:photoInfo).permit(:url, :uploader_id)
  end
end

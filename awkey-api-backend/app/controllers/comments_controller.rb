class CommentsController < ApplicationController
  def index
    @photo = Photo.find_by(id: params[:photo_id])
    @comments = @photo.comments
    @photo_comments = {}
    @photo_comments[:photoComments] = @comments.as_json
    render json: @photo_comments
  end

  def create
    # @comment = [params]
  end

  def delete

  end

  private
  def comment_params
  end
end

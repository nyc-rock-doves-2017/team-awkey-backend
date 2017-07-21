class CommentsController < ApplicationController
  def index
    @photo = Photo.find_by(id: params[:photo_id])
    @comments = @photo.comments
    @photo_comments = {}
    @photo_comments[:photoComments] = @comments.as_json
    render json: @photo_comments
  end

  def create
    @photo = Photo.find_by(id: params[:photo_id])
    @photo.comments.create(commenter_id: params[:newComment][:userId],
                            content: params[:newComment][:content]
    )
  end

  def delete

  end

  private
  def comment_params
    # params.require(:newComment).permit(:content, :commenterId)
  end
end

class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @place = Place.find(params[:place_id])
  end

  def create
    Comment.create(comment_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, place_id: params[:place_id])
  end

end

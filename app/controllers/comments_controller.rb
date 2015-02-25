class CommentsController < ApplicationController

  def create
  @comment = Comment.new(comment_params)
  @comment.meeting_id = Meeting.find(params[:meeting_id])
    if @comment.save
        redirect_to room_meeting_path
    else
        render new: @comment.errors
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end
end

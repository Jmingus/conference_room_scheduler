class CommentsController < ApplicationController

  def create
  @meeting = Meeting.find(params[:meeting_id])
  @comment = Comment.new(comment_params)
  @comment.meeting_id = @meeting.id
  @comment.user_id = current_user.id
    if @comment.save!

      flash[:notice] = "Comment has been created!"
        redirect_to room_meeting_path(@meeting.room, @meeting)
    else
      flash[:notice] = "Comment Has Errors"
        redirect_to room_meeting_path(@meeting.room, @meeting)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end
end

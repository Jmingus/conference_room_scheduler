class MeetingsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @room = Room.find(params[:room_id])
    @meeting = Meeting.find(params[:id])
    @comment = Comment.new
  end

  def create
    @room = Room.find(params[:room_id])
    @meeting = @room.meetings.create(meeting_params)
    @meeting.user_id = current_user.id
    if @meeting.save
     NotificationMailer.new_meeting(@meeting).deliver_now
      flash[:notice] = "Meeting has been created!"
      redirect_to room_path(@room)
    else
      flash[:notice] = "Meeting has errors!"
      redirect_to room_path(@room)
    end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:start_time, :end_time, :meeting_name)
  end
end

class MeetingsController < ApplicationController

  def show
    @meeting = Meeting.find(params[:id])
    @comment = Comment.new
  end

  def create
    @room = Room.find(params[:room_id])
    @meeting = @room.meetings.create(meeting_params)
    if @meeting.save
     # NotificationMailer.new_meeting(@meeting).deliver_now
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:start_time, :end_time, :meeting_name)
  end
end

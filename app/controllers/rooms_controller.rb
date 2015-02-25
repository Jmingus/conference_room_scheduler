class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
    @meeting = Meeting.new
    @comment = Comment.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def index
    @rooms = Room.all.page params[:page]
  end

  def create
    @room = Room.create(room_params)
    if @room.save
      redirect_to root_path, flash: { notice: 'Room Created'}
    else
      render new: @room.errors
    end
  end

  private

  def room_params
    params.require(:room).permit(:room_name, :room_location, :room_description, :room_image)
  end
end

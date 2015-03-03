class UsersController < ApplicationController
  def show
   @user = User.find(params[:id])
    meetings = Meeting.all
  end

  def profile_page
  end
end

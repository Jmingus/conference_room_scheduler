class UsersController < ApplicationController
  before_filter :authenticate_user!
  def show
   @user = User.find(params[:id])
    meetings = Meeting.all
  end

  def profile_page
  end
end

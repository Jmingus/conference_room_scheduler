class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  has_many :comments

  def meeting_author_email
    meeting.user.email
  end
end

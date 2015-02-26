class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  has_many :comments
  validates_presence_of :meeting_name
  def meeting_author_email
    meeting.user.email
  end
end

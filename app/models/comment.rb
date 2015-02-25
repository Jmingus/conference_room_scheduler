class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :meeting
  validates_presence_of :user_id, :meeting_id
end

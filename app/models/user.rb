class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :meetings
  has_many :comments
  has_many :meeting_comments, through: :meetings, source: :comments
  validates_format_of :phone_number, with: /^1?[-\. ]?(\(\d{3}\)?[-\. ]?|\d{3}?[-\. ]?)?\d{3}?[-\. ]?\d{4}$/i, on: :create, multiline: true, message: 'Phone number has errors'
  validates_uniqueness_of :phone_number
end

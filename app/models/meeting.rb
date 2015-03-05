require 'twilio-ruby'
class Meeting < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  has_many :comments
  validates_presence_of :meeting_name


  def self.establish_twilio
    @account_sid = Figaro.env.twilio_account_sid
    @auth_token = Figaro.env.twilio_auth_token
    @from_phone_number = Figaro.env.twilio_phone_number
    @twilio_client = Twilio::REST::Client.new(@account_sid, @auth_token)
  end

  def self.meeting_reminder(user, body)
    Meeting.establish_twilio
    @twilio_client.messages.create(to: "#{user.phone_number}",
                                  from: @from_phone_number,
                                  body: body )
  end

  def meeting_author_email
    user.email
  end

end

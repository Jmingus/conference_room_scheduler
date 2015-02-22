class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :meeting_name, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.belongs_to :user, index: true
      t.belongs_to :room, index: true

      t.timestamps null: false
    end
    add_foreign_key :meetings, :users
    add_foreign_key :meetings, :rooms
  end
end

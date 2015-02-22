class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_name, null: false
      t.string :room_location, null: false
      t.string :room_description, null: false

      t.timestamps null: false
    end
  end
end

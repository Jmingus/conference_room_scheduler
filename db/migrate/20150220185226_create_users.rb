class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.datetime :date_of_birth, null: false
      t.string :favorite_color, null: false

      t.timestamps null: false
    end
  end
end

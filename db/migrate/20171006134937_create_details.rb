class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.string :dos_contact
      t.string :parking
      t.string :load_in
      t.string :load_in_location
      t.string :door_time
      t.string :set_time
      t.string :backline
      t.string :hospitality
      t.string :green_room
      t.string :showers
      t.string :laundry
      t.string :wifi
      t.string :misc

      t.timestamps
    end
  end
end

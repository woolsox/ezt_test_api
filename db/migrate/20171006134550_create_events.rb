class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :date
      t.string :city
      t.string :state
      t.string :status

      t.timestamps
    end
  end
end

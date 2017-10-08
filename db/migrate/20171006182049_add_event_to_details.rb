class AddEventToDetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :details, :event, foreign_key: true
  end
end

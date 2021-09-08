class CreateShow < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.datetime :date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :room_id
      t.timestamps
    end
  end
end

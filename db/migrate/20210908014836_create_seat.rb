class CreateSeat < ActiveRecord::Migration[6.1]
  def change
    create_table :seats do |t|
      t.integer :room_id
      t.integer :Seat_Reserved
      t.timestamps
    end
  end
end

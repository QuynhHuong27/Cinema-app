class CreateSeatReserved < ActiveRecord::Migration[6.1]
  def change
    create_table :seat_reserveds do |t|
      t.integer :status
      t.integer :bookingticket_id
      t.integer :show_id

      t.timestamps
    end
  end
end

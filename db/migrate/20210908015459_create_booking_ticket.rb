class CreateBookingTicket < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_tickets do |t|
      t.integer :custoner_id
      t.integer :status
      t.integer :membership_id
      t.datetime :create_at
      t.integer :discount
      t.integer :total
      t.timestamps
    end
  end
end

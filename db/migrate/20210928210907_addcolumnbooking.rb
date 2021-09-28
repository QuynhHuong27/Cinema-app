class Addcolumnbooking < ActiveRecord::Migration[6.1]
  def change
    add_column :booking_tickets, :film_id, :integer
    add_column :booking_tickets, :seat_id, :integer
    add_column :booking_tickets, :room_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

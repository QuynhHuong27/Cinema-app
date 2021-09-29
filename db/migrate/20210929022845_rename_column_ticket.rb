class RenameColumnTicket < ActiveRecord::Migration[6.1]
  def change
    rename_column :booking_tickets, :custoner_id, :customer_id
  end
end

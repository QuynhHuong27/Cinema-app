class ChangeColumnSeat < ActiveRecord::Migration[6.1]
  def change
    remove_column :seats, :Seat_Reserved
    add_column :seats, :name, :string
    add_column :seats, :status, :integer
  end
end

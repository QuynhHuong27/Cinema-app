class CreateOrderFoob < ActiveRecord::Migration[6.1]
  def change
    create_table :order_foobs do |t|
      t.string :food_name
      t.integer :bookingticket_id
      t.integer :food_id
      t.integer :quantity
       
      t.timestamps
    end
  end
end

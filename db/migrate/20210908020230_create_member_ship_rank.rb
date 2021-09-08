class CreateMemberShipRank < ActiveRecord::Migration[6.1]
  def change
    create_table :member_ship_ranks do |t|
      t.integer :rank
      t.integer :discount
      t.integer :discount_service
      t.timestamps
    end
  end
end

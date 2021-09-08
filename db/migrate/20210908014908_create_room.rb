class CreateRoom < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string  :name
      t.integer :cinema_id
      t.integer :total_room
      t.timestamps
    end
  end
end

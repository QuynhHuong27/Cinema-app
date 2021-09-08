class CreateFoob < ActiveRecord::Migration[6.1]
  def change
    create_table :foobs do |t|
      t.string :food_name
      t.integer :price
      t.timestamps
    end
  end
end

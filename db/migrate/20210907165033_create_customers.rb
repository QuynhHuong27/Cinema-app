class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.date   :dat_of_birth
      t.string :phone_number
      t.integer :gender
      t.integer :membership_id
      t.timestamps
    end
  end
end

class CreateMembership < ActiveRecord::Migration[6.1]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :member_point
      t.integer :rank_id
      t.timestamps
    end
  end
end

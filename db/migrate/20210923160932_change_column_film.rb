class ChangeColumnFilm < ActiveRecord::Migration[6.1]
  def change
    add_column :films, :room_id, :integer
  end
end

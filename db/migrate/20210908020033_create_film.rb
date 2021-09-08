class CreateFilm < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :film_name
      t.string :film_day
      t.string :size_day
      t.string :language
      t.integer :film_type_id
      t.timestamps
    end
  end
end

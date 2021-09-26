class AddColumnFilm < ActiveRecord::Migration[6.1]
  def change
    add_column :films, :image_url, :string
  end
end

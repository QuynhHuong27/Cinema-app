class AddcColumnFilm < ActiveRecord::Migration[6.1]
  def change
    add_column :films, :actor, :string
  end
end

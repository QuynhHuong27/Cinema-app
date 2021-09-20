class ChangeColumnFilms < ActiveRecord::Migration[6.1]
  def change
    add_column :films, :author, :string
    add_column :films, :description, :string
    add_column :films, :status, :integer
    add_column :films, :time, :integer
  end
end

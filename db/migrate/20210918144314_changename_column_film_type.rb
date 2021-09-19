class ChangenameColumnFilmType < ActiveRecord::Migration[6.1]
  def change
    rename_column :film_types, :type, :type_name
  end
end

class AddClassColumnToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :character_class, :string
  end
end

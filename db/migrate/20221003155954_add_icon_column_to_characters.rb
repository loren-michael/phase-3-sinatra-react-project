class AddIconColumnToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :icon, :string
  end
end

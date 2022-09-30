class AddColumnToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :img_url, :string
  end
end

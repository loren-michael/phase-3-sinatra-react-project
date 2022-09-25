class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.integer :level
      t.belongs_to :game
      t.belongs_to :user
    end
  end
end

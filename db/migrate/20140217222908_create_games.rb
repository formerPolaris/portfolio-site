class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, :null => false
      t.string :slug, :null => false

      t.timestamps
    end

    add_index :games, :name
    add_index :games, :slug
  end
end

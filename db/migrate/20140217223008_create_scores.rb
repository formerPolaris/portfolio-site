class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :game_id, :null => false
      t.string :player, :null => false
      t.integer :value, :null => false
      t.integer :level
      t.string :difficulty
      t.string :special

      t.timestamps
    end
  end
end

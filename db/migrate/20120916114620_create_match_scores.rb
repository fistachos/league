class CreateMatchScores < ActiveRecord::Migration
  def change
    create_table :match_scores do |t|
      t.integer :team_id
      t.integer :match_id
      t.integer :score
      
      t.timestamps
    end
  end
end

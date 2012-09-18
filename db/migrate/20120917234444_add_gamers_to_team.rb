class AddGamersToTeam < ActiveRecord::Migration
  def change
  	add_column :teams, :player1, :string
  	add_column :teams, :player2, :string
  end
end

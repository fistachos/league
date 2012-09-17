class AddColumnsToNews < ActiveRecord::Migration
  def change
  	add_column :news, :match_id, :integer
  	add_column :news, :template, :string, :default => 'regular'
  end
end

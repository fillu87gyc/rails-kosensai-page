class AddColumnToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :is_food_provision, :boolean, :default => false
    add_column :teams, :is_indoor, :boolean, :default => false
  end
end

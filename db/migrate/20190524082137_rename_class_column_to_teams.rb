class RenameClassColumnToTeams < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams, :is_indoor, :is_outdoor
  end
end

class ChangeColumnToTeam < ActiveRecord::Migration[5.2]
  def change
    change_column :teams, :is_commercial_purpose, :boolean, null: false, default: false
    change_column :teams, :is_food_provision, :boolean, null: false, default: false
    change_column :teams, :is_outdoor, :boolean, null: false, default: false
  end
end

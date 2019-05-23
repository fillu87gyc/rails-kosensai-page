class RenameClassColumnToKenbens < ActiveRecord::Migration[5.2]
  def change
    rename_column :kenbens, :class, :class_name
  end
end

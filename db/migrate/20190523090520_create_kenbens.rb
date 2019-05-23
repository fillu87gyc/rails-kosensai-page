class CreateKenbens < ActiveRecord::Migration[5.2]
  def change
    create_table :kenbens do |t|
      t.string :class
      t.string :name
      t.string :age
      t.string :sex
      t.string :phonetic
      t.integer :team_id

      t.timestamps
    end
  end
end

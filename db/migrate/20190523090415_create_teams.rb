class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :user, foreign_key: true
      t.string :team_name
      t.string :contents_of_store
      t.string :advisor
      t.string :number_of_people
      t.boolean :is_commercial_purpose

      t.timestamps
    end
  end
end

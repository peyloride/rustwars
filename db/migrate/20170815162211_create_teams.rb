class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :tag
      t.boolean :is_active

      t.timestamps
    end
  end
end

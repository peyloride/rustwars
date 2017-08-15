class AddTeamIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :team, foreign_key: true, default: 1
  end
end

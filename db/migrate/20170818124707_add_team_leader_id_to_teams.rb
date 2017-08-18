class AddTeamLeaderIdToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :team_leader_id, :integer
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :team, optional: true

  def is_team_leader?
    unless self.team_id.nil? #Check for user has team or not
      self.id == Team.find_by_id(self.team_id).team_leader_id
    end
  end
end

class AddTeamToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :team, :string
  end
end

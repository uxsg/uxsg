class AddIndustryTrackIdToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :industry_track_id, :integer
  end
end

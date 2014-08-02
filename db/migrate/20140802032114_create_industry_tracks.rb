class CreateIndustryTracks < ActiveRecord::Migration
  def change
    create_table :industry_tracks do |t|
      t.string :name

      t.timestamps
    end
  end
end

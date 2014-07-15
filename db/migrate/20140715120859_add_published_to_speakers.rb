class AddPublishedToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :published, :boolean, default: false
  end
end

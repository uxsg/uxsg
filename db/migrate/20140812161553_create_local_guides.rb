class CreateLocalGuides < ActiveRecord::Migration
  def change
    create_table :local_guides do |t|
      t.string :title
      t.text :content
      t.string :slug

      t.timestamps
    end
  end
end

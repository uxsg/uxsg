class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :slug
      t.integer :sponsor_type
      t.string :url
      t.text :description
      t.string :logo

      t.timestamps
    end
  end
end

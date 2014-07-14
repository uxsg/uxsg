class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :slug
      t.string :first_name
      t.string :last_name
      t.boolean :asian_name
      t.string :position
      t.string :company
      t.string :website_link
      t.string :linkedin_link
      t.string :twitter_link
      t.text :bio
      t.string :photo

      t.timestamps
    end
  end
end

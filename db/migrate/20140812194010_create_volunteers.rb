class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :slug
      t.string :first_name
      t.string :last_name
      t.boolean :asian_name
      t.string :position
      t.string :company
      t.string :photo
      t.text :bio

      t.timestamps
    end
  end
end

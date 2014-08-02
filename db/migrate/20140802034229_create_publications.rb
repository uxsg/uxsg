class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :publication_type
      t.string :url
      t.string :image
      t.belongs_to :speaker, index: true

      t.timestamps
    end
  end
end

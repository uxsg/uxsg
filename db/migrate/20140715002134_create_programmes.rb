class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.integer :category, default: 0
      t.datetime :happens_at
      t.string :title
      t.string :slug
      t.text :description
      t.belongs_to :speaker, index: true

      t.timestamps
    end
  end
end

class AddVimeoIdToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :vimeo_id, :string
  end
end

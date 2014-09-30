class AddSlideshareIdToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :slideshare_id, :string
  end
end

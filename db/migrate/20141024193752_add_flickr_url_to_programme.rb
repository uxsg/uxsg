class AddFlickrUrlToProgramme < ActiveRecord::Migration
  def change
    add_column :programmes, :flickr_url, :string
  end
end

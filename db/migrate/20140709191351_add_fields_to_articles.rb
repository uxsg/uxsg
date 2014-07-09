class AddFieldsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :published_at, :datetime, null: false
    add_column :articles, :published, :boolean, default: false
  end
end

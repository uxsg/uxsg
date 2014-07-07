class AddLeadImageToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :lead_image, :string
  end
end

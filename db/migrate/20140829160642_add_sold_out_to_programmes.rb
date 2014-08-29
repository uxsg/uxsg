class AddSoldOutToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :sold_out, :boolean
  end
end

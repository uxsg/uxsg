class AddDayToProgrammes < ActiveRecord::Migration
  def change
    add_column :programmes, :day, :integer
  end
end

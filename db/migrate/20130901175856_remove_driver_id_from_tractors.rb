class RemoveDriverIdFromTractors < ActiveRecord::Migration
  def change
  	remove_column :tractors, :driver_id
  end
end

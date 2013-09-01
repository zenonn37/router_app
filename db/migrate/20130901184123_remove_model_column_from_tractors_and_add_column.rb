class RemoveModelColumnFromTractorsAndAddColumn < ActiveRecord::Migration
  def change
  	remove_column :tractors, :model
  	add_column :tractors,:truck_model,:string
  end
end

class CreateTruckAssigments < ActiveRecord::Migration
  def change
    create_table :truck_assigments do |t|
      t.integer :driver_id
      t.integer :tractor_id

      t.timestamps
    end
    add_index :truck_assigments,:driver_id
    add_index :truck_assigments,:tractor_id
  end
end

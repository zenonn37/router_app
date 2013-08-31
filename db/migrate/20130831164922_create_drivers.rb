class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
    	t.string :name
    	t.integer :driver_number
    	t.integer :age
    	t.boolean :status
    	t.integer :exp

      t.timestamps
    end
    add_index :drivers, :name
  end
end

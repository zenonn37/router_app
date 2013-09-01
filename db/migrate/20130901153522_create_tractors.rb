class CreateTractors < ActiveRecord::Migration
  def change
    create_table :tractors do |t|
    	t.integer :driver_id
    	t.string  :model
    	t.integer :unit_number
    	t.integer :unit_year
    	t.integer :mileage
    	t.integer :fuel_range
    	t.date    :last_pm
    	t.boolean :fleet_unit, default: true

      t.timestamps
    end
    add_index :tractors, :driver_id
    add_index  :tractors, :unit_number

  end
end

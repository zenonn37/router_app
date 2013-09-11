class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
    	t.string :unit_number
    	t.integer :driver_id
    	
    	
    	t.integer :unit_year
    	t.integer :mileage
    	
    	t.date    :last_pm

      t.timestamps
    end
    add_index :trailers,:driver_id
    add_index :trailers,:unit_number
  end
end

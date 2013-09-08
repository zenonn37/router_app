class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :driver_id
      t.integer :tractor_id

      t.timestamps
    end
  end
end

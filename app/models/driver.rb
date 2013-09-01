class Driver < ActiveRecord::Base

	has_many :truck_assignments
	has_many :tractors, through: :truck_assignments

	validates :name, presence: true
	validates :driver_number, presence: true
	validates :age, presence: true
	validates :exp,presence:true

end

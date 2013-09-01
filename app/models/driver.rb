class Driver < ActiveRecord::Base

	validates :name, presence: true
	validates :driver_number, presence: true
	validates :age, presence: true
	validates :exp,presence:true
	
end

class Driver < ActiveRecord::Base

	has_many :assignments
	has_many :tractors, through: :assignments

	 accepts_nested_attributes_for :tractors

	validates :name, presence: true
	validates :driver_number, presence: true
	validates :age, presence: true
	validates :exp,presence:true

end

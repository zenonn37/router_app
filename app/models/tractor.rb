class Tractor < ActiveRecord::Base
	has_many :assignments
	has_many :drivers, through: :assignments

	validates :truck_model, presence: true
	validates :unit_number, presence: true, numericality: true
	validates :unit_year, presence: true
	validates :mileage, presence: true
	validates :fuel_range, presence: true
	validates :last_pm, presence: true

end

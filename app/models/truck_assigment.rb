class TruckAssigment < ActiveRecord::Base
	belongs_to :driver
	belongs_to :tractor
end

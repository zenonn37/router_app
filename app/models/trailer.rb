class Trailer < ActiveRecord::Base

	belongs_to :driver

	validates :unit_number, presence: true, numericality: true
end

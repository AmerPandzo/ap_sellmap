class LocationsAssortment < ActiveRecord::Base
	belongs_to :location
	belongs_to :primary_assortment
	attr_accessible :assortment_id , :location_id
end

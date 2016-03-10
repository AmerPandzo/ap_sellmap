class Place < ActiveRecord::Base
	has_many :locations
	belongs_to :region
	
end

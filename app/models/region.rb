class Region < ActiveRecord::Base
	has_many :locations
	has_many :places
	
end

class PrimaryAssortment < ActiveRecord::Base
	has_many :locations_assortments
	attr_accessible :name
	validates :name, presence: true
end

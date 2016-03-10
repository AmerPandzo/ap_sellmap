class SalesSpecialist < ActiveRecord::Base
	has_many :locations
	attr_accessible :name, :phone
	validates :name, :phone, presence: true
end


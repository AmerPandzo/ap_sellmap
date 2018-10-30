class TechnicalGoodsAssortment < ActiveRecord::Base
	belongs_to :location
	has_many :products
	has_many :brands

	attr_accessible :ap1_id, :ap2_id, :ap3_id, :ap4_id, :ap5_id, :ap6_id, :ap7_id, :ap8_id, :b1_id, :b2_id, :b3_id, :b4_id, :b5_id, :b6_id , :location_id
	
	
end

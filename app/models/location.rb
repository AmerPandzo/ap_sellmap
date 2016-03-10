class Location < ActiveRecord::Base
  acts_as_xlsx
	include ActiveModel::ForbiddenAttributesProtection
	include ActiveModel::MassAssignmentSecurity
=begin	 has_attached_file :avatar, styles: { mini: '48x48#',
                                         small: '150x120>',
                                         home: '185x185#',
                                         product: '240x240>',
  									     large: '570x380>' },
    :url  => "/assets/locations/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/locations/:id/:style/:basename.:extension"
	validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
=end
  attr_accessible :address, :latitude, :longitude, :name ,:region_id , :place_id , :customer_character , :contact, :sales_specialist_id , :tel_fax_email , :object_type , :customer_classification , :class_type 
  attr_accessible :asset_params
  belongs_to :sales_specialist
  belongs_to :region
  belongs_to :place
  has_many :locations_assortments , :dependent => :destroy
  has_many :technical_goods_assortments, :dependent => :destroy
  has_many :assets , :dependent => :destroy ,  :foreign_key => 'typeable_id'
  has_many :ap_products , :through => :technical_goods_assortments
  accepts_nested_attributes_for :assets, allow_destroy: true
  accepts_nested_attributes_for :locations_assortments, allow_destroy: true
  accepts_nested_attributes_for :technical_goods_assortments, allow_destroy: true
  attr_accessible :locations_assortments_attributes
  attr_accessible :technical_goods_assortments_attributes
  validates :address, :name ,:region_id , :place_id , :customer_character , :contact, :sales_specialist_id , :tel_fax_email , :object_type , :customer_classification , presence: true 
  geocoded_by :address
	after_validation :geocode , if: ->(obj){ obj.address.present? and obj.address_changed? }
  
  def gmaps4rails_address
      address
  end
 
end
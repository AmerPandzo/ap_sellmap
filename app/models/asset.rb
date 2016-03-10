class Asset < ActiveRecord::Base
  belongs_to :location , :class_name => "Location"
  attr_accessible :avatar_file_name
  attr_accessible :position, :class_type, :alt, :attachment_width , :attachment_height ,:avatar , :class_type , :typeable_id
  alias_attribute :location_id, :typeable_id
  has_attached_file :avatar, styles: { mini: '48x48#',
                                      small: '150x120>',
                                      home: '185x185#',
                                      product: '240x240>',
  	large: '570x380>' },
    :url  => "/assets/locations/:typeable_id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/locations/:typeable_id/:style/:basename.:extension"
     Paperclip.interpolates :typeable_id do |attachment, style|
    "#{attachment.instance.typeable_id}"
  end
  Paperclip.options[:content_type_mappings] = { jpeg: 'image/jpeg', jpg: 'image/jpeg' }

	
end

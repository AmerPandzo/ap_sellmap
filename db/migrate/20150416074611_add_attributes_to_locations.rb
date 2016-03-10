class AddAttributesToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :region_id , :integer
  	add_column :locations, :place_id , :integer
  	add_column :locations, :customer_character , :char
  	add_column :locations, :contact , :string
  	add_column :locations, :sales_specialist_id , :integer
  	add_column :locations, :tel_fax_email , :string
  	add_column :locations, :object_type , :char
  	add_column :locations, :customer_classification , :string
  	remove_column :locations , :category 
  end
end

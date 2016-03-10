class AddLocationIdToAssets < ActiveRecord::Migration
  def change
  	add_column :assets, :location_id , :integer
  end
end

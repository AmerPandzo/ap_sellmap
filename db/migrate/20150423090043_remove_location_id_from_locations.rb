class RemoveLocationIdFromLocations < ActiveRecord::Migration
  def change
  	remove_column :assets, :location_id 
  end
end

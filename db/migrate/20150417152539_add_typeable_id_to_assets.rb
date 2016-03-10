class AddTypeableIdToAssets < ActiveRecord::Migration
  def change
  	add_column :assets, :typeable_id , :integer
  end
end
